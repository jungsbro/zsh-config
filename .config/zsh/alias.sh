#!/bin/bash

# enable color support of ls and also add handy aliases ========================
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    # alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# ==============================================================================

# some more ls aliases =========================================================
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# ==============================================================================

# Current State ================================================================
# # alias getClock="cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"
# alias getClock="vcgencmd measure_clock arm"
# # alias getTemp="cat /sys/class/thermal/thermal_zone0/temp"
# alias getTemp="vcgencmd measure_temp"
# alias getVolt="vcgencmd measure_volts"
# alias getThrot="vcgencmd get_throttled"
# ==============================================================================

# Add an "alert" alias for long running commands.  Use like so: ================
# #   sleep 10; alert
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# ==============================================================================
