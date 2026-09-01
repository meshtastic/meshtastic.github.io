## 🚀 Enhancements

- ThinkNode M7 by @caveman99 in https://github.com/meshtastic/firmware/pull/8077
- Implement rotating JSONL recorder for persistent logging by @thebentern in https://github.com/meshtastic/firmware/pull/10428
- Make power status logging less chatty and track battery presence transitions by @thebentern in https://github.com/meshtastic/firmware/pull/10453
- Add variantDefaultConfig and set eth_enabled to default true by @jp-bennett in https://github.com/meshtastic/firmware/pull/10454
- VSCode: Prepare for pioarduino transition by @vidplace7 in https://github.com/meshtastic/firmware/pull/10471
- Refactor virtual keyboard cell height for layout consistency by @Bjk8kds in https://github.com/meshtastic/firmware/pull/10501
- Refactor position precision handling to honor explicit channel settings and prevent location leaks by @thebentern in https://github.com/meshtastic/firmware/pull/10513

## 🐛 Bug fixes and maintenance

- T-Echo-Card support by @caveman99 in https://github.com/meshtastic/firmware/pull/10267
- Clamp direct position packets to channel precision (fixes #8640) by @Jord-JD in https://github.com/meshtastic/firmware/pull/10383
- Give ThinkNode-m4 a heartbeat by @jp-bennett in https://github.com/meshtastic/firmware/pull/10408
- Make heartbeat LED play nice with other LEDs by @jp-bennett in https://github.com/meshtastic/firmware/pull/10423
- Fix screen geometry update for SH1107 display by @Bjk8kds in https://github.com/meshtastic/firmware/pull/10444
- Add initial support for Station G3 variant by @thebentern in https://github.com/meshtastic/firmware/pull/10457
- Fix WiFi TCP/HTTP services not starting without USB serial connected by @tanrax in https://github.com/meshtastic/firmware/pull/10460
- Enabled SX_LNA_EN by default by @RikerZhu in https://github.com/meshtastic/firmware/pull/10469
- Add more support for small fonts in screen resolution determination by @thebentern in https://github.com/meshtastic/firmware/pull/10480
- Update Clock Scaling for Display_Force_Small_Fonts by @Xaositek in https://github.com/meshtastic/firmware/pull/10516
- First set pinMode, then write to pin by @kpmy in https://github.com/meshtastic/firmware/pull/10520
- Actions: Fix tagging upon release. by @vidplace7 in https://github.com/meshtastic/firmware/pull/10521

## ⚙️ Dependencies

- Update NeoPixel to v1.15.5 by @app/renovate in https://github.com/meshtastic/firmware/pull/10466
- Update libch341-spi-userspace digest to 2e5ff75 by @app/renovate in https://github.com/meshtastic/firmware/pull/10485

**Full Changelog**: https://github.com/meshtastic/firmware/compare/v2.7.23.b246bcd...v2.7.24.472b14c
