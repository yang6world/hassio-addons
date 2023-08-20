# Changelog

## 0.1.87

### Bug fixes

- Z-Wave JS: Fixed a bug where firmware links that redirected to another URL were not supported
- Z-Wave JS: Change order of commands so the startup does not fail when a controller is already set to use 16-bit node IDs and soft-reset is disabled
- Z-Wave JS: Soft-reset is now always enabled on 700+ series controllers 
- Z-Wave JS: Queried user codes and their status are now preserved during re-interview when they won't be re-queried automatically


### Config file changes

- Add parameters 9-13 to Minoston MP21ZP / MP31ZP
- Add fingerprint to Yale YRD446-ZW2
- Add and update Yale Assure ZW3 series locks
- Remove unnecessary endpoint functionality for CT101

### Detailed changelogs

- [Bump Z-Wave JS to 11.10.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.10.0)
- [Bump Z-Wave JS to 11.10.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.10.1)

## 0.1.86

### Bug fixes

- Z-Wave JS: Fixed an issue where a delayed endpoint capability report could be associated with the wrong query
- Z-Wave JS: During NVM migration, some invalid/unexpected bytes in the 500 series NVM can now be corrected
- Z-Wave JS: Hide configuration values for Door Lock CC v4 functionality that is not supported by a lock
- Z-Wave JS: When a CC version query times out, the CC version is now actually assumed to be 1
- Z-Wave JS: Recover from Security S2 collisions in a common scenario where nodes send a supervised command at the same time Z-Wave JS is trying to control them
- Z-Wave JS: During NVM migration, an incorrect flag for "on other network" is now automatically corrected instead of raising an error
- Z-Wave JS: Fixed an issue where turning on a Multilevel Switch with transition duration could update the currentValue to an illegal value
- Z-Wave JS: Improve heuristic to refresh values from legacy nodes when receiving a node information frame
- Z-Wave JS: Fixed an issue where no control values were exposed for devices that do not support/advertise Version CC
- Z-Wave JS: Fixed a regression introduced in 11.9.1 that would sometimes cause the startup process to hang


### Config file changes

- Add Leviton RZM10-1L
- Force use of Multi Channel CC v1 for all versions of PE653
- Correct state after power failure for Minoston MP21Z/31Z
- Add Namron 4512757
- Preserve endpoint 0 for Zooz ZEN14 to toggle both outlets at once
- Correct value size for some Nortek PD300EMZ5-1 params that were previously swapped
- Add new MCOHome MH-S411/S412 models

### Detailed changelogs

- [Bump Z-Wave JS to 11.7.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.7.0)
- [Bump Z-Wave JS to 11.8.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.8.0)
- [Bump Z-Wave JS to 11.8.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.8.1)
- [Bump Z-Wave JS to 11.9.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.9.0)
- [Bump Z-Wave JS to 11.9.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.9.1)
- [Bump Z-Wave JS to 11.9.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.9.2)

## 0.1.85

### New features

- Z-Wave JS Server: Add support for inclusions that are started outside of Z-Wave JS Server
- Z-Wave JS Server: Add support for lastSeen property
- Z-Wave JS: Add support for identifying on request of other nodes
- Z-Wave JS: Improved auto-discovery of config parameters

### Bug fixes

- Z-Wave JS Server: Fix hard reset support in Z-Wave JS Server
- Z-Wave JS: Increased OTA update timeout, which can help with firmware updates in busy/unstable networks
- Z-Wave JS: Fixed a crash that could happen when including a device with an inclusion controller
- Z-Wave JS: Improved the automatic removal of factory-reset devices that are slow to leave the network
- Z-Wave JS: Devices that failed to join using SmartStart are now automatically removed
- Z-Wave JS: Fix an issue where Z-Wave JS could get stuck when removing a node from the network failed


### Config file changes

