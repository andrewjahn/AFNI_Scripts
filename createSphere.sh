#!/bin/bash

# Written by Andrew Jahn, University of Michigan, 03.25.2019

display_usage() {
	echo "$(basename $0) [sphere radius] [master dataset] [x] [y] [z] [ROI name]"
	echo "This script creates a sphere for ROI analysis. It requires 6 arguments:
		1) The size of the radius of the sphere;
		2) A master dataset, which determines the dimensions and voxel resolution of the ROI [I recommend using the 			errts file created by 3dDeconvolve];
		3-5) X, Y, and Z coordinates (assumed to be MNI and in LPI orientation);
		6) A label for the ROI"
		
		This command also creates a time series from the ROI, labeled [ROI name]_TimeSeries.txt
	}

	if [ $# -le 5 ]
	then
		display_usage
		exit 1
	fi


SRAD=$1
MASTER=$2
X=$3
Y=$4
Z=$5
OUTPUT=$6

##################
# Create the ROI #
##################

echo $X $Y $Z | 3dUndump -prefix $OUTPUT -srad $SRAD -orient LPI -master $MASTER -xyz -


#######################################
# Extract the timeseries from the ROI #
#######################################

3dmaskave -quiet -mask $OUTPUT $MASTER > ${OUTPUT}_TimeSeries.txt

#Examines the timeseries using 1dplot

1dplot ${OUTPUT}_TimeSeries.txt


####################################
# Functional connectivity analysis #
####################################

3dfim+ -bucket ${OUTPUT}_corr -out Correlation -ideal_file ${OUTPUT}_TimeSeries.txt -input $MASTER

#Converts the correlation map to a z-map

3dcalc -a ${OUTPUT}_corr -expr 'atanh(a)' -prefix ${OUTPUT}_corr_r2z
