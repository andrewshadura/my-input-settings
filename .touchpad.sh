#!/bin/sh

synclient MinSpeed=0 MaxSpeed=0 HorizEdgeScroll=1 VertEdgeScroll=1 LeftEdge=1 RightEdge=2 TopEdge=1 BottomEdge=2
stick=$(xinput list | sed -ne '/TrackPoint/s,^.*id=\([0-9]*\).*$,\1,gp')
xinput set-prop $stick "Device Accel Velocity Scaling" 20
xinput set-prop $stick "Evdev Middle Button Emulation" 0
xinput set-prop $stick "Evdev Middle Button Emulation" 1
xinput set-prop $stick "Evdev Wheel Emulation" 0
xinput set-prop $stick "Evdev Wheel Emulation" 1
xinput set-prop $stick "Evdev Wheel Emulation Axes" 6 7 4 5
xinput set-prop $stick "Evdev Wheel Emulation Button" 2
synclient TouchPadOff=1
touchpad=$(xinput list | sed -ne '/Touch/s,^.*id=\([0-9]*\).*$,\1,gp')
xinput set-prop $touchpad "Synaptics Coasting Speed" 0 0
xinput set-prop $touchpad "Synaptics Noise Cancellation" 50 50
