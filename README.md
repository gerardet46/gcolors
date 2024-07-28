# GCOLORS - Gerardet Colors

## `This repo is unmaintened!`

This color library (header files and some utilities) are meant to have
several color schemes (.h files). This color schemes can be included
directly in C programs (such us suckless programs)

It can also set environment variables with the colors formatted in `#rrggbb`

## Installation
Simply run
```bash
sudo ./install
```
and header files will be installed at _/usr/include_ and scripts in _/opt/gcolors_

## Color schemes
This are the available color schemes
- nord
- dracula

Edit gcolors folder (_/usr/include/gcolors/_) to add/del/change color schemes.
Don't forget to include them all in _/usr/include/gcolors.h_

## Usage
### Use colors
#### In C files:
Just type
```c
#include <gcolors.h>
```
and you can add COL\_GROC, for example, to get the yellow color (see definitions
in _/usr/include/gcolors/your_theme.h_)
#### In scripts
If you have set environment variables (see it below) then you can
echo "$COL\_GROC" to display the yellow color.

This is useful for example for configuring dwmblocks with status2d, which
allows you typing any color in the hex format, which is the format followed by gcolors

### Change color scheme
```bash
sudo /opt/gcolors/change.sh [theme_name (nord, dracula, ...)]
```
### Remake pkgs that need gcolors.h
Edit the file _/opt/gcolors/makepkgs_, which contains a list of folders that
contain programs (such us dwm or dmenu) that need to be recompiled.

**NOTE 1**: Run it with regular user! (**don't run it with sudo**)

**NOTE 2**: To enter HOME directory, please type `~/` instead of `$HOME` in that file,
as you can see in the example included in this repository

Then, run
```bash
/opt/remake.sh
```
to re-make (install clean) those packages

### Set environment variables
Just add the following to the autostart (maybe ~/.xinitrc)
```bash
. /opt/gcolors/colors_env.sh
```
Notice that it must be sourced (with `.` or `source`). You can run it also in the
fly to refresh color variables

### Make all this with dmenu!
Run the following:
```bash
/opt/gcolors/theme_dmenu.sh
```
to open dmenu (must be installed). There you can select the theme and it will
be changed, remaked and set the env. variables! Make sure you have a program
to ask SUDO\_ASKPASS to enter the password to change the theme

## Colors
The name of the colors are in catalan. You can see the header files (in _/usr/include/gcolors_)
to see the colors.

If you want to add more themes, please follow the same syntax.
