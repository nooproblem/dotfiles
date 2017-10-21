#!/bin/bash
chmod 777 /dev/tty*
modprobe i8k force=1
chmod 777 /dev/snd/*

echo "10m" > /sys/devices/platform/dell-laptop/leds/dell::kbd_backlight/stop_timeout
