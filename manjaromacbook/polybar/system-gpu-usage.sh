#!/bin/sh

radeontop -l 1 -d - | grep gpu | awk '{print substr($5, 1, length($5)-5)}'
#nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits
