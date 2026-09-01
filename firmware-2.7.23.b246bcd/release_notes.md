## 🚀 Enhancements

- Reduce key duplication by enabling hardware RNG by @Komzpa in https://github.com/meshtastic/firmware/pull/8803
- Test PR to remove LED_BUILTIN by @jp-bennett in https://github.com/meshtastic/firmware/pull/10179
- No longer need undefines, thanks to #10179 by @jp-bennett in https://github.com/meshtastic/firmware/pull/10180
- Add MCP server for interacting with meshtastic devices and testing framework / TUI by @thebentern in https://github.com/meshtastic/firmware/pull/10194
- Add authoring guide for native unit tests in README.md by @NomDeTom in https://github.com/meshtastic/firmware/pull/10201
- Add USB camera and uhubctl support for new test suite. Also included some bug fixes by @thebentern in https://github.com/meshtastic/firmware/pull/10204
- Add encryption overview to agent instructions in AGENTS.md by @thebentern in https://github.com/meshtastic/firmware/pull/10207
- Improve options to align to names of UI options by @Xaositek in https://github.com/meshtastic/firmware/pull/10240
- Finish evil merge cleanup by @jp-bennett in https://github.com/meshtastic/firmware/pull/10253
- We have HardwareRNG, let's use it! by @jp-bennett in https://github.com/meshtastic/firmware/pull/10274
- Add search duration check for exceeding 15 minutes by @jp-bennett in https://github.com/meshtastic/firmware/pull/10293
- Native MacOS hello world by @thebentern in https://github.com/meshtastic/firmware/pull/10309
- MacOS: enable CH341 LoRa-hardware path (fix serial truncation, document setup) by @thebentern in https://github.com/meshtastic/firmware/pull/10320
- Add clamping logic for milliseconds conversion and unit tests by @thebentern in https://github.com/meshtastic/firmware/pull/10326
- Add TCP support for Meshtastic MCP interface / tests and update docs by @thebentern in https://github.com/meshtastic/firmware/pull/10355
- Docker: Install grpcio-tools from distro by @vidplace7 in https://github.com/meshtastic/firmware/pull/10358
- MacOS: Correct pkg-config name `openssl` for ulfius. by @vidplace7 in https://github.com/meshtastic/firmware/pull/10369
- Smart pointers and memory management cleanup by @thebentern in https://github.com/meshtastic/firmware/pull/10400
- Enhance GPS search failure handling backoff logic by @thebentern in https://github.com/meshtastic/firmware/pull/10404

## 🐛 Bug fixes and maintenance

- Fix(native): implement BinarySemaphorePosix with proper pthread synchronization by @iannucci in https://github.com/meshtastic/firmware/pull/9895
- Meshtasticd: Add configs for ebyte-ecb41-pge (mPWRD-OS) by @vidplace7 in https://github.com/meshtastic/firmware/pull/10086
- Meshtasticd: Add configs for forlinx-ok3506-s12 (mPWRD-OS) by @vidplace7 in https://github.com/meshtastic/firmware/pull/10087
- Fix Linux Input enable logic by @jp-bennett in https://github.com/meshtastic/firmware/pull/10093
- PPA: Use SFTP method for uploads by @vidplace7 in https://github.com/meshtastic/firmware/pull/10138
- Switch PlatformIO deps from PIO Registry to tagged GitHub zips by @vidplace7 in https://github.com/meshtastic/firmware/pull/10142
- Fix display method to use const qualifier for previousBuffer pointer by @vidplace7 in https://github.com/meshtastic/firmware/pull/10146
- Fix last cppcheck issue by @caveman99 in https://github.com/meshtastic/firmware/pull/10154
- Fix heap blowout on TBeams by @thebentern in https://github.com/meshtastic/firmware/pull/10155
- Add PortduinoSetOptions to overwrite the realhardware bool by @jp-bennett in https://github.com/meshtastic/firmware/pull/10157
- Support for Spreading Factors 5 and 6 on compatible radios by @derpyspike in https://github.com/meshtastic/firmware/pull/10160
- Add meshtasticd config for Luckfox Pico Max Waveshare Pico LoRa HAT by @Ruledo in https://github.com/meshtastic/firmware/pull/10175
- Prompt markdownlint md040 fix for new prompts. by @h3lix1 in https://github.com/meshtastic/firmware/pull/10199
- Feat(t5s3-epaper): add InkHUD port for LilyGo T5 E-Paper S3 Pro by @giannoug in https://github.com/meshtastic/firmware/pull/10211
- SX126x: re-apply 0x8B5 register in resetAGC() to preserve RX sensitivity by @nightjoker7 in https://github.com/meshtastic/firmware/pull/10219
- Detach power interrupts for sleep by @jp-bennett in https://github.com/meshtastic/firmware/pull/10230
- T watch pinfix by @jp-bennett in https://github.com/meshtastic/firmware/pull/10231
- Add heltec-v4-r8 board by @Quency-D in https://github.com/meshtastic/firmware/pull/10268
- Remove incorrect LED_STATE_ON definition for t-beam-s3 by @jp-bennett in https://github.com/meshtastic/firmware/pull/10280
- Fix(Router): localize p_encrypted to prevent recursive-overwrite leak by @nightjoker7 in https://github.com/meshtastic/firmware/pull/10311
- Actions: Build MacOS binary by @vidplace7 in https://github.com/meshtastic/firmware/pull/10319
- Debian: Correctly fail upon failure by @vidplace7 in https://github.com/meshtastic/firmware/pull/10341
- Do not FACTORY_INSTALL on ARCH_PORTDUINO by @vidplace7 in https://github.com/meshtastic/firmware/pull/10343
- Docker: Build for riscv64 by @vidplace7 in https://github.com/meshtastic/firmware/pull/10345
- Docker-Alpine: Align version between build/main stages by @vidplace7 in https://github.com/meshtastic/firmware/pull/10347
- Fix MAC_from_string to use input parameter instead of global config for MAC address parsing by @thebentern in https://github.com/meshtastic/firmware/pull/10356
- Add ulfius webserver support to macos native target by @thebentern in https://github.com/meshtastic/firmware/pull/10366
- Update PhoneAPI.cpp to reduce chattiness by @Xaositek in https://github.com/meshtastic/firmware/pull/10367
- Use OBS instead of flaky launchpad by @thebentern in https://github.com/meshtastic/firmware/pull/10375
- Add informSearchFailed method to update GPS power state handling by @thebentern in https://github.com/meshtastic/firmware/pull/10394
- Fix GPS initialization logic for Portduino configuration by @jessm33 in https://github.com/meshtastic/firmware/pull/10395

