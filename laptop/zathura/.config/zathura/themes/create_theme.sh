#!/bin/bash

function get_xrdb_color () {
	xrdb -query | grep "$1" | cut -d":" -f2 | xargs
}

BLACK=$(get_xrdb_color "*.color0:")
WHITE=$(get_xrdb_color "*.color15:")
RED=$(get_xrdb_color "*.color1:")
GREEN=$(get_xrdb_color "*.color2:")
YELLOW=$(get_xrdb_color "*.color3:")
BLUE=$(get_xrdb_color "*.color4:")
MAGENTA=$(get_xrdb_color "*.color5:")
COLOR6=$(get_xrdb_color "*.color6:")
COLOR8=$(get_xrdb_color "*.color8:")

cat << EOF > theme
set default-bg                  "$BLACK"
set default-fg                  "$WHITE"

set statusbar-fg                "$BLACK"
set statusbar-bg                "$COLOR8"

set inputbar-bg                 "$BLACK"
set inputbar-fg                 "$GREEN"

set notification-error-bg       "$RED"
set notification-error-fg       "$BLACK"

set notification-warning-bg     "$GREEN"
set notification-warning-fg     "$BLACK"

set highlight-color             "$YELLOW"
set highlight-active-color      "$MAGENTA"

set completion-highlight-fg     "$BLUE"
set completion-highlight-bg     "$BLACK"

set completion-bg               "$BLACK"
set completion-fg               "$MAGENTA"

set notification-bg             "$BLACK"
set notification-fg             "$YELLOW"

set recolor-lightcolor          "$BLACK"
set recolor-darkcolor           "$WHITE"
set recolor                     "true"

## setting recolor-keep true will keep any color your pdf has.
## if it is false, it'll just be black and white
#set recolor-keephue             "true"
EOF
