  #!/bin/tcsh -xef

  # created by uber_ttest.py: version 2.0 (December 28, 2017)
  # creation date: Wed Feb 19 11:33:21 2020

  # ---------------------- set process variables ----------------------

  set mask_dset = $PWD/sub-01.results/mask_group+tlrc

  set dirA = $PWD

  # specify and possibly create results directory
  set results_dir = test.results_LossPM
  if ( ! -d $results_dir ) mkdir $results_dir

  # ------------------------- process the data -------------------------

  3dttest++ -prefix $results_dir/LossPM                     \
          -mask $mask_dset                                         \
          -setA LossPM                                           \
             01 "$dirA/sub-01.results/stats.sub-01+tlrc[5]" \
             02 "$dirA/sub-02.results/stats.sub-02+tlrc[5]" \
             03 "$dirA/sub-03.results/stats.sub-03+tlrc[5]" \
             04 "$dirA/sub-04.results/stats.sub-04+tlrc[5]" \
             05 "$dirA/sub-05.results/stats.sub-05+tlrc[5]" \
             06 "$dirA/sub-06.results/stats.sub-06+tlrc[5]" \
             07 "$dirA/sub-07.results/stats.sub-07+tlrc[5]" \
             08 "$dirA/sub-08.results/stats.sub-08+tlrc[5]" \
             09 "$dirA/sub-09.results/stats.sub-09+tlrc[5]" \
             10 "$dirA/sub-10.results/stats.sub-10+tlrc[5]" \
             11 "$dirA/sub-11.results/stats.sub-11+tlrc[5]" \
             12 "$dirA/sub-12.results/stats.sub-12+tlrc[5]" \
             13 "$dirA/sub-13.results/stats.sub-13+tlrc[5]" \
             14 "$dirA/sub-14.results/stats.sub-14+tlrc[5]" \
             15 "$dirA/sub-15.results/stats.sub-15+tlrc[5]" \
             16 "$dirA/sub-16.results/stats.sub-16+tlrc[5]" 
