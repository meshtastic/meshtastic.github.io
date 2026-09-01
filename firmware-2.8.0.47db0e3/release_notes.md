## 🐛 Bug fixes and maintenance

- Fix(admin): don't disable BLE on config paths that never reboot by @thebentern in https://github.com/meshtastic/firmware/pull/11651
- Fix(fs): size the files manifest with a malloc probe, not a heap walk by @thebentern in https://github.com/meshtastic/firmware/pull/11667
- Wio Tracker L2: try-fix battery percentage by @mverch67 in https://github.com/meshtastic/firmware/pull/11668
- Fix(radio): recover a chip that lost its state instead of assert-crashing in reconfigure() by @thebentern in https://github.com/meshtastic/firmware/pull/11676

**Full Changelog**: https://github.com/meshtastic/firmware/compare/v2.8.0.7239fe8...v2.8.0.47db0e3
