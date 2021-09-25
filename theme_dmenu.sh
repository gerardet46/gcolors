#!/usr/bin/env sh

opt="$(ls /usr/include/gcolors | sed s/\.h//g | dmenu -p "Tria un tema")"

_pwd="$(pwd)"
cd /opt/gcolors

if [ -f "/usr/include/gcolors/$opt.h" ]; then
    sudo -A echo "sudo passwd"
    sudo ./change.sh "$opt"
    ./remake.sh
    . ./colors_env.sh

    # finish
    killall dwmblocks
    dwmblocks &
fi

cd "$_pwd"
