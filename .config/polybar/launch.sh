#!/bin/bash

# Kill any running polybar instances
killall -q polybar

# Wait until all instances are killed
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar peakyarch 2>&1 | tee -a /tmp/polybar.log & disown
