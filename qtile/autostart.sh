#!/bin/sh
# This small bash screen is runned at the begining of the
# qtile initialization, it's used to setup some icons of
# the qtile wm.
#
# For more information: github.com/pablocorbalann/dotfiles/tree/main/qtile

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
