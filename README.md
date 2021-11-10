# ABANDONED

This Repo is no longer maintained.
Since the [original project moved to GitHub](https://github.com/danielknobe/blobbyvolley2), I made a [fork](https://github.com/SilentFlyBy/blobbyvolley2), which contains all the adjustments made for the switch and can be easily kept up to date with the original project.

# Blobby Volley 2 for Nintendo Switch

![Logo](https://raw.githubusercontent.com/SilentFlyBy/Blobby-Volley-2-Switch/master/icon.png)

This is a port of the [popular Volleyball game](http://http://blobby.sourceforge.net/) you all know from the good old LAN-party days. This is still in heavy WIP, so expect some features to be broken.

## What works:
+ Local play with 2 full controllers ("full" means no "single-mode" Joycons)
+ Bots and custom bot scripts
+ Ruleset scripts

## Building

[devkitPro](https://switchbrew.org/wiki/Setting_up_Development_Environment) needs to be installed and completely configured.

You also need to install through devkitPro's package manager:
+ SDL2
+ PhysFS
+ OpenGL

Then run:

```bash
./configure-switch.sh
cd build
make && make install
```

The build output will be in `build/blobby`.