## ⚙️ Dependencies

- Update meshtastic-esp32_https_server digest to 0c71f38 by @app/renovate in https://github.com/meshtastic/firmware/pull/10081
- Update meshtastic-st7789 digest to 222554e by @app/renovate in https://github.com/meshtastic/firmware/pull/10121
- Update actions/github-script action to v9 by @app/renovate in https://github.com/meshtastic/firmware/pull/10122
- Update meshtastic-st7789 digest to 7228c49 by @app/renovate in https://github.com/meshtastic/firmware/pull/10131
- Update pnpm/action-setup action to v6 by @app/renovate in https://github.com/meshtastic/firmware/pull/10132
- Update meshtastic-st7789 digest to 4d957e7 by @app/renovate in https://github.com/meshtastic/firmware/pull/10134
- Update meshtastic-st7789 digest to a787bee by @app/renovate in https://github.com/meshtastic/firmware/pull/10147
- Update softprops/action-gh-release action to v3 by @app/renovate in https://github.com/meshtastic/firmware/pull/10150
- Update platform-native digest to 71ed55b by @app/renovate in https://github.com/meshtastic/firmware/pull/10165
- Update meshtastic-st7789 digest to 92bae2e by @app/renovate in https://github.com/meshtastic/firmware/pull/10182
- Update meshtastic/device-ui digest to 5305670 by @app/renovate in https://github.com/meshtastic/firmware/pull/10183
- Update meshtastic/device-ui digest to 56e1da4 by @app/renovate in https://github.com/meshtastic/firmware/pull/10195
- Update GxEPD2 to v1.6.9 by @app/renovate in https://github.com/meshtastic/firmware/pull/10212
- Update LovyanGFX to v1.2.20 by @app/renovate in https://github.com/meshtastic/firmware/pull/10232
- Update meshtastic-esp8266-oled-ssd1306 digest to 6bfd1f1 by @app/renovate in https://github.com/meshtastic/firmware/pull/10277
- Update platform-native digest to 135b91e by @app/renovate in https://github.com/meshtastic/firmware/pull/10300
- Update meshtastic/device-ui digest to 7289329 by @app/renovate in https://github.com/meshtastic/firmware/pull/10313
- Update platform-native digest to 4ea5e09 by @app/renovate in https://github.com/meshtastic/firmware/pull/10314
- Update meshtastic/device-ui digest to 1ddcc9d by @app/renovate in https://github.com/meshtastic/firmware/pull/10328
- Update meshtastic/device-ui digest to 4bf593a by @app/renovate in https://github.com/meshtastic/firmware/pull/10346
- Update platform-native digest to cab4b21 by @app/renovate in https://github.com/meshtastic/firmware/pull/10372
- Update LovyanGFX to v1.2.21 by @app/renovate in https://github.com/meshtastic/firmware/pull/10373
- Update libpax digest to df42474 by @app/renovate in https://github.com/meshtastic/firmware/pull/10406

**Full Changelog**: https://github.com/meshtastic/firmware/compare/v2.7.21.1370b23...v2.7.23.b246bcd
