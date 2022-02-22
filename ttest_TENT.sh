#!/bin/tcsh -xef

# created by uber_ttest.py: version 2.0 (December 28, 2017)
# creation date: Wed Feb 19 11:33:21 2020

# ---------------------- set process variables ----------------------

set mask_dset = $PWD/sub-01/sub-01.results/mask_group+tlrc

set dirA = $PWD

# specify and possibly create results directory
set results_dir = test.results_6s-0s
if ( ! -d $results_dir ) mkdir $results_dir

# ------------------------- process the data -------------------------

3dttest++ -prefix $results_dir/results_6s-0s -paired                    \
        -mask $mask_dset                                         \
        -setA SixSeconds                                           \
           01 "$dirA/sub-01/sub-01.results/stats.sub-01+tlrc[7]" \
           02 "$dirA/sub-02/sub-02.results/stats.sub-02+tlrc[7]" \
           03 "$dirA/sub-03/sub-03.results/stats.sub-03+tlrc[7]" \
           04 "$dirA/sub-04/sub-04.results/stats.sub-04+tlrc[7]" \
           05 "$dirA/sub-05/sub-05.results/stats.sub-05+tlrc[7]" \
           06 "$dirA/sub-06/sub-06.results/stats.sub-06+tlrc[7]" \
           07 "$dirA/sub-07/sub-07.results/stats.sub-07+tlrc[7]" \
           08 "$dirA/sub-08/sub-08.results/stats.sub-08+tlrc[7]" \
           09 "$dirA/sub-09/sub-09.results/stats.sub-09+tlrc[7]" \
           10 "$dirA/sub-10/sub-10.results/stats.sub-10+tlrc[7]" \
           11 "$dirA/sub-11/sub-11.results/stats.sub-11+tlrc[7]" \
           12 "$dirA/sub-12/sub-12.results/stats.sub-12+tlrc[7]" \
           13 "$dirA/sub-13/sub-13.results/stats.sub-13+tlrc[7]" \
           14 "$dirA/sub-14/sub-14.results/stats.sub-14+tlrc[7]" \
        -setB ZeroSeconds                                           \
           01 "$dirA/sub-01/sub-01.results/stats.sub-01+tlrc[1]" \
           02 "$dirA/sub-02/sub-02.results/stats.sub-02+tlrc[1]" \
           03 "$dirA/sub-03/sub-03.results/stats.sub-03+tlrc[1]" \
           04 "$dirA/sub-04/sub-04.results/stats.sub-04+tlrc[1]" \
           05 "$dirA/sub-05/sub-05.results/stats.sub-05+tlrc[1]" \
           06 "$dirA/sub-06/sub-06.results/stats.sub-06+tlrc[1]" \
           07 "$dirA/sub-07/sub-07.results/stats.sub-07+tlrc[1]" \
           08 "$dirA/sub-08/sub-08.results/stats.sub-08+tlrc[1]" \
           09 "$dirA/sub-09/sub-09.results/stats.sub-09+tlrc[1]" \
           10 "$dirA/sub-10/sub-10.results/stats.sub-10+tlrc[1]" \
           11 "$dirA/sub-11/sub-11.results/stats.sub-11+tlrc[1]" \
           12 "$dirA/sub-12/sub-12.results/stats.sub-12+tlrc[1]" \
           13 "$dirA/sub-13/sub-13.results/stats.sub-13+tlrc[1]" \
           14 "$dirA/sub-14/sub-14.results/stats.sub-14+tlrc[1]"
