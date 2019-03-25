#!/bin/bash

# Written by Andrew Jahn, University of Michigan, 03.25.2019

display_usage() {
	echo "$(basename $0) [sphere radius] [master dataset] [x] [y] [z] [ROI name]"
	echo "This script creates a sphere for ROI analysis. It requires 6 arguments:
		1) The size of the radius of the sphere;
		2) A master dataset, which determines the dimensions and voxel resolution of the ROI;
		3-5) X, Y, and Z coordinates (assumed to be MNI and in LPI orientation);
		6) A label for the ROI"
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

echo $X $Y $Z | 3dUndump -prefix $OUTPUT -srad $SRAD -orient LPI -master $MASTER -xyz -
