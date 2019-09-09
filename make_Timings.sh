#!/bin/bash


#Check whether the file subjList.txt exists; if not, create it
if [ ! -f subjList.txt ]; then
	ls | grep ^sub- > subjList.txt
fi

#Loop over all subjects and format timing files into FSL format
for subj in `cat subjList.txt`; do
	cd $subj/func
	cat ${subj}_task-flanker_run-1_events.tsv | awk '{if ($3=="incongruent_correct") {print $1, $2, 1}}' > incongruent_run1.txt
	cat ${subj}_task-flanker_run-1_events.tsv | awk '{if ($3=="congruent_correct") {print $1, $2, 1}}' > congruent_run1.txt

	cat ${subj}_task-flanker_run-2_events.tsv | awk '{if ($3=="incongruent_correct") {print $1, $2, 1}}' > incongruent_run2.txt
	cat ${subj}_task-flanker_run-2_events.tsv | awk '{if ($3=="congruent_correct") {print $1, $2, 1}}' > congruent_run2.txt

#Now convert to AFNI format
	timing_tool.py -fsl_timing_files congruent*.txt -write_timing congruent.1D
	timing_tool.py -fsl_timing_files incongruent*.txt -write_timing incongruent.1D

	cd ../..

done
