#!/usr/bin/env sh

path="/opt/gcolors"

cp -vf gcolors.h /usr/include/
cp -rvf gcolors /usr/include/

mkdir -pv "$path"

cp -vf makepkgs "$path/"
cp -vf remake.sh "$path/"
cp -vf change.sh "$path/"
cp -vf colors_env.sh "$path/"
cp -vf theme_dmenu.sh "$path/"

cp -vf default.h "$path/"

echo "##### INSTALLATION COMPLETED #####"
echo "Add '. $path/colors_env.sh' to autostart"
echo "Check $path/makepkgs list"
