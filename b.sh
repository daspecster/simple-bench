#!/bin/bash

loops=$1
shift;
command="$@"
prog="for i in $(eval echo {1..$loops}); do echo $command; $command >> /dev/null; done"
fmt="times = { user = %U, system = %S, elapsed = %E } memory = {average memory used =  %K, times swapped out of memory = %W} CPU = { Percentage of CPU that got this job = %P }}"

/usr/bin/time -f "$fmt" $(eval $prog) >> /dev/null
