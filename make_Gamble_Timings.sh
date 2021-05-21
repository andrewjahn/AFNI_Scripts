#!/bin/bash

#Check whether the file subjList.txt exists; if not, create it
if [ ! -f subjList.txt ]; then
	ls | grep ^sub- > subjList.txt
fi

#Loop over all subjects and format timing files into FSL format
for subj in `cat subjList.txt`; do
	cd $subj/func
	cat ${subj}_task-mixedgamblestask_run-01_events.tsv | awk 'NR>1 {print $1"*"$5","$3}' > gamble_Timings.1D
	cat ${subj}_task-mixedgamblestask_run-02_events.tsv | awk 'NR>1 {print $1+480"*"$5","$3}' >> gamble_Timings.1D
	cat ${subj}_task-mixedgamblestask_run-03_events.tsv | awk 'NR>1 {print $1+960"*"$5","$3}' >> gamble_Timings.1D

	cd ../..

done
