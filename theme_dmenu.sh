#!/usr/bin/env sh

opt="$(ls /usr/include/gcolors | sed s/\.h//g | dmenu -p "Tria un tema")"

_pwd="$(pwd)"
cd /opt/gcolors

sudo -A echo "sudo passwd"
if sudo ./change.sh "$opt"; then
    ./remake.sh
    . ./colors_env.sh

    # finish
    killall dwmblocks
    dwmblocks &
fi

cd "$_pwd"
