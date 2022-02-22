#!/bin/bash

#Check whether the file subjList.txt exists; if not, create it
if [ ! -f subjList.txt ]; then
        ls -d sub-?? > subjList.txt
fi

#Loop over all subjects and format timing files into FSL format
for subj in `cat subjList.txt` ; do
        cd $subj/func #Navigate to the subject's func directory, which contains the timing files
        
        #Extract onset times for tone count and probe
        cat ${subj}_task-tonecounting_events.tsv | awk '{if (NR!=1 && $5=="") {print $1}}' > tone_counting_onset_times.txt
        cat ${subj}_task-tonecounting_events.tsv | awk '{if ($5=="probe") {print $1}}' > tone_counting_probe_onsets.txt

        cd ../..
done
