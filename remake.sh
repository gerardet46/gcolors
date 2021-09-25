#!/usr/bin/env sh

# Run it with REGULAR USER!

_pwd="$(pwd)"
while read line
do
    # ignoram comentaris
    first="$(echo "$line" | cut -c1-1)"
    [ "$first" = "#" ] && continue
    [ "$first" = "~" ] && line="$HOME$(echo "$line" | cut -c2-)"

    if [ -d "$line" ]; then
        cd "$line"
        sudo make install clean
        echo "Fet - $line"
        cd "$_pwd"
    fi
done < /opt/gcolors/makepkgs
