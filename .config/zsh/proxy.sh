#!/bin/bash

# proxy settings ===============================================================
# ------------------------------------------------------------------------------
export PROXY_SRV_IP=192.168.0.0
export PROXY_SRV_PORT=0000
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
export http_proxy=http://${PROXY_SRV_IP}:${PROXY_SRV_PORT}
export https_proxy=${http_proxy}
export ftp_proxy=${http_proxy}
export no_proxy=localhost
# ------------------------------------------------------------------------------
# ==============================================================================


# set_proxy_alias ==============================================================
function set_proxy_alias()
{
    # 1) Settings ENV ----------------------------------------------------------
    # PROXY_SRV_IP .............................................................
    local PROXY_SRV_IP="192.168.0.0"
    local PROXY_SRV_PORT="0000"
    # ..........................................................................

    # SRC_ROOT_DIR .............................................................
    # SRC_ROOT_DIR="/core/linux/env/cg"
    local SRC_ROOT_DIR="/mnt/j4105-omv/core/linux/env/cg"
    # ..........................................................................

    # chocolatey proxy .........................................................
    /C/ProgramData/chocolatey/config/chocolatey.config
    <add key="proxy" value="${PROXY_SRV_IP}:${PROXY_SRV_PORT}" description="Explicit proxy location." />
    # ..........................................................................
    # --------------------------------------------------------------------------


    # 2) Checking PROXY_SRV_IP -------------------------------------------------
    # linux ....................................................................
    # -c count
    # -W timeout
    # ping -c 1 -W 500 ${PROXY_SRV_IP} 2> /dev/null;
    # ..........................................................................

    # windows ..................................................................
    # -n count
    # -w timeout
    # >null : 앞에 실행한 cmd 결과를 숨김
    # 2>&1 : error를 숨김김
    # ping -n 1 -w 500 ${PROXY_SRV_IP} >nul 2>&1
    # ping -n 1 -w 500 ${PROXY_SRV_IP} 2>&1
    # ..........................................................................

    # if [[ ${?} != 0 ]]; then
    #     clear
    #     return
    # else
    #     clear
    # fi
    # --------------------------------------------------------------------------


    # 3) Setting proxy ---------------------------------------------------------
    # checking ~/.ssh/config
    # export http_proxy="http://${PROXY_SRV_IP}:${PROXY_SRV_PORT}"
    # export https_proxy="${http_proxy}"
    # export ftp_proxy="${http_proxy}"
    # export no_proxy="localhost"
    # --------------------------------------------------------------------------


    # 4) Setting pipeline-alias ------------------------------------------------
    if [[ ! -e ${SRC_ROOT_DIR} ]]; then
        return
    fi
    # source "/o/core/windows/env/alias/init_alias.sh"
    # source "${SRC_ROOT_DIR}/core/windows/env/alias/init_alias.sh"
    source "${SRC_ROOT_DIR}/alias/init_alias.sh"

    # source "/o/core/windows/env/alias/init_menu.sh"
    # source "${SRC_ROOT_DIR}/core/windows/env/alias/init_menu.sh"

    # source "${SRC_ROOT_DIR}/core/windows/env/bashrc/dalso_theme.sh"
    # source "${SRC_ROOT_DIR}/bashrc/dalso_theme.sh"
    # --------------------------------------------------------------------------
}

# set_proxy_alias;
# ==============================================================================