#!/bin/tcsh

#Left Hemisphere

set dirA = $PWD

# specify and possibly create results directory
set results_dir = test.results
if ( ! -d $results_dir ) mkdir $results_dir

# ------------------------- process the data -------------------------

3dttest++ -prefix $results_dir/Flanker_Inc-Con_ttest.lh.niml.dset               \
        -setA Inc-Con                                            \
           01 "$dirA/sub-01/sub-01.results_SUMA/stats.sub-01.lh.niml.dset[10]" \
           02 "$dirA/sub-02/sub-02.results_SUMA/stats.sub-02.lh.niml.dset[10]" \
           03 "$dirA/sub-03/sub-03.results_SUMA/stats.sub-03.lh.niml.dset[10]" \
           04 "$dirA/sub-04/sub-04.results_SUMA/stats.sub-04.lh.niml.dset[10]" \
           05 "$dirA/sub-05/sub-05.results_SUMA/stats.sub-05.lh.niml.dset[10]" \
           06 "$dirA/sub-06/sub-06.results_SUMA/stats.sub-06.lh.niml.dset[10]" \
           07 "$dirA/sub-07/sub-07.results_SUMA/stats.sub-07.lh.niml.dset[10]" \
           08 "$dirA/sub-08/sub-08.results_SUMA/stats.sub-08.lh.niml.dset[10]" \
           09 "$dirA/sub-09/sub-09.results_SUMA/stats.sub-09.lh.niml.dset[10]" \
           10 "$dirA/sub-10/sub-10.results_SUMA/stats.sub-10.lh.niml.dset[10]" \
           11 "$dirA/sub-11/sub-11.results_SUMA/stats.sub-11.lh.niml.dset[10]" \
           12 "$dirA/sub-12/sub-12.results_SUMA/stats.sub-12.lh.niml.dset[10]" \
           13 "$dirA/sub-13/sub-13.results_SUMA/stats.sub-13.lh.niml.dset[10]" \
           14 "$dirA/sub-14/sub-14.results_SUMA/stats.sub-14.lh.niml.dset[10]" \
           15 "$dirA/sub-15/sub-15.results_SUMA/stats.sub-15.lh.niml.dset[10]" \
           16 "$dirA/sub-16/sub-16.results_SUMA/stats.sub-16.lh.niml.dset[10]" \
           17 "$dirA/sub-17/sub-17.results_SUMA/stats.sub-17.lh.niml.dset[10]" \
           18 "$dirA/sub-18/sub-18.results_SUMA/stats.sub-18.lh.niml.dset[10]" \
           19 "$dirA/sub-19/sub-19.results_SUMA/stats.sub-19.lh.niml.dset[10]" \
           20 "$dirA/sub-20/sub-20.results_SUMA/stats.sub-20.lh.niml.dset[10]" \
           21 "$dirA/sub-21/sub-21.results_SUMA/stats.sub-21.lh.niml.dset[10]" \
           22 "$dirA/sub-22/sub-22.results_SUMA/stats.sub-22.lh.niml.dset[10]" \
           23 "$dirA/sub-23/sub-23.results_SUMA/stats.sub-23.lh.niml.dset[10]" \
           24 "$dirA/sub-24/sub-24.results_SUMA/stats.sub-24.lh.niml.dset[10]" \
           25 "$dirA/sub-25/sub-25.results_SUMA/stats.sub-25.lh.niml.dset[10]" \
           26 "$dirA/sub-26/sub-26.results_SUMA/stats.sub-26.lh.niml.dset[10]"

#Right Hemisphere

 3dttest++ -prefix $results_dir/Flanker_Inc-Con_ttest.rh.niml.dset               \
        -setA Inc-Con                                            \
           01 "$dirA/sub-01/sub-01.results_SUMA/stats.sub-01.rh.niml.dset[10]" \
           02 "$dirA/sub-02/sub-02.results_SUMA/stats.sub-02.rh.niml.dset[10]" \
           03 "$dirA/sub-03/sub-03.results_SUMA/stats.sub-03.rh.niml.dset[10]" \
           04 "$dirA/sub-04/sub-04.results_SUMA/stats.sub-04.rh.niml.dset[10]" \
           05 "$dirA/sub-05/sub-05.results_SUMA/stats.sub-05.rh.niml.dset[10]" \
           06 "$dirA/sub-06/sub-06.results_SUMA/stats.sub-06.rh.niml.dset[10]" \
           07 "$dirA/sub-07/sub-07.results_SUMA/stats.sub-07.rh.niml.dset[10]" \
           08 "$dirA/sub-08/sub-08.results_SUMA/stats.sub-08.rh.niml.dset[10]" \
           09 "$dirA/sub-09/sub-09.results_SUMA/stats.sub-09.rh.niml.dset[10]" \
           10 "$dirA/sub-10/sub-10.results_SUMA/stats.sub-10.rh.niml.dset[10]" \
           11 "$dirA/sub-11/sub-11.results_SUMA/stats.sub-11.rh.niml.dset[10]" \
           12 "$dirA/sub-12/sub-12.results_SUMA/stats.sub-12.rh.niml.dset[10]" \
           13 "$dirA/sub-13/sub-13.results_SUMA/stats.sub-13.rh.niml.dset[10]" \
           14 "$dirA/sub-14/sub-14.results_SUMA/stats.sub-14.rh.niml.dset[10]" \
           15 "$dirA/sub-15/sub-15.results_SUMA/stats.sub-15.rh.niml.dset[10]" \
           16 "$dirA/sub-16/sub-16.results_SUMA/stats.sub-16.rh.niml.dset[10]" \
           17 "$dirA/sub-17/sub-17.results_SUMA/stats.sub-17.rh.niml.dset[10]" \
           18 "$dirA/sub-18/sub-18.results_SUMA/stats.sub-18.rh.niml.dset[10]" \
           19 "$dirA/sub-19/sub-19.results_SUMA/stats.sub-19.rh.niml.dset[10]" \
           20 "$dirA/sub-20/sub-20.results_SUMA/stats.sub-20.rh.niml.dset[10]" \
           21 "$dirA/sub-21/sub-21.results_SUMA/stats.sub-21.rh.niml.dset[10]" \
           22 "$dirA/sub-22/sub-22.results_SUMA/stats.sub-22.rh.niml.dset[10]" \
           23 "$dirA/sub-23/sub-23.results_SUMA/stats.sub-23.rh.niml.dset[10]" \
           24 "$dirA/sub-24/sub-24.results_SUMA/stats.sub-24.rh.niml.dset[10]" \
           25 "$dirA/sub-25/sub-25.results_SUMA/stats.sub-25.rh.niml.dset[10]" \
           26 "$dirA/sub-26/sub-26.results_SUMA/stats.sub-26.rh.niml.dset[10]"