- Correct config parameters for Duwi ZW ESJ 300
- Add new FW3.6 parameters to Aeotec ZW141 Nano Shutter
- Add metadata to HANK Electronics Ltd. HKZW-SO01
- Hide Binary Switch CC in favor of Window Covering CC on iBlinds v3
- Remove unnecessary endpoints for RTC CT32
- Update Swidget devices to match their June 8th 2023 spec
- Add endpoint configuration parameters to SES 302
- Disable Window Covering CC for ZVIDAR Roller Blind
- Add missing product type to Aeotec Water Sensor 7 Basic ZWA018
- Override endpoint indizes for heatapp! floor
- Override schedule slot count for P-KFCON-MOD-YALE
- Override supported color channels for Zipato RGBW Bulb2
- Override supported thermostat modes for Z-Wave.me ZME_FT
- Add Heatit ZM Dimmer
- Add Heatit Z-HAN2
- Add Remotec ZXT-800
- Clarify Hand Button action for ZVIDAR Z-CM-V01 Smart Curtain Motor
- Add MCOHome MH-S220 FW 3.2
- Add another device ID for Switch IO On/Off Power Switch
- Add/fix params for Intermatic PE653
- Add ShenZhen Sunricher Technology Multisensor SR-ZV9032A-EU
- Add new fingerprint for Zooz ZST10-700
- Fix Zooz ZSE40 parameters 7 and 8
- Correct parameters of Zooz ZEN05
- Override supported setpoint types for Intermatic PE653
- Update Inovelli LZW31 parameter 52 for FW 1.54
- Add new product id to Fakro ZWS12
- Disable Supervision for NICE Spa IBT4ZWAVE
- Add variant of Inovelli NZW31T with manufacturer ID 0x015d
- Split and correct Minoston MP21Z/MP31Z/MP21ZP/MP31ZP config files
- Add EVA LOGIK (NIE Tech) ZKS31 Rotary Dimmer

### Detailed changelogs

- [Bump Z-Wave JS Server to 1.29.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.29.0)
- [Bump Z-Wave JS Server to 1.29.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.29.1)
- [Bump Z-Wave JS Server to 1.30.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.30.0)
- [Bump Z-Wave JS to 10.23.4](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.23.4)
- [Bump Z-Wave JS to 10.23.5](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.23.5)
- [Bump Z-Wave JS to 10.23.6](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.23.6)
- [Bump Z-Wave JS to 11.0.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.0.0)
- [Bump Z-Wave JS to 11.1.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.1.0)
- [Bump Z-Wave JS to 11.2.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.2.0)
- [Bump Z-Wave JS to 11.3.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.3.0)
- [Bump Z-Wave JS to 11.4.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.4.0)
- [Bump Z-Wave JS to 11.4.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.4.1)
- [Bump Z-Wave JS to 11.4.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.4.2)
- [Bump Z-Wave JS to 11.5.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.5.0)
- [Bump Z-Wave JS to 11.5.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.5.1)
- [Bump Z-Wave JS to 11.5.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.5.2)
- [Bump Z-Wave JS to 11.5.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.5.3)
- [Bump Z-Wave JS to 11.6.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v11.6.0)

## 0.1.84

### Bug fixes

- Fixed an issue which could cause temperature to be shown in Celsius instead of Fahrenheit
- Fixed an issue which could cause devices to be incorrectly considered to be awake
- Verify state change for barrier devices without support for Supervision CC instead of assuming commands to succeed

### Config file changes

- Correct config parameters for Duwi ZW ESJ 300

### Detailed changelogs

- [Bump Z-Wave JS to 10.23.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.23.0)
- [Bump Z-Wave JS to 10.23.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.23.1)
- [Bump Z-Wave JS to 10.23.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.23.2)

## 0.1.83

### Bug fixes

- Fixed an issue introduced in Z-Wave JS `10.21.0` where some optimistic value updates would no longer happen after successful multicast commands

### Detailed changelogs

- [Bump Z-Wave JS to 10.22.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.22.3)

## 0.1.82

### Bug fixes

- Fixed a crash scenario
- Fixed an issue that caused device values to stop updating

### Config file changes

- Add LG U+ smart switches
- Add/correct config files for iSurpass J1825
- Added another variant of Kwikset 914C
- Add Dawon PM-S140-ZW, PM-S340-ZW and KR frequencies

