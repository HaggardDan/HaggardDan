#!/bin/sh

#cat /proc/cpuinfo | grep "^[c]pu MHz" | awk '{s+=$4} END {printf "%.0f\n", s / 48}'
cat /proc/cpuinfo | grep "^[c]pu MHz" | awk '{s+=$4; ssq += ($4)^2; ++n} END {printf "%4.0f MHz σ%-3.0f\n", s / n, sqrt((1/n)*(ssq-((s^2)/n)))}'
