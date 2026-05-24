#!/bin/bash

# ==============================================================================
if [[ -f "/usr/bin/clear" ]] && [[ -f "/usr/bin/neofetch" ]]; then
    /usr/bin/clear
    /usr/bin/neofetch

elif [[ -f "/usr/bin/clear" ]] && [[ -f "/usr/bin/fastfetch" ]]; then
    /usr/bin/clear
    /usr/bin/fastfetch
fi
# ==============================================================================
