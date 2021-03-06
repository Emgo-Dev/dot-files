#!/bin/bash

# use deviceType:deviceName format for device parameter.

# use property id integer as property value.
# xinput --set-prop pointer:Logitech\ USB\ Receiver 278 2
# xinput --set-prop pointer:Logitech\ USB\ Receiver 279 5
# xinput --set-prop pointer:Logitech\ USB\ Receiver 280 5

# use property name string as property value.
xinput --set-prop pointer:Logitech\ USB\ Receiver 'Device Accel Constant Deceleration' 2
xinput --set-prop pointer:Logitech\ USB\ Receiver 'Device Accel Adaptive Deceleration' 5
xinput --set-prop pointer:Logitech\ USB\ Receiver 'Device Accel Velocity Scaling' 5
