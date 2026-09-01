## 🚀 Enhancements

- Reset noise floor samples after frequency changes by @RCGV1 in https://github.com/meshtastic/firmware/pull/10752
- Trunk: ignore branding/ dir by @vidplace7 in https://github.com/meshtastic/firmware/pull/10912

## 🐛 Bug fixes and maintenance

- Added wehooper4 Zebra Hat Duo Radio configs by @Littleaton in https://github.com/meshtastic/firmware/pull/10731
- Backport Tracker X1 to Master by @caveman99 in https://github.com/meshtastic/firmware/pull/10854
- Fix(nrf52): Restore BLE security state when resuming advertising by @jeremiah-k in https://github.com/meshtastic/firmware/pull/10859
- Fix spiLock deadlock in MessageStore::clearAllMessages() by @thebentern in https://github.com/meshtastic/firmware/pull/10866
- Remove undefined trunk linters (ascii-dash, too-many-defined) by @thebentern in https://github.com/meshtastic/firmware/pull/10869
- Implement SD card backup/restore of preferences; add SD support for Cardputer Advanced by @termax in https://github.com/meshtastic/firmware/pull/10884
- Add Meshnology W10 AIOT Dev Kit (SX1262 via MCP23017 I2C expander) by @thebentern in https://github.com/meshtastic/firmware/pull/10927
- Backport(tracker-x1): silence the buzzer during init by @caveman99 in https://github.com/meshtastic/firmware/pull/11008

## ⚙️ Dependencies

- Update pschatzmann_arduino-audio-driver to v0.3.0 by @app/renovate in https://github.com/meshtastic/firmware/pull/10770
- Update actions/cache action to v6 by @app/renovate in https://github.com/meshtastic/firmware/pull/10771
- Update LovyanGFX to v1.2.24 by @app/renovate in https://github.com/meshtastic/firmware/pull/10783
- Update platformio/nordicnrf52 to v10.12.0 by @app/renovate in https://github.com/meshtastic/firmware/pull/10794
- Update platformio/ststm32 to v19.7.0 by @app/renovate in https://github.com/meshtastic/firmware/pull/10816

**Full Changelog**: https://github.com/meshtastic/firmware/compare/v2.7.26.54e0d8d...v2.7.27.d250d89
