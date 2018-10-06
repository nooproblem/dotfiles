echo Hola Mongo !!

#-------------------- set term
#export TERM=xterm-256color
#export TERM=screen-256color
#export TERM=fbterm


#-------------------- deshabilito cursor para que no moleste con el cursor de fbterm
if [ "$TMUX" ] ; then
#elif [ "$XDG_VTNR" == 1 ] || [[ -z "$XDG_VTNR" ]]; then
#elif [ "$SHLVL" == 1 ] || [[ -z "$SHLVL" ]]; then
      sudo /bin/bash -c 'echo 0 > /sys/class/graphics/fbcon/cursor_blink'
else
      sudo /bin/bash -c 'echo 1 > /sys/class/graphics/fbcon/cursor_blink'
fi



#-------------------- set vi mode of bash
set -o vi
# this is to move from INS mode to CMD mode of BASH with just kj
bind '"kj":vi-movement-mode'


#-------------------- LS colors and PS1
LS_COLORS=$LS_COLORS:'no=0:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'fi=0:' ; export LS_COLORS
#LS_COLORS=$LS_COLORS:'di=0;33:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'ln=0;35:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'ex=0;32:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.c=0;35:' ; export LS_COLORS
#LS_COLORS=$LS_COLORS:'*.h=0;33:' ; export LS_COLORS

red=$(tput setaf 202)
brown=$(tput setaf 88)
bold=$(tput bold)
reset=$(tput sgr0)
#export PS1=' \[$red\]\u@\h\[$reset\] \[$brown\]$(pwd)\[$reset\]> '
export PS1=' \[$red\]\u@\h\[$reset\] \[$brown\]\w\[$reset\]> '


#-------------------- aliases
alias aspen="screen sudo nice -n-5 su -c 'cvlc --network-caching=30000 http://playerservices.streamtheworld.com/api/livestream-redirect/ASPENAAC_SC' mongo"
alias ls='ls --color'
alias mv='mv -i'
alias brillo="sudo bash -c 'echo 400 > /sys/devices/pci0000\:00/0000\:00\:02.0/drm/card0/card0-eDP-1/intel_backlight/brightness'"
alias wifi="screen -Sdm 'wifi' /bin/bash /root/start_wifi"
alias iomega='ssh -p 24 mongo@iomega'
alias snas='bash /home/mongo/snas'
alias knas='bash /home/mongo/knas'
alias b='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias b+='/bin/bash $HOME/scripts/lux.sh -a 5%'
alias b-='/bin/bash $HOME/scripts/lux.sh -s 5%'
#alias l='startx -- vt5'
alias l='startx'
alias t='exec tmux'
alias s='sway -d > $HOME/sway.log'
alias sr='SURFRAW_browser=$BROWSER surfraw'
alias dv='valgrind -v --log-file=log --tool=memcheck --leak-check=full ./scim; cat log;'
#alias dv='valgrind -v --log-file=log --leak-check=full --show-leak-kinds=all ./scim --debug a.sc; less log;'
#alias dv='rm -f log; valgrind -v --log-file=log --tool=memcheck --leak-check=full --show-leak-kinds=all ./scim --debug a.sc; cat log;'
#alias d='rm -f log; valgrind -v --log-file=log --tool=memcheck --leak-check=full ./scim --debug; less log;'
alias d="echo 'clear; gdb --tui tty=/dev/pts/4 --args ./scim'"



alias wl='GDK_BACKEND=wayland firefox'
#iwconfig wlp58s0
alias freebsd='qemu-system-x86_64 -m 4096M /mnt/ubuntu/FreeBSD-11.0-RELEASE-amd64.qcow2 -net nic,model=rtl8139 -net user -curses'





#-------------------- exports
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim
export BROWSER=/usr/bin/w3m
export XKB_DEFAULT_LAYOUT="us,us"
export XKB_DEFAULT_VARIANT="altgr-intl,"
export XKB_DEFAULT_OPTIONS="ctrl:swapcaps, terminate:ctrl_alt_bksp"
export WLC_REPEAT_DELAY=260
export WLC_REPEAT_RATE=40
export WLC_XWAYLAND=1
#export WLC_DRM_DEVICE=card1 sway
#export WLC_OUTPUTS=1
export GTK_CSD=1
#export GDK_BACKEND=wayland
#export SDL_VIDEODRIVER="aalib"
export RANGER_LOAD_DEFAULT_RC=FALSE


export ARDUINO_DIR=/usr/share/arduino
export ARDMK_DIR=/usr/share/arduino/
export AVR_TOOLS_DIR=/
export MONITOR_PORT=/dev/ttyUSB0
#Estas variables pueden ser modificadas luego en los distintos Makefile de cada proyecto.
export BOARD_TAG=pro
#descomentar siguiente para pro mini de 3.3v
export BOARD_SUB=8MHzatmega328
#export BOARD_SUB=16MHzatmega328


#-------------------- my apps
#apps:
#mousepad
#mupdf zathura? evince?
#fbi (en paquete fbida)
#rofi
#sxiv geeqie feh
#ranger pcmanfm thunar

#mocp (en paquete moc)
#cmus

#wifi-menu
#nmtui
#subtitleeditor
#wlc
#sway



#screenfetch -c 95,24

#cd
#cd /home/mongo/scim/src
