#!/bin/sh

for i in 1 2 3 4; do
    echo "$i"
    cat task_eana_myosotis.list > task_eana_test${i}.list
    echo ./backup -c -v -l./log -xxfs -nsmbfs -A eana -B test${i} -b /tmp/michelbackup -Z$((64*${i}))
    /usr/bin/time ./backup -c -v -l./log -xxfs -nsmbfs -A eana -B test${i} -b /tmp/michelbackup -Z$((64*${i}))
done