### Detailed changelogs

- [Bump Z-Wave JS to 10.22.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.22.1)
- [Bump Z-Wave JS to 10.22.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.22.2)

## 0.1.81

### Bug fixes

- Fixed several crashes
- Expose some device functionality that would previously be hidden as redundant
- Auto-discovered config parameters (for new devices) can now be edited
- Properly support config parameters above number 255
- Optimized the config parameter queries during the interview to take much less time in many cases
- Some minor changes to better comply with the Z-Wave specification

### Config file changes

- Add configuration for Zooz ZEN53, 54, 55
- Extend version range for Vesternet VES-ZW-HLD-016
- Add 700 series variant of SimonTech Roller Blind
- Updated instructions for Leviton VRS15 and ZW15R

### Detailed changelogs

- [Bump Z-Wave JS to 10.21.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.21.0)
- [Bump Z-Wave JS to 10.20.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.20.0)
- [Bump Z-Wave JS to 10.19.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.19.0)
- [Bump Z-Wave JS to 10.18.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.18.0)
- [Bump Z-Wave JS to 10.17.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.17.1)

## 0.1.80

- [Bump Z-Wave JS to 10.17.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.17.0)

## 0.1.79

- [Bump Z-Wave JS to 10.16.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.16.0)

## 0.1.78

- [Bump Z-Wave JS Server to 1.28.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.28.0)
- [Bump Z-Wave JS to 10.15.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.15.0)
- [Bump Z-Wave JS to 10.14.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.14.1)
- [Bump Z-Wave JS to 10.14.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.14.0)
- [Bump Z-Wave JS to 10.13.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.13.0)

## 0.1.77

- [Bump Z-Wave JS Server to 1.27.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.27.0)
- [Bump Z-Wave JS to 10.12.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.12.0)
- [Bump Z-Wave JS to 10.11.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.11.1)
- [Bump Z-Wave JS to 10.11.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.11.0)

## 0.1.76

- [Bump Z-Wave JS Server to 1.26.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.26.0)
- [Bump Z-Wave JS to 10.10.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.10.0)

## 0.1.75

- [Bump Z-Wave JS Server to 1.25.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.25.0)
- [Bump Z-Wave JS to 10.5.4](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.5.4)

## 0.1.74

- [Bump Z-Wave JS Server to 1.24.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.24.0)
- [Bump Z-Wave JS to 10.3.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.3.0)

## 0.1.73

- [Bump Z-Wave JS Server to 1.23.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.23.1)
- [Bump Z-Wave JS to 10.2.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.2.0)
- Bump Z-Wave JS to test build to try to address memory leak
- Revert to default base image

## 0.1.72

- Use same base image as community add-on zwave-js-ui

## 0.1.71

- [Bump Z-Wave JS to 10.1.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.1.0)

## 0.1.70

- [Bump Z-Wave JS to 10.0.4](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.0.4)

## 0.1.69

- Use edge version of NodeJS (16.17.0)
- Bump Alpine to 3.16

## 0.1.68

- [Bump Z-Wave JS to 10.0.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.0.3)

## 0.1.67

- [Bump Z-Wave JS to 10.0.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.0.2)

## 0.1.66

- [Bump Z-Wave JS Server to 1.22.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.22.1)
- [Bump Z-Wave JS to 10.0.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v10.0.1)

## 0.1.65

- [Bump Z-Wave JS Server to 1.21.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.21.0)
- [Bump Z-Wave JS to 9.6.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v9.6.2)

## 0.1.64

- Fix finish script for S6 V3

## 0.1.63

- [Bump Z-Wave JS Server to 1.20.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.20.0)

## 0.1.62

- [Bump Z-Wave JS Server to 1.19.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.19.0)

## 0.1.61

- [Bump Z-Wave JS to 9.4.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v9.4.0)
- [Bump Z-Wave JS Server to 1.18.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.18.0)

## 0.1.60

- Fix permissions issue with startup scripts

## 0.1.59

- [Bump Z-Wave JS to 9.3.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v9.3.0)
- [Bump Z-Wave JS Server to 1.17.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.17.0)

