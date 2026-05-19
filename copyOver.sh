#!/bin/bash

rsync -av --delete "$HOME/.config/picom/" .config/picom/
rsync -av --delete "$HOME/.config/bspwm/" .config/bspwm/
rsync -av --delete "$HOME/.config/polybar/" .config/polybar/
rsync -av --delete "$HOME/.config/rofi/" .config/rofi/
rsync -av --delete "$HOME/.config/sxhkd/" .config/sxhkd/
rsync -av --delete "$HOME/.config/kitty/" .config/kitty/
rsync -av "$HOME/.xinitrc" .
rsync -av "$HOME/Scripts/" .Scripts/