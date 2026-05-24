#!/bin/bash

# ==============================================================================

if [[ -f "/usr/bin/fcitx5" ]] || [[ -f "/usr/local/bin/fcitx5" ]]; then
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS="@im=fcitx"

elif [[ -f "/usr/bin/fcitx" ]] || [[ -f "/usr/local/bin/fcitx" ]]; then
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS="@im=fcitx"

elif [[ -f "/usr/bin/ibus" ]] || [[ -f "/usr/local/bin/ibus" ]]; then
    export GTK_IM_MODULE=ibus
    export QT_IM_MODULE=ibus
    export XMODIFIERS="@im=ibus"

elif [[ -f "/usr/bin/uim-sh" ]] || [[ -f "/usr/local/bin/uim-sh" ]]; then
    export GTK_IM_MODULE=uim
    export QT_IM_MODULE=uim
    export XMODIFIERS="@im=uim"

elif [[ -f "/usr/bin/kime" ]] || [[ -f "/usr/local/bin/kime" ]]; then
    export GTK_IM_MODULE=xim
    export QT_IM_MODULE=xim
    export XMODIFIERS="@im=kime"

elif [[ -f "/usr/bin/nimf" ]] || [[ -f "/usr/local/bin/nimf" ]]; then
    export GTK_IM_MODULE="xim"
    export QT_IM_MODULE=xim
    export XMODIFIERS="@im=nimf"
fi
# ==============================================================================
