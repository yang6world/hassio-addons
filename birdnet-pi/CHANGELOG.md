## 0.13-20 (02-05-2024)
- Minor bugs fixed
## 0.13-19 (02-05-2024)
- Fix : show container logs in "View log"
- Feat : new command line script to change the identification of a bird (changes database & files location)
- Fix : correct chmod defaults

## 0.13-17 (01-05-2024)
- Feat : Send service logs to docker container
- Feat : re-add the throttle service
- Feat : ensure no data from tpmfs is lost when the container is closed by saving it to a temporary place, and restoring on restart

## 0.13-11 (01-05-2024)
- Feat : use pi_password to define the user password from the addon options

## 0.13-8 (29-04-2024)
- Improve ingress
- Fix : give caddy UID 1000 to allow deletion of files owned by pi

## 0.13-5 (29-04-2024)
- Feat : addon option to use allaboutbird (US) or ebird (international) for additional birds info
- Remove throttle script due to interactions with analysis service

## 0.13 (28-04-2024)
- Fix : ensure correct labels language is used at boot
- Feat : add throttle recording service from @JohnButcher https://github.com/mcguirepr89/BirdNET-Pi/issues/393#issuecomment-1166445710
- Feat : use tmpfs from StreamData to reduce disk wear
- Feat : definition of BirdSongs folder through an addon option, existing data will not be migrated
- Add support for /config/include_species_list.txt and /config/exclude_species_list.txt
- Add support for apprise, txt, clean code
- Initial build
