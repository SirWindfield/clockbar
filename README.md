# Clockbar

> A bossbar that displays additional time information when holding a clock

This data pack adds a bossbar that shows up when a player holds a clock. `clockbar` supports both 12 and 24 hour time formats which are configurable through interactive chat messages.

## Installation

Download a zip file of this repository by clicking on the green `Clone or download` button at the right. You have to unzip the zip file and place the resulting folder into the `datapacks` folder of your world save.

## Configuration

The `clockbar` is enabled by default. Players can change the time format as well as disabling the `clockbar` by running the following trigger command:

```
/trigger cb_config
```

> __Note:__ The above command __DOES NOT__ need OP!

## Improvements

- Xisumavoid's [Coordinate HUD](https://vanillatweaks.net/picker/datapacks/) data pack calculates the time dynamically. Something similar can be done in this pack, which would remove the huge blocks of if statements that are used to determine the displayed time
- The settings menu can be improved with additional colored feedback (enabled settings are green, disabled ones red), tick marks etc.

## License

The data pack is licensed under the GPLv3. For more information, take a look at the license file within this repository.

## Credit

The idea is based upon [this](https://www.planetminecraft.com/data-pack/datapack-better-clock-1-13-1-14/) planetminecraft data pack. However, everything has been written from scratch and no code has been copied! Compared to the version mentioned prior, my data pack only displays the time in 30 minute intervalls but offers a configuration menu to change the format between 12/24 hours. The planetminecraft data pack, as far as I can tell, has no options to disable it for each player individually.
