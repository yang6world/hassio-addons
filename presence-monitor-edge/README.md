# Bluetooth Presence Monitor

[![GitHub Release][release-shield]][release]
![Project Stage][project-stage-shield]
![Project Maintenance](https://img.shields.io/badge/maintainer-Andrey%20Khrolenok%20%40Limych-blue.svg)

[![GitHub pull requests](https://img.shields.io/github/issues-pr/Limych/addon-presence-monitor?style=popout)](https://github.com/Limych/addon-presence-monitor/pulls)
[![Bugs](https://img.shields.io/github/issues/Limych/addon-presence-monitor/bug.svg?colorB=red&label=bugs&style=popout)](https://github.com/Limych/addon-presence-monitor/issues?q=is%3Aopen+is%3Aissue+label%3Abug)

Passive Bluetooth presence detection of beacons, cell phones, and other Bluetooth devices.

## WARNING! THIS IS AN EDGE VERSION!

Edge builds add-ons are based upon the latest development version.

- It may not work at all.
- It might stop working at any time.
- It could have a negative impact on your system.

This release was created for:

- Anybody willing to test.
- Anybody interested in trying out upcoming add-ons or add-on features.
- Developers.

For common purposes please install stable release of add-on.


## About

This add-on actually is a usage convenient shell for launching [the Andrew J Freyer's monitor script](https://github.com/andrewjfreyer/monitor) on the same machine where the Home Assistant itself works.
This script useful for MQTT-based home automation, especially when the script runs on multiple devices, distributed throughout a property.

## Features

* Convenient way to start indoor presence detection.
* You can use Home Assistant configuration secrets in add-on configuration.
* All necessary software is installed by itself. And regularly updated to the latest versions.
* The script is almost configured — just enter a couple of remaining settings.
* Complete freedom in reconfiguring the script to your needs.
* You can combine add-on and common versions of this presence monitor script in any combinations.

<p align="center">* * *</p>
I put a lot of work into making this repo and component available and updated to inspire and help others! I will be glad to receive thanks from you — it will give me new strength and add enthusiasm:
<p align="center"><br>
<a href="https://www.patreon.com/join/limych?" target="_blank"><img src="http://khrolenok.ru/support_patreon.png" alt="Patreon" width="250" height="48"></a>
<br>or&nbsp;support via Bitcoin or Etherium:<br>
<a href="https://sochain.com/a/mjz640g" target="_blank"><img src="http://khrolenok.ru/support_bitcoin.png" alt="Bitcoin" width="150"><br>
16yfCfz9dZ8y8yuSwBFVfiAa3CNYdMh7Ts</a>
</p>

[:books: Read the full add-on documentation][docs]


[docs]: https://github.com/Limych/addon-presence-monitor/blob/5e75061/presence-monitor/DOCS.md
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[release-shield]: https://img.shields.io/badge/version-5e75061-blue.svg
[release]: https://github.com/Limych/addon-presence-monitor/tree/5e75061