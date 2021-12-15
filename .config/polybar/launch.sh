#!/bin/bash

#        _    ___ _       
#       | |  / __|_)       Alfie Richardson
#  _____| |_| |__ _ _____  
# (____ | (_   __) | ___ | https://github.com/AlfieRichardson
# / ___ | | | |  | | ____| https://gitlab.com/Penguinatic
# \_____|\_)|_|  |_|_____)
#
# A launch script for my polybars.

# Terminate any running instances.
killall -q polybar

# Launch Polybar, using default config location: ~/.config/polybar/config
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

# Message to console.
echo "Polybars launched."
