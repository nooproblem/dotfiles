syndaemon -i .5 -m 100 -d

compton --config $HOME/compton.conf -b -C -G

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

xset r rate 260 40

#xrandr  --dpi 120

xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Soft Button Areas" 608, 0, 557, 0, 0, 0, 0, 0
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Off" 2
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Capabilities" 1, 0, 0, 1, 1, 0, 0
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Edges" 48, 1168, 36, 644
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Finger" 25, 30, 0
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Tap Time" 180
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Move Speed" 1.000000, 1.750000, 0.143575, 0.000000
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Tap Durations" 100, 100, 100
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Click Action" 1, 3, 0
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Tap Move" 61
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Tap Action" 2, 3, 0, 0, 1, 3, 0

#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Middle Button Timeout" 0
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Two-Finger Pressure" 282
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Two-Finger Width" 7
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Scrolling Distance" 27, 27
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Edge Scrolling" 0, 0, 0
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Circular Scrolling" 0
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Circular Scrolling Trigger" 0
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Circular Pad" 0
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Palm Dimensions" 5, 80
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Coasting Speed" 20.000000, 50.000000
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Resolution Detect" 1
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Gestures" 1
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Pad Resolution" 12, 12
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Area" 0, 0, 0, 0
#xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Noise Cancellation" 6, 6

#disable touchpad
#xinput disable 12

#synclient TouchpadOff=1

#exec i3 -V > $HOME/i3.log 2>&1
exec i3
