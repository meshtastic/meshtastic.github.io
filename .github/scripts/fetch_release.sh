#!/bin/bash
main() {
    echo "Parsing the repo list"
    while IFS= read -r repo; do
        if release=$(curl -fqs -H "Accept: application/vnd.github+json" -H "Authorization: Bearer ${ARTIFACTS_TOKEN}" -H "X-GitHub-Api-Version: 2022-11-28" https://api.github.com/repos/${repo}/releases); then
            tag="$(echo "$release" | jq -r '.[0].tag_name')"
            zip_files="$(echo "$release" | jq -r '.[0].assets[] | select((.name | startswith("firmware-")) and (.name | endswith(".zip"))) | .name')"
            echo "Parsing repo $repo at $tag"
            if [ -n "$zip_files" ]; then
                xtag="${tag:1}"
                mkdir -p "firmware-$xtag"
                pushd "firmware-$xtag" >/dev/null
                while IFS= read -r zip_file || [[ -n $zip_file ]]; do
                    echo "Getting ZIP ${zip_file}"
                    wget -q "https://github.com/${repo}/releases/download/${tag}/${zip_file}"
                    unzip -n -q "$zip_file"
                    rm -f "$zip_file"
                done < <(printf '%s' "$zip_files")
                popd >/dev/null
            fi
        fi
    done <.github/config/package_list.txt
}
main
