## Add the Meshtastic Debian Repository
Download the [public key](meshtastic-deb.gpg) and put it in
`/etc/apt/keyrings/meshtastic-deb.gpg`. You can achieve this with:
``` bash
wget -qO- {{ site.url }}/meshtastic-deb.asc | sudo tee /etc/apt/keyrings/meshtastic-deb.asc >/dev/null
```
Next, create the source in `/etc/apt/sources.list.d/`
``` bash
echo "deb [arch=all signed-by=/etc/apt/keyrings/meshtastic-deb.asc] {{ site.url }}/deb stable main" | sudo tee /etc/apt/sources.list.d/meshtastic-deb.list >/dev/null
```
If you want to have the latest version of the software, you can replace `stable` with `unstable`.

Then run `apt update && apt install -y meshtasticd`.
