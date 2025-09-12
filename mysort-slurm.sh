#!/bin/bash
find ./mountains -maxdepth 1 -type d -name 'channel*' | sort > chs.txt

find ./mountains -type f -path './mountains/channel*/output/firings.mda' | cut -d'/' -f3 | sort -u > spk_done.txt

cut -d'/' -f3 chs.txt | sort > all_names.txt
comm -23 all_names.txt spk_done.txt > missing_names.txt

grep -F -f missing_names.txt chs.txt > missing-spike-chs.txt
