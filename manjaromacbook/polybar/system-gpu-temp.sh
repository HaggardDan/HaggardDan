#!/bin/sh

sensors | grep radeon -A 2 | grep temp1 | awk '{print substr($2,2, length($2)-5)}'

