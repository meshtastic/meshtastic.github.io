## 🚀 Enhancements

- Add initial Nix shell by @agustinmista in https://github.com/meshtastic/firmware/pull/8530
- InkHUD Menu improvements by @HarukiToreda in https://github.com/meshtastic/firmware/pull/8975
- Cut NRF52 bluetooth power usage by @phaseloop in https://github.com/meshtastic/firmware/pull/8992
- Feat(GPS): Support Softsleep with WAKE-UP pin on PA1010D by @ndoo in https://github.com/meshtastic/firmware/pull/9078
- NRF52 - power management improvements by @phaseloop in https://github.com/meshtastic/firmware/pull/9211
- Change canned message recipient's previous page to send page by @scobert969 in https://github.com/meshtastic/firmware/pull/9227
- Make BLE TX power configurable for nRF52 variants by @teizz in https://github.com/meshtastic/firmware/pull/9232
- Add interrupt for external charge detection by @jp-bennett in https://github.com/meshtastic/firmware/pull/9332
- Add a watchdog module to meshsolar. by @Quency-D in https://github.com/meshtastic/firmware/pull/9337
- Add StatusMessage module and config overrides by @jp-bennett in https://github.com/meshtastic/firmware/pull/9351
- Implement graduated scaling for NodeInfo send timeout based on active mesh size by @thebentern in https://github.com/meshtastic/firmware/pull/9364
- BaseUI: Bubbles for messages by @HarukiToreda in https://github.com/meshtastic/firmware/pull/9365
- Enable long interleaving mode for LR11x0 and SX128x by @Jorropo in https://github.com/meshtastic/firmware/pull/9399
- Add portduino_status, assign hardware device IDs... by @jp-bennett in https://github.com/meshtastic/firmware/pull/9441
- Add support for Hackaday Communicator function keys by @jp-bennett in https://github.com/meshtastic/firmware/pull/9444
- Add on-screen keyboard to InkHUD by @scobert969 in https://github.com/meshtastic/firmware/pull/9445
- Move more code out of main-nrf52 into variant.cpp by @jp-bennett in https://github.com/meshtastic/firmware/pull/9450
- BaseUI Message Bubble Improvements by @Xaositek in https://github.com/meshtastic/firmware/pull/9452
- Support fully direct request/responses by @esev in https://github.com/meshtastic/firmware/pull/9455
- Add reply bot module with DM-only responses and rate limiting by @mattatat25 in https://github.com/meshtastic/firmware/pull/9456
- Add model workflows by @thebentern in https://github.com/meshtastic/firmware/pull/9462
- Add custom ringtone definition for RAK4631 and enable buzzer pin by @thebentern in https://github.com/meshtastic/firmware/pull/9481
- Remove unused hmx variable by @EricSesterhennX41 in https://github.com/meshtastic/firmware/pull/9529

## 🐛 Bug fixes and maintenance

