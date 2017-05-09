echo HOLA MONGO !!

#export TERM=xterm-256color
#export TERM=screen-256color
#export TERM=fbterm



#if [ "$TMUX_PANE" ] ; then
   #elif [ "$XDG_VTNR" == 1 ] || [[ -z "$XDG_VTNR" ]]; then
   #elif [ "$SHLVL" == 1 ] || [[ -z "$SHLVL" ]]; then
      sudo /bin/bash -c 'echo 0 > /sys/class/graphics/fbcon/cursor_blink'
#else
#      sudo /bin/bash -c 'echo 1 > /sys/class/graphics/fbcon/cursor_blink'
#fi





LS_COLORS=$LS_COLORS:'di=0;33:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'ln=0;35:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'ex=0;35:' ; export LS_COLORS

#####################################################################
#export PS1='\e[0;31m\u@\h\e[m \e[0;35m$(pwd)\e[m \$ '

# with 256 colors but with wrap problem!
#export PS1='\e[38;05;203m\u@\h\e[m \e[38;05;217m$(pwd)\e[m \$ '

# without colors and without wrap problem!
##export PS1='\u@\h $(pwd) \$ '

red=$(tput setaf 203)
brown=$(tput setaf 87)
bold=$(tput bold)
reset=$(tput sgr0)
export PS1='\[$red\]\u@\h\[$reset\]:\[$brown\]$(pwd)\[$reset\] \$ '
#####################################################################


#aliases
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
#alias dv='valgrind -v --log-file=log --tool=memcheck --leak-check=full --show-reachable=yes ./scim; less log;'
#alias dv='valgrind -v --log-file=log --leak-check=full --show-leak-kinds=all ./scim --debug a.sc; less log;'
alias dv='rm -f log; valgrind -v --log-file=log --tool=memcheck --leak-check=full ./scim --debug a.sc; cat log;'
#alias d='rm -f log; valgrind -v --log-file=log --tool=memcheck --leak-check=full ./scim --debug; less log;'
alias d="echo 'clear; gdb --tui tty=/dev/pts/4 --args ./scim'"


export LC_CTYPE=en_US.UTF-8
export EDITOR=vim
export BROWSER=/usr/bin/w3m
export XKB_DEFAULT_LAYOUT="us,us"
export XKB_DEFAULT_VARIANT="altgr-intl,"
export XKB_DEFAULT_OPTIONS="ctrl:swapcaps, terminate:ctrl_alt_bksp"
export WLC_REPEAT_DELAY=260
export WLC_REPEAT_RATE=40
export WLC_XWAYLAND=0
#export WLC_DRM_DEVICE=card1 sway
#export WLC_OUTPUTS=1
export GTK_CSD=0
#export GDK_BACKEND=wayland

#export SDL_VIDEODRIVER="aalib"
set -o vi
bind '"kj":vi-movement-mode'

#apps:
#sxiv
#mupdf
#fbi (en paquete fbida)
#mocp (en paquete moc)
#cmus
#rofi
#wifi-menu
#subtitleeditor
#wlc
#sway

screenfetch -c 95,24

#cd /home/mongo/scim/src
alias wl='GDK_BACKEND=wayland firefox'
#iwconfig wlp58s0
alias freebsd='qemu-system-x86_64 -m 4096M /mnt/ubuntu/FreeBSD-11.0-RELEASE-amd64.qcow2 -net nic,model=rtl8139 -net user -curses'
