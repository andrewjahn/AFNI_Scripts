#!/bin/bash

#This script extracts the betas for use with 3dmaskave for an ROI analysis
#Replace the number in the brackets with the sub-brik indicating the beta you wish to extract, and change the name of the output dataset as well

for subj in `cat subjList.txt`; do
	3dbucket -aglueto Congruent_betas+tlrc.HEAD ${subj}/${subj}.results/stats.${subj}+tlrc'[1]'
	3dbucket -aglueto Incongruent_betas+tlrc.HEAD ${subj}/${subj}.results/stats.${subj}+tlrc'[4]'
done
