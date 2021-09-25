#!/usr/bin/env sh

_PATH="/usr/include"

scheme="$(grep "#define" "$_PATH/gcolors.h" | awk '{print $2}' | tr '[:upper:]' '[:lower:]')"
sch_file="$_PATH/gcolors/$scheme.h"

grep "#define" "$sch_file" > /tmp/color_list
while read line
do
    key="$(echo "$line" | awk '{print $2}')"
    value="$(echo "$line" | awk '{print $3}' | sed s/\"//g)"

    # resolve referencies
    while ! [ "$(echo "$value" | cut -c1-1)" = "#" ]
    do
        value="$(grep "#define $value" "$sch_file" | awk '{print $3}' | sed s/\"//g)"
    done

    # finally export color
    export "$key"="$value"
done < /tmp/color_list
