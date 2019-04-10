#!/bin/sh

cat /proc/cpuinfo | grep "^[c]pu MHz" | awk '{s+=$4} END {printf "%.0f\n", s / 48}'
