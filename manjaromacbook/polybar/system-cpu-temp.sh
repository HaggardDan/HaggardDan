#!/bin/sh

sensors | grep Core | awk '{s+=substr($3, 2, length($3)-3)} {++n} END {printf "%.0f\n", s/n}'
