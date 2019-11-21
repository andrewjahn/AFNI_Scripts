#!/usr/bin/env tcsh

# created by uber_subject.py: version 1.2 (April 5, 2018)
# creation date: Mon Nov 18 12:30:05 2019

# set subject and group identifiers
set subj  = sub_08
set gname = Flanker

# set data directories
set top_dir = ${PWD}/sub-08
set anat_dir  = $top_dir/anat
set epi_dir   = $top_dir/func
set stim_dir  = $top_dir/func

# run afni_proc.py to create a single subject processing script
afni_proc.py -subj_id $subj                                      \
        -script proc.$subj -scr_overwrite                        \
        -blocks tshift align tlrc volreg blur mask scale regress \
        -copy_anat $anat_dir/sub-08_T1w.nii.gz                   \
        -dsets                                                   \
            $epi_dir/sub-08_task-flanker_run-1_bold.nii.gz       \
            $epi_dir/sub-08_task-flanker_run-2_bold.nii.gz       \
        -tcat_remove_first_trs 0                                 \
        -align_opts_aea -giant_move                              \
        -tlrc_base MNI_avg152T1+tlrc                             \
        -volreg_align_to MIN_OUTLIER                             \
        -volreg_align_e2a                                        \
        -volreg_tlrc_warp                                        \
        -blur_size 4.0                                           \
        -regress_stim_times                                      \
            $stim_dir/congruent.1D                               \
            $stim_dir/incongruent.1D                             \
        -regress_stim_labels                                     \
            congruent incongruent                                \
        -regress_basis 'GAM'                                     \
        -regress_censor_motion 0.3                               \
        -regress_motion_per_run                                  \
        -regress_opts_3dD                                        \
            -jobs 8                                              \
            -gltsym 'SYM: incongruent -congruent' -glt_label 1   \
        incongruent-congruent                                    \
            -gltsym 'SYM: congruent -incongruent' -glt_label 2   \
        congruent-incongruent                                    \
        -regress_reml_exec                                       \
        -regress_make_ideal_sum sum_ideal.1D                     \
        -regress_est_blur_epits                                  \
        -regress_est_blur_errts                                  \
        -regress_run_clustsim no

