#!/bin/tcsh

# set subject and group identifiers
set subj  = sub-08
set gname = Flanker

# set data directories
set top_dir = /Users/ajahn/Desktop/${gname}/sub-08
set anat_dir  = $top_dir/anat
set epi_dir   = $top_dir/func
set stim_dir  = $top_dir/func

# run afni_proc.py to create a single subject processing script
afni_proc.py -subj_id $subj                                            \
-script proc.$subj -scr_overwrite                              \
-blocks tshift align tlrc volreg surf blur scale regress       \
-copy_anat $anat_dir/sub-08_T1w.nii.gz                         \
-dsets                                                         \
$epi_dir/sub-08_task-flanker_run-1_bold.nii.gz             \
$epi_dir/sub-08_task-flanker_run-2_bold.nii.gz             \
-tcat_remove_first_trs 0                                       \
-align_opts_aea -giant_move                                    \
-tlrc_base MNI_avg152T1+tlrc                                   \
-volreg_align_to MIN_OUTLIER                                   \
-volreg_align_e2a                                              \
-volreg_tlrc_warp                                              \
-surf_anat ~/Desktop/Flanker/FS/sub-08_T1w/surf/SUMA/sub-08_SurfVol+orig     \
-surf_spec ~/Desktop/Flanker/FS/sub-08_T1w/surf/SUMA/std.141.sub-08_?h.spec  \
-blur_size 4.0                                                 \
-regress_stim_times                                            \
$stim_dir/congruent.1D                                     \
$stim_dir/incongruent.1D                                   \
-regress_stim_labels congruent incongruent                              \
-regress_basis 'GAM'                                         \
-regress_censor_motion 0.3                                     \
-regress_motion_per_run                                        \
-regress_opts_3dD                                              \
-jobs 8                                                    \
-gltsym 'SYM: congruent -incongruent' -glt_label 1 Con-Inc \
-gltsym 'SYM: incongruent -congruent' -glt_label 2 Inc-Con \
-regress_reml_exec                                             \
-regress_make_ideal_sum sum_ideal.1D
