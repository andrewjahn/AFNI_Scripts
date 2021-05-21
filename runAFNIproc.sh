#!/bin/tcsh
set subj = $argv[1]

 afni_proc.py -subj_id ${subj} -script proc.${subj} -scr_overwrite -blocks tshift                                                  \
     align tlrc volreg blur mask scale regress -copy_anat                                                                  \
     $PWD/{$subj}/anat/{$subj}_T1w.nii.gz                     \
     -dsets                                                                                                                \
     $PWD/{$subj}/func/{$subj}_task-mixedgamblestask_run-01_bold.nii.gz \
     $PWD/{$subj}/func/{$subj}_task-mixedgamblestask_run-02_bold.nii.gz \
     $PWD/{$subj}/func/{$subj}_task-mixedgamblestask_run-03_bold.nii.gz \
     -tcat_remove_first_trs 0 -align_opts_aea -giant_move -tlrc_base                                                       \
     MNI_avg152T1+tlrc -volreg_align_to MIN_OUTLIER -volreg_align_e2a                                                      \
     -volreg_tlrc_warp -blur_size 4.0 -regress_stim_times                                                                  \
     $PWD/{$subj}/func/gamble_Timings.1D                          \
     -regress_stim_labels Gamble -regress_stim_types AM2 -regress_basis 'BLOCK(3,1)'     \
     -regress_censor_motion 0.3 -regress_motion_per_run -regress_opts_3dD                                                  \
     -jobs 8 -regress_make_ideal_sum sum_ideal.1D                                                  \
     -regress_run_clustsim no

tcsh proc.${subj}
