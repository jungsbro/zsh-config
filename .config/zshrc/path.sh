#!/bin/bash

# ==============================================================================
# export PATH=$PATH:$HOME:/opt/genymobile/genymotion
if [[ *"$PATH"* != *"$HOME:"* ]]; then
    export PATH=$PATH:$HOME
fi
if [[ *"$PATH"* != *"$HOME/.local/bin"* ]]; then
    export PATH=$PATH:$HOME/.local/bin
fi
# ==============================================================================
