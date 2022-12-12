#! /bin/sh

bspc $1 $2 $(bspc query -M -m focused.focused --names):\^$3