## 0.1.58

- [Bump Z-Wave JS to 9.0.7](https://github.com/zwave-js/node-zwave-js/releases/tag/v9.0.7)
- [Bump Z-Wave JS Server to 1.16.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.16.1)

## 0.1.57

- [Bump Z-Wave JS to 9.0.4](https://github.com/zwave-js/node-zwave-js/releases/tag/v9.0.4)

## 0.1.56

- [Bump Z-Wave JS to 9.0.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v9.0.2)
- [Bump Z-Wave JS Server to 1.16.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.16.0)

## 0.1.55

- [Bump Z-Wave JS to 8.11.9](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.11.9)

## 0.1.54

- [Bump Z-Wave JS to 8.11.6](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.11.6)
- [Bump Z-Wave JS Server to 1.15.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.15.0)

## 0.1.53

- [Bump Z-Wave JS to 8.11.5](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.11.5)

## 0.1.52

- [Bump Z-Wave JS to 8.10.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.10.2)
- [Bump Z-Wave JS Server to 1.14.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.14.1)

## 0.1.51

- [Bump Z-Wave JS to 8.9.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.9.2)
- [Bump Z-Wave JS Server to 1.14.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.14.0)

## 0.1.50

- [Bump Z-Wave JS to 8.8.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.8.3)

## 0.1.49

- [Bump Z-Wave JS to 8.7.7](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.7.7)
- [Bump Z-Wave JS Server to 1.12.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.12.0)

## 0.1.48

- [Bump Z-Wave JS to 8.7.6](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.7.6)
- [Bump Z-Wave JS Server to 1.11.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.11.0)

## 0.1.47

- Disable soft-reset if VM is detected

## 0.1.46

- [Bump Z-Wave JS to 8.7.5](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.7.5)
- [Bump Z-Wave JS Server to 1.10.8](https://github.com/zwave-js/zwave-js-server/releases/tag/1.10.8)

## 0.1.45

- [Bump Z-Wave JS Server to 1.10.7](https://github.com/zwave-js/zwave-js-server/releases/tag/1.10.7)

## 0.1.44

- Fix casing issues with security keys
- Fix `emulate_hardware` configuration option

## 0.1.43

- [Bump Z-Wave JS Server to 1.10.6](https://github.com/zwave-js/zwave-js-server/releases/tag/1.10.6)

## 0.1.42

- Retain legacy network_key config option to stay backwards compatible.

## 0.1.41

- [Bump Z-Wave JS Server to 1.10.5](https://github.com/zwave-js/zwave-js-server/releases/tag/1.10.5)
- [Bump Z-Wave JS to 8.4.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.4.1)
- Add support for S2 keys in the addon configuration (check the Security Keys section of the configuration docs for more details)

## 0.1.40

- [Bump Z-Wave JS to 8.3.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.3.0)

## 0.1.39

- [Bump Z-Wave JS to 8.2.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.2.3)

## 0.1.38

- [Bump Z-Wave JS Server to 1.10.3](https://github.com/zwave-js/zwave-js-server/releases/tag/1.10.3)
- [Bump Z-Wave JS to 8.2.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.2.1)

## 0.1.37

- [Bump Z-Wave JS Server to 1.10.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.10.0)

## 0.1.36

- [Bump Z-Wave JS to 8.1.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.1.1)

## 0.1.35

- [Bump Z-Wave JS Server to 1.9.3](https://github.com/zwave-js/zwave-js-server/releases/tag/1.9.3)
- [Bump Z-Wave JS to 8.0.8](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.0.8)

## 0.1.34

- [Bump Z-Wave JS Server to 1.9.2](https://github.com/zwave-js/zwave-js-server/releases/tag/1.9.2)

## 0.1.33

- [Bump Z-Wave JS to 8.0.6](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.0.6)

## 0.1.32

- [Bump Z-Wave JS to 8.0.5](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.0.5)

## 0.1.31

- [Bump Z-Wave JS Server to 1.9.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.9.1)

## 0.1.30

- [Bump Z-Wave JS to 8.0.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v8.0.3)
- [Bump Z-Wave JS Server to 1.9.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.9.0)

## 0.1.29

- [Bump Z-Wave JS to 7.12.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.12.0)

## 0.1.28

- [Bump Z-Wave JS to 7.10.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.10.0)
- [Bump Z-Wave JS Server to 1.8.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.8.0)

## 0.1.27

- [Bump Z-Wave JS to 7.9.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.9.0)

## 0.1.26

- [Bump Z-Wave JS to 7.7.4](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.7.4)

## 0.1.25

- [Bump Z-Wave JS to 7.7.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.7.3)

## 0.1.24

- [Bump Z-Wave JS to 7.7.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.7.0)
- Create persistent directory for device config files to allow for future config updating functionality through the Home Assistant UI.

## 0.1.23

- [Bump Z-Wave JS Server to 1.7.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.7.0)
- [Pin Z-Wave JS to 7.6.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.6.0)

## 0.1.22

- [Bump Z-Wave JS Server to 1.6.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.6.0)
- [Pin Z-Wave JS to 7.5.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.5.2)

## 0.1.21

- [Pin Z-Wave JS to 7.3.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.3.0)

## 0.1.20

- [Bump Z-Wave JS Server to 1.5.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.5.0)
- [Pin Z-Wave JS to 7.2.4](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.2.4)

## 0.1.19

- [Pin Z-Wave JS to 7.2.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.2.3)
- Make log level a configuration option

## 0.1.18

- [Pin Z-Wave JS to 7.2.2](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.2.2)

## 0.1.17

- [Bump Z-Wave JS Server to 1.4.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.4.0)
- [Pin Z-Wave JS to 7.1.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.1.1)

## 0.1.16

- [Bump Z-Wave JS Server to 1.3.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.3.1)

## 0.1.15

- [Pin Z-Wave JS to version 7.0.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.0.1)

## 0.1.14

- [Bump Z-Wave JS Server to 1.3.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.3.0)
- [Pin Z-Wave JS to version 7.0.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v7.0.0)

## 0.1.13

- [Bump Z-Wave JS Server to 1.2.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.2.1)
- [Pin Z-Wave JS to version 6.6.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v6.6.3)
- Unpin Z-Wave JS dependencies

## 0.1.12

- [Bump Z-Wave JS to 6.5.1](https://github.com/zwave-js/node-zwave-js/releases/tag/v6.5.1)
- Pin Z-Wave JS dependencies

## 0.1.11

- [Bump Z-Wave JS Server to 1.1.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.1.1)

## 0.1.10

- [Bump Z-Wave JS Server to 1.1.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.1.0) This is the same code as 2.0.0. Home Assistant 2021.2 rejects any ZJS Server version that is v2+

## 0.1.9

- Bump Z-Wave JS Server to 2.0.0

## 0.1.8

- [Bump Z-Wave JS Server to 1.0.0](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0)
- [Pin Z-Wave JS to version 6.5.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v6.5.0)

## 0.1.7

- [Bump Z-Wave JS Server to 1.0.0-beta.6](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0-beta.6)

## 0.1.6

- [Update Z-Wave JS to version 6.2.0](https://github.com/zwave-js/node-zwave-js/releases/tag/v6.2.0)

## 0.1.5

- Update hardware configuration for Supervisor 2021.02.5
- [Upgrade Z-Wave JS Server to 1.0.0-beta.5](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0-beta.5)
- [Pin Z-Wave JS to version 6.1.3](https://github.com/zwave-js/node-zwave-js/releases/tag/v6.1.3)

## 0.1.4

- [Bump Z-Wave JS Server to 1.0.0-beta.4](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0-beta.4)

## 0.1.3

- [Bump Z-Wave JS Server to 1.0.0-beta.3](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0-beta.3)

## 0.1.2

- [Bump Z-Wave JS Server to 1.0.0-beta.2](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0-beta.2)

## 0.1.1

- [Bump Z-Wave JS Server to 1.0.0-beta.1](https://github.com/zwave-js/zwave-js-server/releases/tag/1.0.0-beta.1)

## 0.1.0

- Initial release
