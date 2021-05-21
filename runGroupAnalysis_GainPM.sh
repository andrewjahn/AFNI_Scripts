  #!/bin/tcsh -xef

  # created by uber_ttest.py: version 2.0 (December 28, 2017)
  # creation date: Wed Feb 19 11:33:21 2020

  # ---------------------- set process variables ----------------------

  set mask_dset = $PWD/sub-01.results/mask_group+tlrc

  set dirA = $PWD

  # specify and possibly create results directory
  set results_dir = test.results_GainPM
  if ( ! -d $results_dir ) mkdir $results_dir

  # ------------------------- process the data -------------------------

  3dttest++ -prefix $results_dir/GainPM                     \
          -mask $mask_dset                                         \
          -setA GainPM                                           \
             01 "$dirA/sub-01.results/stats.sub-01+tlrc[3]" \
             02 "$dirA/sub-02.results/stats.sub-02+tlrc[3]" \
             03 "$dirA/sub-03.results/stats.sub-03+tlrc[3]" \
             04 "$dirA/sub-04.results/stats.sub-04+tlrc[3]" \
             05 "$dirA/sub-05.results/stats.sub-05+tlrc[3]" \
             06 "$dirA/sub-06.results/stats.sub-06+tlrc[3]" \
             07 "$dirA/sub-07.results/stats.sub-07+tlrc[3]" \
             08 "$dirA/sub-08.results/stats.sub-08+tlrc[3]" \
             09 "$dirA/sub-09.results/stats.sub-09+tlrc[3]" \
             10 "$dirA/sub-10.results/stats.sub-10+tlrc[3]" \
             11 "$dirA/sub-11.results/stats.sub-11+tlrc[3]" \
             12 "$dirA/sub-12.results/stats.sub-12+tlrc[3]" \
             13 "$dirA/sub-13.results/stats.sub-13+tlrc[3]" \
             14 "$dirA/sub-14.results/stats.sub-14+tlrc[3]" \
             15 "$dirA/sub-15.results/stats.sub-15+tlrc[3]" \
             16 "$dirA/sub-16.results/stats.sub-16+tlrc[3]" 
