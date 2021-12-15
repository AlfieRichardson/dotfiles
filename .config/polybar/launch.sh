#!/bin/bash

# Terminate any running instances.
killall -q polybar

# Launch Polybar, using default config location: ~/.config/polybar/config
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

# Message to console.
echo "Polybars launched."
