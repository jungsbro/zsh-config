#!/bin/bash

# wacom ========================================================================
function set_wacom_range()
{
    if [[ ! -f "/usr/bin/xsetwacom" ]]; then
        return
    fi

    intuosPro_PTH860 12x8 ( 0 0 62200 43200 )

    stylusId=$( xsetwacom --list devices | grep -i stylus | cut -f 10 -d ' ' | cut -f 1 )
    eraserId=$( xsetwacom --list devices | grep -i eraser | cut -f 10 -d ' ' | cut -f 1 )

    /usr/bin/xsetwacom set ${stylusId} ResetArea;
    /usr/bin/xsetwacom set ${eraserId} ResetArea;
    /usr/bin/xsetwacom set ${stylusId} Area 38210 29700 62200 43200;
    /usr/bin/xsetwacom set ${eraserId} Area 38210 29700 62200 43200;
}
# ==============================================================================
