#!/bin/sh

nvidia-smi --query-gpu=clocks.current.graphics --format=csv,noheader,nounits
