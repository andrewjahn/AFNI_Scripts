#!/bin/bash

# Written by Andrew Jahn, 09.12.2019
# For use with the SUMA part of the AFNI short course, found here:
# https://andysbrainbook.readthedocs.io/en/latest/AFNI/AFNI_Short_Course/AFNI_09_SurfaceAnalysis.html

 # Check whether the file "subjList.txt" exists; if it doesn't, create a file containing all of the subject names in our study 

if [ ! -f subjList.txt ]; then
   ls .. | grep ^sub- > subjList.txt
fi

# Copy each subject's anatomical file into the current directory, unzip the file, and set the current directory as FreeSurfer's SUBJECTS_DIR. Then process each of the anatomical files with recon-all using the "parallel" command

for sub in `cat subjList.txt`; do
    cp ../${sub}/anat/*.gz .
done

gunzip *.gz

SUBJECTS_DIR=`pwd`

ls *.nii | parallel --jobs 8 recon-all -s {.} -i {} -all -qcache

# Clean up

rm *.nii
