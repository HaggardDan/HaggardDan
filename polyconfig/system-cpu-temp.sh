#!/bin/sh

sensors | grep Tdie | awk '{s+=substr($2, 2, length($2)-4)} {++n} END {printf "%.0f\n", s/n}'