- Add agc reset attempt by @jp-bennett in https://github.com/meshtastic/firmware/pull/8163
- Just set LED_BUILTIN universally to -1, as we don't use it. by @jp-bennett in https://github.com/meshtastic/firmware/pull/8830
- Device-install: Consistently use write-flash by @tyll in https://github.com/meshtastic/firmware/pull/8868
- Added Minimesh variant by @uguraltinsoy in https://github.com/meshtastic/firmware/pull/9289
- Fix uMesh RF POWER configuration error by @linser233 in https://github.com/meshtastic/firmware/pull/9326
- Delete unused code by @EricSesterhennX41 in https://github.com/meshtastic/firmware/pull/9350
- Feat(stm32): Add Milesight GS301 Bathroom Odor Detector by @ndoo in https://github.com/meshtastic/firmware/pull/9359
- To fix the gps power rail issue on RAK 19007 when RAK12023+RAK12035 is installed by @Justin-Mann in https://github.com/meshtastic/firmware/pull/9409
- Consolidate LoRa params / preset logic and fix display of preset values by @thebentern in https://github.com/meshtastic/firmware/pull/9413
- Fix logic for rak12035 sensor default config and improve messaging by @Justin-Mann in https://github.com/meshtastic/firmware/pull/9414
- Add pin sense to wake M6 on Solar Charge by @jp-bennett in https://github.com/meshtastic/firmware/pull/9416
- Move Lora Init code into LoraInit.cpp/h by @jp-bennett in https://github.com/meshtastic/firmware/pull/9435
- Replace strcpy with strncpy and null termination in `MQTT::publish` for JSON payloads by @k3an3 in https://github.com/meshtastic/firmware/pull/9436
- Move device code from main.cpp to earlyInitVariant by @jp-bennett in https://github.com/meshtastic/firmware/pull/9438
- Trackball revamp by @jp-bennett in https://github.com/meshtastic/firmware/pull/9440
- Remove the unused OCV_ARRAYs and move one to a variant.h by @jp-bennett in https://github.com/meshtastic/firmware/pull/9442
- Fix StoreForwardModule retry_delay multiplier always evaluating to 2x by @rcd in https://github.com/meshtastic/firmware/pull/9443
- Add error handling for SPI command failures in LR11x0, RF95, and SX128x interfaces by @thebentern in https://github.com/meshtastic/firmware/pull/9447
- Add Thinknode M4 variant_shutdown() by @jp-bennett in https://github.com/meshtastic/firmware/pull/9449
- External Notification - handleReceived Rewrite by @Xaositek in https://github.com/meshtastic/firmware/pull/9454
- Move input init to an init function in InputBroker by @jp-bennett in https://github.com/meshtastic/firmware/pull/9463
- Initial serialModule cleanup by @jp-bennett in https://github.com/meshtastic/firmware/pull/9465
- Avoid short-circuit evaluation issues in Telemetry by @oscgonfer in https://github.com/meshtastic/firmware/pull/9467
- Add support for the hardware buttons on Retia.io's Bluetooth Nugget device by @treysis in https://github.com/meshtastic/firmware/pull/9468
- Remove stale variant.h defines by @jp-bennett in https://github.com/meshtastic/firmware/pull/9470
- More variant.h cleanup. LED_NOTIFICATION, remove dead code, etc by @jp-bennett in https://github.com/meshtastic/firmware/pull/9477
- Refuse to send legacy DMs simply because the remote public key is unknown by @jp-bennett in https://github.com/meshtastic/firmware/pull/9485
- Fix esp32 ota bin name in scripts by @thebentern in https://github.com/meshtastic/firmware/pull/9488
- You get an RTC, and you get an RTC! (delete HAS_RTC as it wasn't actually doing much) by @jp-bennett in https://github.com/meshtastic/firmware/pull/9493
- Don't ever define PIN_LED or BLE_LED_INVERTED by @jp-bennett in https://github.com/meshtastic/firmware/pull/9494
- Missed in reviews - fixing send bubble by @Xaositek in https://github.com/meshtastic/firmware/pull/9505
- Power off control pin on Thinknode m5 during deepsleep and add RTC by @jp-bennett in https://github.com/meshtastic/firmware/pull/9510
- Prefer EXT_PWR_DETECT pin over chargingVolt to detect power unplugged by @jp-bennett in https://github.com/meshtastic/firmware/pull/9511
- Inkhud battery icon improvements. by @Vortetty in https://github.com/meshtastic/firmware/pull/9513
- Make sure we always return a value in NodeDB::restorePreferences() by @EricSesterhennX41 in https://github.com/meshtastic/firmware/pull/9516
- Fix config.display.use_long_node_name not saving by @Xaositek in https://github.com/meshtastic/firmware/pull/9522
- Implement UDP multicast handler start/stop to ensure proper lifecycle by @thebentern in https://github.com/meshtastic/firmware/pull/9524
- Undefine LED_BUILTIN for `tlora-v2-1-1_6-tcxo` by @mrekin in https://github.com/meshtastic/firmware/pull/9531
- HotFix for ReplyBot (PR #9456) by @Xaositek in https://github.com/meshtastic/firmware/pull/9532

## ⚙️ Dependencies

- Update XPowersLib to v0.3.3 by @app/renovate in https://github.com/meshtastic/firmware/pull/9354
- Update meshtastic/device-ui digest to 613c095 by @app/renovate in https://github.com/meshtastic/firmware/pull/9383
- Update meshtastic-esp32_https_server digest to b0f3960 by @app/renovate in https://github.com/meshtastic/firmware/pull/9393
- Update lewisxhe-SensorLib to v0.3.4 by @app/renovate in https://github.com/meshtastic/firmware/pull/9395
- Update SensorLib to v0.3.4 by @app/renovate in https://github.com/meshtastic/firmware/pull/9396
- Update pschatzmann_arduino-audio-driver to v0.2.1 by @app/renovate in https://github.com/meshtastic/firmware/pull/9398
- Update meshtastic/device-ui digest to 37ad715 by @app/renovate in https://github.com/meshtastic/firmware/pull/9403
- Update LovyanGFX to v1.2.19 by @app/renovate in https://github.com/meshtastic/firmware/pull/9405
- Update GxEPD2 to v1.6.6 by @app/renovate in https://github.com/meshtastic/firmware/pull/9412
- Update meshtastic/device-ui digest to 69739b8 by @app/renovate in https://github.com/meshtastic/firmware/pull/9448
- Update libch341-spi-userspace digest to af9bc27 by @app/renovate in https://github.com/meshtastic/firmware/pull/9472
- Update meshtastic/device-ui digest to 63967a4 by @app/renovate in https://github.com/meshtastic/firmware/pull/9475
- Update Adafruit MPU6050 to v2.2.7 by @app/renovate in https://github.com/meshtastic/firmware/pull/9525
- Update NeoPixel to v1.15.3 by @app/renovate in https://github.com/meshtastic/firmware/pull/9530
- Update meshtastic-esp8266-oled-ssd1306 digest to 21e484f by @app/renovate in https://github.com/meshtastic/firmware/pull/9533
- Update Adafruit MPU6050 to v2.2.8 by @app/renovate in https://github.com/meshtastic/firmware/pull/9534

**Full Changelog**: https://github.com/meshtastic/firmware/compare/v2.7.18.fb3bf78...v2.7.18.7e03cae
