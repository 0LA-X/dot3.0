#!/usr/bin/zsh

set -e


SOUND="~/.config/key-sounds/akko_lavender_purples"

wayvibes --device

wayvibes "$SOUND" -v 6 --background
