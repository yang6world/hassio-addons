## 2024.12.0b1

- Bump codecov/codecov-action from 4 to 5 [esphome#7771](https://github.com/esphome/esphome/pull/7771) by [@dependabot[bot]](https://github.com/apps/dependabot)
- [remote_base] Fix extra comma in dump raw [esphome#7774](https://github.com/esphome/esphome/pull/7774) by [@swoboda1337](https://github.com/swoboda1337)
- [nextion] New trigger `on_buffer_overflow` [esphome#7772](https://github.com/esphome/esphome/pull/7772) by [@edwardtfn](https://github.com/edwardtfn)
- enable rp2040 for online_image [esphome#7769](https://github.com/esphome/esphome/pull/7769) by [@afflux](https://github.com/afflux)
- [nextion] Add publish actions [esphome#7646](https://github.com/esphome/esphome/pull/7646) by [@pkejval](https://github.com/pkejval)
- [wifi] Make wifi_channel_() public [esphome#7818](https://github.com/esphome/esphome/pull/7818) by [@nielsnl68](https://github.com/nielsnl68)
- feat(WiFi): Add wifi.configure action [esphome#7335](https://github.com/esphome/esphome/pull/7335) by [@Rapsssito](https://github.com/Rapsssito)
- allow multiple graphical menus [esphome#7809](https://github.com/esphome/esphome/pull/7809) by [@ssieb](https://github.com/ssieb)
- Move ``CONF_NAME_ADD_MAC_SUFFIX`` to ``const.py`` [esphome#7820](https://github.com/esphome/esphome/pull/7820) by [@jesserockz](https://github.com/jesserockz)
- binary_sensor for switch state [esphome#7819](https://github.com/esphome/esphome/pull/7819) by [@ssieb](https://github.com/ssieb) (new-platform)
- [nextion] Remove assignment within `if` [esphome#7824](https://github.com/esphome/esphome/pull/7824) by [@kbx81](https://github.com/kbx81)
- [ota] `void` functions should return nothing [esphome#7825](https://github.com/esphome/esphome/pull/7825) by [@kbx81](https://github.com/kbx81)
- [safe_mode] Remove unused capture [esphome#7826](https://github.com/esphome/esphome/pull/7826) by [@kbx81](https://github.com/kbx81)
- [stepper] Remove unnecessary ``#include`` [esphome#7827](https://github.com/esphome/esphome/pull/7827) by [@kbx81](https://github.com/kbx81)
- [sx1509] Fix up includes [esphome#7828](https://github.com/esphome/esphome/pull/7828) by [@kbx81](https://github.com/kbx81)
- [uart] `void` functions should return nothing [esphome#7829](https://github.com/esphome/esphome/pull/7829) by [@kbx81](https://github.com/kbx81)
- [audio] Header modernization [esphome#7832](https://github.com/esphome/esphome/pull/7832) by [@kbx81](https://github.com/kbx81)
- [opentherm] Follow variable naming convention [esphome#7833](https://github.com/esphome/esphome/pull/7833) by [@kbx81](https://github.com/kbx81)
- [opentherm] Add nolint for 8266 static global [esphome#7837](https://github.com/esphome/esphome/pull/7837) by [@kbx81](https://github.com/kbx81)
- [helpers] Add NOLINT for Mutex private field ``handle_`` [esphome#7838](https://github.com/esphome/esphome/pull/7838) by [@kbx81](https://github.com/kbx81)
- Add waveshare 1 45 in v2 b support [esphome#7052](https://github.com/esphome/esphome/pull/7052) by [@programmingbgloDE](https://github.com/programmingbgloDE)
- added Waveshare BWR Mode for the 7.5in Display [esphome#7687](https://github.com/esphome/esphome/pull/7687) by [@JonasB2497](https://github.com/JonasB2497)
- [homeassistant.number] Return when value not set [esphome#7839](https://github.com/esphome/esphome/pull/7839) by [@kbx81](https://github.com/kbx81)
- [CI] Add/update some system include paths [esphome#7831](https://github.com/esphome/esphome/pull/7831) by [@kbx81](https://github.com/kbx81)
- add on_key trigger to matrix_keypad [esphome#7830](https://github.com/esphome/esphome/pull/7830) by [@ssieb](https://github.com/ssieb)
- Add: Seeed Studio mr60fda2 mmwave sensor [esphome#7576](https://github.com/esphome/esphome/pull/7576) by [@limengdu](https://github.com/limengdu) (new-integration)
- [lvgl] clang-tidy fixes for #7822 [esphome#7843](https://github.com/esphome/esphome/pull/7843) by [@kbx81](https://github.com/kbx81)
- [xiaomi_ble] clang-tidy fixes for #7822 [esphome#7860](https://github.com/esphome/esphome/pull/7860) by [@kbx81](https://github.com/kbx81)
- [wireguard] clang-tidy fixes for #7822 [esphome#7859](https://github.com/esphome/esphome/pull/7859) by [@kbx81](https://github.com/kbx81)
- [dsmr] clang-tidy fixes for #7822 [esphome#7848](https://github.com/esphome/esphome/pull/7848) by [@kbx81](https://github.com/kbx81)
- Fix entity name validation to allow "Off" and "On" [esphome#7821](https://github.com/esphome/esphome/pull/7821) by [@jesserockz](https://github.com/jesserockz) (breaking-change)
- [camera_web_server] Add ``NOLINT`` due to naming [esphome#7823](https://github.com/esphome/esphome/pull/7823) by [@kbx81](https://github.com/kbx81)
- [display_menu_base] clang-tidy fixes for #7822 [esphome#7847](https://github.com/esphome/esphome/pull/7847) by [@kbx81](https://github.com/kbx81)
- [nextion] clang-tidy fixes for #7822 [esphome#7852](https://github.com/esphome/esphome/pull/7852) by [@kbx81](https://github.com/kbx81)
- [shelly_dimmer] clang-tidy fixes for #7822 [esphome#7844](https://github.com/esphome/esphome/pull/7844) by [@kbx81](https://github.com/kbx81)
- [sim800l] clang-tidy fixes for #7822 [esphome#7856](https://github.com/esphome/esphome/pull/7856) by [@kbx81](https://github.com/kbx81)
- [nfc, pn532, pn7150, pn7160] clang-tidy fixes for #7822 [esphome#7853](https://github.com/esphome/esphome/pull/7853) by [@kbx81](https://github.com/kbx81)
- [output] clang-tidy fixes for #7822 [esphome#7854](https://github.com/esphome/esphome/pull/7854) by [@kbx81](https://github.com/kbx81)
- [sun_gtil2] clang-tidy fixes for #7822 [esphome#7858](https://github.com/esphome/esphome/pull/7858) by [@kbx81](https://github.com/kbx81)
- [pipsolar] clang-tidy fixes for #7822 [esphome#7855](https://github.com/esphome/esphome/pull/7855) by [@kbx81](https://github.com/kbx81)
- [ltr501] clang-tidy fixes for #7822 [esphome#7850](https://github.com/esphome/esphome/pull/7850) by [@kbx81](https://github.com/kbx81)
- [cse7766] clang-tidy fixes for #7822 [esphome#7846](https://github.com/esphome/esphome/pull/7846) by [@kbx81](https://github.com/kbx81)
- [alarm_control_panel] clang-tidy fixes for #7822 [esphome#7845](https://github.com/esphome/esphome/pull/7845) by [@kbx81](https://github.com/kbx81)
- [sprinkler] clang-tidy fixes for #7822 [esphome#7857](https://github.com/esphome/esphome/pull/7857) by [@kbx81](https://github.com/kbx81)
- [haier] clang-tidy fixes for #7822 [esphome#7849](https://github.com/esphome/esphome/pull/7849) by [@kbx81](https://github.com/kbx81)
- [mqtt] clang-tidy fixes for #7822 [esphome#7851](https://github.com/esphome/esphome/pull/7851) by [@kbx81](https://github.com/kbx81)
- [helpers, optional] clang-tidy fixes for #7822 [esphome#7841](https://github.com/esphome/esphome/pull/7841) by [@kbx81](https://github.com/kbx81)
- Move ``USE_CAPTIVE_PORTAL`` into all define groups it can be used with [esphome#7863](https://github.com/esphome/esphome/pull/7863) by [@jesserockz](https://github.com/jesserockz)
- Bump docker/build-push-action from 6.9.0 to 6.10.0 in /.github/actions/build-image [esphome#7866](https://github.com/esphome/esphome/pull/7866) by [@dependabot[bot]](https://github.com/apps/dependabot)
- python lint for platform components [esphome#7864](https://github.com/esphome/esphome/pull/7864) by [@tomaszduda23](https://github.com/tomaszduda23)
- [max31865] clang-tidy fixes for #7822 [esphome#7876](https://github.com/esphome/esphome/pull/7876) by [@kbx81](https://github.com/kbx81)
- [esp32_ble] clang-tidy fixes for #7822 [esphome#7883](https://github.com/esphome/esphome/pull/7883) by [@kbx81](https://github.com/kbx81)
- [mqtt] clang-tidy fixes for #7822 [esphome#7877](https://github.com/esphome/esphome/pull/7877) by [@kbx81](https://github.com/kbx81)
- [uln2003] clang-tidy fixes for #7822 [esphome#7881](https://github.com/esphome/esphome/pull/7881) by [@kbx81](https://github.com/kbx81)
- [rotary_encoder] clang-tidy fixes for #7822 [esphome#7880](https://github.com/esphome/esphome/pull/7880) by [@kbx81](https://github.com/kbx81)
- [pca6416a, pca9554] clang-tidy fixes for #7822 [esphome#7879](https://github.com/esphome/esphome/pull/7879) by [@kbx81](https://github.com/kbx81)
- [nextion] clang-tidy fixes for #7822 [esphome#7878](https://github.com/esphome/esphome/pull/7878) by [@kbx81](https://github.com/kbx81)
- [various] clang-tidy fixes for #7822 [esphome#7874](https://github.com/esphome/esphome/pull/7874) by [@kbx81](https://github.com/kbx81)
- [logger] clang-tidy fixes for #7822 [esphome#7875](https://github.com/esphome/esphome/pull/7875) by [@kbx81](https://github.com/kbx81)
- [ezo] clang-tidy fixes for #7822 [esphome#7873](https://github.com/esphome/esphome/pull/7873) by [@kbx81](https://github.com/kbx81)
- [apds9306] clang-tidy fixes for #7822 [esphome#7872](https://github.com/esphome/esphome/pull/7872) by [@kbx81](https://github.com/kbx81)
- [dht] clang-tidy fixes for #7822 [esphome#7871](https://github.com/esphome/esphome/pull/7871) by [@kbx81](https://github.com/kbx81)
- [network] clang-tidy fixes for #7822 [esphome#7870](https://github.com/esphome/esphome/pull/7870) by [@kbx81](https://github.com/kbx81)
- [lvgl] Make image update via lambda work [esphome#7886](https://github.com/esphome/esphome/pull/7886) by [@clydebarrow](https://github.com/clydebarrow)
- [deep_sleep] fix deep_sleep not keeping awake when sleep_duration is defined [esphome#7885](https://github.com/esphome/esphome/pull/7885) by [@makstech](https://github.com/makstech)
- [hx711] clang-tidy fixes for #7822 [esphome#7900](https://github.com/esphome/esphome/pull/7900) by [@kbx81](https://github.com/kbx81)
- [modbus_controller] Clang fixes [esphome#7899](https://github.com/esphome/esphome/pull/7899) by [@kbx81](https://github.com/kbx81)
- Add H-Bridge switch component [esphome#7421](https://github.com/esphome/esphome/pull/7421) by [@dwmw2](https://github.com/dwmw2) (new-platform)
- [CI] Bump GHA runners to ``ubuntu-24.04`` [esphome#7905](https://github.com/esphome/esphome/pull/7905) by [@kbx81](https://github.com/kbx81)
- [font et. al.] Remove explicit check for pillow installed. [esphome#7891](https://github.com/esphome/esphome/pull/7891) by [@clydebarrow](https://github.com/clydebarrow)
- [CI] Update clang-tidy to 18.1.3 [esphome#7822](https://github.com/esphome/esphome/pull/7822) by [@kbx81](https://github.com/kbx81)
- MQTT sensors handling of publishing NaN values  [esphome#7768](https://github.com/esphome/esphome/pull/7768) by [@kbullet](https://github.com/kbullet) (breaking-change)
- [ble] Allow setting shorter name for ble advertisements [esphome#7867](https://github.com/esphome/esphome/pull/7867) by [@jesserockz](https://github.com/jesserockz)
- [font] Restore correct default glyphs for bitmap fonts [esphome#7907](https://github.com/esphome/esphome/pull/7907) by [@clydebarrow](https://github.com/clydebarrow)
- [helpers] clang-tidy fix for #7706 [esphome#7909](https://github.com/esphome/esphome/pull/7909) by [@kbx81](https://github.com/kbx81)
- [docker] Fix clang-tidy installation [esphome#7910](https://github.com/esphome/esphome/pull/7910) by [@kbx81](https://github.com/kbx81)
- [sntp] Resolve warnings from ESP-IDF 5.x [esphome#7913](https://github.com/esphome/esphome/pull/7913) by [@clydebarrow](https://github.com/clydebarrow)
- Add strftime variant with background color [esphome#7714](https://github.com/esphome/esphome/pull/7714) by [@mikosoft83](https://github.com/mikosoft83)
- [i2s_audio] Bugfix: Follow configured bits per sample [esphome#7916](https://github.com/esphome/esphome/pull/7916) by [@kahrendt](https://github.com/kahrendt)
- Haier AC quiet mode switch fix [esphome#7902](https://github.com/esphome/esphome/pull/7902) by [@paveldn](https://github.com/paveldn)
- [CI] Update clang-tidy to 18.1.8 [esphome#7915](https://github.com/esphome/esphome/pull/7915) by [@syssi](https://github.com/syssi)
- [i2s_audio] Speaker type fix [esphome#7919](https://github.com/esphome/esphome/pull/7919) by [@kbx81](https://github.com/kbx81)
- [esp32_rmt_led_strip] Add ``COMPONENT_SCHEMA`` extending [esphome#7918](https://github.com/esphome/esphome/pull/7918) by [@jesserockz](https://github.com/jesserockz)
- [esp32] Use pioarduino + IDF 5.1.5 as default for IDF builds [esphome#7706](https://github.com/esphome/esphome/pull/7706) by [@kbx81](https://github.com/kbx81)
- Bump actions/cache from 4.1.2 to 4.2.0 [esphome#7926](https://github.com/esphome/esphome/pull/7926) by [@dependabot[bot]](https://github.com/apps/dependabot)
- Bump actions/cache from 4.1.2 to 4.2.0 in /.github/actions/restore-python [esphome#7925](https://github.com/esphome/esphome/pull/7925) by [@dependabot[bot]](https://github.com/apps/dependabot)
- Add OCI Image Labels  [esphome#7924](https://github.com/esphome/esphome/pull/7924) by [@Passific](https://github.com/Passific)
- Move docker oci labels to correct image [esphome#7927](https://github.com/esphome/esphome/pull/7927) by [@jesserockz](https://github.com/jesserockz)
- Update project description [esphome#7928](https://github.com/esphome/esphome/pull/7928) by [@jesserockz](https://github.com/jesserockz)
- [modbus] More clean-up [esphome#7921](https://github.com/esphome/esphome/pull/7921) by [@kbx81](https://github.com/kbx81)
- Add: Seeed Studio MR60BHA2 mmWave Sensor [esphome#7589](https://github.com/esphome/esphome/pull/7589) by [@limengdu](https://github.com/limengdu) (new-integration)
- Optimize QMC5883L reads [esphome#7889](https://github.com/esphome/esphome/pull/7889) by [@dnschneid](https://github.com/dnschneid)
- [display] Fix strftime overload ignoring alignment [esphome#7937](https://github.com/esphome/esphome/pull/7937) by [@jesserockz](https://github.com/jesserockz)
- Add font anti-aliasing for grayscale display [esphome#7934](https://github.com/esphome/esphome/pull/7934) by [@koreapyj](https://github.com/koreapyj)
- Bump pypa/gh-action-pypi-publish from 1.12.2 to 1.12.3 [esphome#7941](https://github.com/esphome/esphome/pull/7941) by [@dependabot[bot]](https://github.com/apps/dependabot)
- [adc] Split files by platform [esphome#7940](https://github.com/esphome/esphome/pull/7940) by [@edwardtfn](https://github.com/edwardtfn)
- [const] Move ``CONF_TEMPERATURE_COMPENSATION`` to common const.py [esphome#7943](https://github.com/esphome/esphome/pull/7943) by [@jesserockz](https://github.com/jesserockz)
- [lvgl] Fix image `mode` property (Bugfix) [esphome#7938](https://github.com/esphome/esphome/pull/7938) by [@clydebarrow](https://github.com/clydebarrow)
- [lvgl] Add `on_change` event [esphome#7939](https://github.com/esphome/esphome/pull/7939) by [@clydebarrow](https://github.com/clydebarrow)
- Synchronise esp32 boards with platform version 51.03.07 [esphome#7945](https://github.com/esphome/esphome/pull/7945) by [@jesserockz](https://github.com/jesserockz) (breaking-change)
- [i2c] Use correct macro to determine number of i2c peripherals for idf [esphome#7947](https://github.com/esphome/esphome/pull/7947) by [@jesserockz](https://github.com/jesserockz)

