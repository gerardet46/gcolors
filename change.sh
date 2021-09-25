#!/usr/bin/env sh

[ -z "$1" ] && echo "Usage: ./change.sh [name of file of scheme] (./change nord)" && exit 1

path="/usr/include"
path_opt="/opt/gcolors"

if [ -f "$path/gcolors/$1.h" ]; then
    upper="$(echo "$1" | tr '[:lower:]' '[:upper:]')"

    echo "#define $upper" > "$path/gcolors.h"
    cat "$path_opt/default.h" >> "$path/gcolors.h"
else
    exit 1
fi
