# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/pi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bullet-train"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    # autojump
    zsh-syntax-highlighting
    zsh-256color
    fzf
    fasd
    )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# From bashrc ==================================================================
#
# proxy settings ===============================================================
# export PROXY_SERVER_IP=192.168.0.0:3128
# export http_proxy=http://${PROXY_SERVER_IP}
# export https_proxy=${http_proxy}
# export ftp_proxy=${http_proxy}
# export no_proxy=localhost
# ==============================================================================

export PATH=$PATH:$HOME:/opt/genymobile/genymotion

# if [ -f ~/.bash_profile ]; then
#     source ~/.bash_profile
# fi

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

# colored GCC warnings and errors ==============================================
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
# ==============================================================================

# some more ls aliases =========================================================
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# ==============================================================================

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# ==============================================================================

# Custom settings ==============================================================
setopt correct
setopt nonomatch
# ==============================================================================

# History ======================================================================
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%Y.%m.%d %T "
# ==============================================================================

# tmux autostart ===============================================================
# if [ -z "$TMUX" ] && [ -n "$SSH_TTY" ] && [[ $- =~ i ]]; then
#     tmux attach-session -t ssh || tmux new-session -s ssh
#     exit
# fi

# if [[ -z "$TMUX" ]]; then
#     if tmux has-session 2>/dev/null; then
#         exec tmux attach
#     else
#         exec tmux
#     fi
# fi
# ==============================================================================

# mc ===========================================================================
# alias mc='EDITOR=/usr/bin/vim mc'     # debian
# alias mc='EDITOR=/usr/bin/vimx mc'    # CentOS

alias mc='LANG=en_EN.UTF-8 mc'
# alias mc='LANG=ko_KR.UTF-8 mc'
# ==============================================================================

# vim ==========================================================================
# alias vi='/usr/bin/vim'               # debian
# alias vim='/usr/bin/vim'              # debian

# alias vi='/usr/bin/vimx'              # CentOS
# alias vim='/usr/bin/vimx'             # CentOS
# ==============================================================================

# vim for ranger ==============================================================
# export VISUAL='/usr/bin/vim'          # debian
# export EDITOR='/usr/bin/vim'          # debian

# export VISUAL='/usr/bin/vimx'         # CentOS
# export EDITOR='/usr/bin/vimx'         # CentOS
# ==============================================================================

# ranger =======================================================================
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
# ==============================================================================

# fd ===========================================================================
alias fd=fdfind
# ==============================================================================

# fasd =========================================================================
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias v='f -e vim' # quick opening files with vim
# alias m='f -e mplayer' # quick opening files with mplayer
# alias o='a -e xdg-open' # quick opening files with xdg-open
# ==============================================================================

# fzf ==========================================================================
# export FZF_DEFAULT_COMMAND='fd -type f'
export FZF_DEFAULT_COMMAND="find -L"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function fzfv()
{
    fzf --preview '[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (highlight -O ansi -l {} ||
                  coderay {} ||
                  rougify {} ||
                  cat {}) 2> /dev/null | head -500'
}

function frmrf()
{
    rm -rf $(find $argv | fzf)
}

# function fcd()
# {
#     cd $(find $argv -type d | fzf)
# }

function fcd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# ==============================================================================

# Current State ================================================================
#alias getClock="cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"
alias getClock="vcgencmd measure_clock arm"
#alias getTemp="cat /sys/class/thermal/thermal_zone0/temp"
alias getTemp="vcgencmd measure_temp"
alias getVolt="vcgencmd measure_volts"
alias getThrot="vcgencmd get_throttled"
# ==============================================================================

# wacom ========================================================================
# intuosPro_PTH860 12x8 ( 0 0 62200 43200 )

# stylusId=$( xsetwacom --list devices | grep -i stylus | cut -f 10 -d ' ' | cut -f 1 )
# eraserId=$( xsetwacom --list devices | grep -i eraser | cut -f 10 -d ' ' | cut -f 1 )
#
# /usr/bin/xsetwacom set ${stylusId} ResetArea;
# /usr/bin/xsetwacom set ${eraserId} ResetArea;
# /usr/bin/xsetwacom set ${stylusId} Area 38210 29700 62200 43200;
# /usr/bin/xsetwacom set ${eraserId} Area 38210 29700 62200 43200;
# ==============================================================================

# ==============================================================================
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus
# ==============================================================================
