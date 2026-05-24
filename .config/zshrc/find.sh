
#!/bin/bash

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


function fcd()
{
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# ==============================================================================
