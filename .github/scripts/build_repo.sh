#!/bin/bash
generate_hashes() {
	HASH_TYPE="$1"
	HASH_COMMAND="$2"
	echo "${HASH_TYPE}:"
	find "${COMPONENTS:-main}" -type f | while read -r file; do
		echo " $(${HASH_COMMAND} "$file" | cut -d" " -f1) $(wc -c "$file")"
	done
}

main() {
	GOT_DEB=0
	DEB_POOL="deb/pool/${COMPONENTS:-main}"
	DEB_DISTS="dists/${SUITE:=stable}"
	DEB_DISTS_COMPONENTS="${DEB_DISTS}/${COMPONENTS:-main}/binary-all"
	GPG_TTY=""
	export GPG_TTY
	echo "Parsing the repo list"
	while IFS= read -r repo; do
		if [ "$SUITE" != "stable" ]; then
			repo_url="https://api.github.com/repos/${repo}/releases"
			tag_name='.[0].tag_name'
			asset_name='.[0].assets[] | select(.name | endswith(".deb")) | .name'
		else
			repo_url="https://api.github.com/repos/${repo}/releases/latest"
			tag_name='.tag_name'
			asset_name='.assets[] | select(.name | endswith(".deb")) | .name'
		fi
		if release=$(curl -fqs ${repo_url}); then
			tag="$(echo "$release" | jq -r "$tag_name")"
			deb_files="$(echo "$release" | jq -r "$asset_name")"
			echo "Parsing repo $repo at $tag with $SUITE suite"
			if [ -n "$deb_files" ]; then
				GOT_DEB=1
				mkdir -p "$DEB_POOL"
				pushd "$DEB_POOL" >/dev/null
				while IFS= read -r deb_file || [[ -n $deb_file ]]; do
					echo "Getting DEB ${deb_file}"
					wget -q "https://github.com/${repo}/releases/download/${tag}/${deb_file}"
				done < <(printf '%s' "$deb_files")
				popd >/dev/null
			fi
		fi
	done <.github/config/package_list.txt

	if [ $GOT_DEB -eq 1 ]; then
		pushd deb >/dev/null
		mkdir -p "${DEB_DISTS_COMPONENTS}"
		echo "Scanning all downloaded DEB Packages and creating Packages file."
		dpkg-scanpackages --multiversion pool/ >"${DEB_DISTS_COMPONENTS}/Packages"
		gzip -9 >"${DEB_DISTS_COMPONENTS}/Packages.gz" <"${DEB_DISTS_COMPONENTS}/Packages"
		bzip2 -9 >"${DEB_DISTS_COMPONENTS}/Packages.bz2" <"${DEB_DISTS_COMPONENTS}/Packages"
		popd >/dev/null
		pushd "deb/${DEB_DISTS}" >/dev/null
		echo "Making Release file"
		{
			echo "Origin: ${ORIGIN}"
			echo "Label: ${REPO_OWNER}"
			echo "Suite: ${SUITE:-stable}"
			echo "Codename: ${SUITE:-stable}"
			echo "Version: 1.0"
			echo "Architectures: all"
			echo "Components: ${COMPONENTS:-main}"
			echo "Description: ${DESCRIPTION:-A repository for packages released by ${REPO_OWNER}}"
			echo "Date: $(date -Ru)"
			generate_hashes MD5Sum md5sum
			generate_hashes SHA1 sha1sum
			generate_hashes SHA256 sha256sum
		} >Release
		echo "Signing Release file"
		gpg --detach-sign --armor --sign >Release.gpg <Release
		gpg --detach-sign --armor --sign --clearsign >InRelease <Release
		echo "DEB repo built"
		popd >/dev/null
	fi
}
main
