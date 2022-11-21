; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_s3864 = global [2 x i8] c" \00"
@_s3865 = global i8* bitcast ([2 x i8]* @_s3864 to i8*)
@_s3871 = global [2 x i8] c" \00"
@_s3872 = global i8* bitcast ([2 x i8]* @_s3871 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3855 = alloca { i64, [0 x i64] }*
  %_i3857 = alloca i64
  %_argc3830 = alloca i64
  store i64 %argc, i64* %_argc3830
  %_argv3832 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3832
  %_raw_array3833 = call i64* @oat_alloc_array(i64 10)
  %_array3834 = bitcast i64* %_raw_array3833 to { i64, [0 x i64] }*
  %_gep3835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep3835
  %_gep3837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3837
  %_gep3839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep3839
  %_gep3841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep3841
  %_gep3843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep3843
  %_gep3845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep3845
  %_gep3847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep3847
  %_gep3849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3849
  %_gep3851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep3851
  %_gep3853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3834, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep3853
  store { i64, [0 x i64] }* %_array3834, { i64, [0 x i64] }** %_a3855
  store i64 0, i64* %_i3857
  %_a3859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3855
  %_3860 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3859)
  call void @print_string(i8* %_3860)
  %_a3862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3855
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3862, i64 0, i64 9)
  %_tmp3866 = load i8*, i8** @_s3865
  call void @print_string(i8* %_tmp3866)
  %_a3868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3855
  %_3869 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3868)
  call void @print_string(i8* %_3869)
  %_tmp3873 = load i8*, i8** @_s3872
  call void @print_string(i8* %_tmp3873)
  %_i3875 = load i64, i64* %_i3857
  ret i64 %_i3875
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_mid3801 = alloca i64
  %_a3796 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3796
  %_low3798 = alloca i64
  store i64 %low, i64* %_low3798
  %_high3800 = alloca i64
  store i64 %high, i64* %_high3800
  store i64 0, i64* %_mid3801
  %_low3803 = load i64, i64* %_low3798
  %_high3804 = load i64, i64* %_high3800
  %_bop3805 = icmp slt i64 %_low3803, %_high3804
  br i1 %_bop3805, label %_if3808, label %_else3807
_if3808:
  %_low3810 = load i64, i64* %_low3798
  %_high3811 = load i64, i64* %_high3800
  %_bop3812 = add i64 %_low3810, %_high3811
  %_bop3813 = lshr i64 %_bop3812, 1
  store i64 %_bop3813, i64* %_mid3801
  %_a3815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3796
  %_low3816 = load i64, i64* %_low3798
  %_mid3817 = load i64, i64* %_mid3801
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3815, i64 %_low3816, i64 %_mid3817)
  %_a3819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3796
  %_mid3820 = load i64, i64* %_mid3801
  %_bop3821 = add i64 %_mid3820, 1
  %_high3822 = load i64, i64* %_high3800
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3819, i64 %_bop3821, i64 %_high3822)
  %_a3824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3796
  %_low3825 = load i64, i64* %_low3798
  %_high3826 = load i64, i64* %_high3800
  %_mid3827 = load i64, i64* %_mid3801
  call void @merge({ i64, [0 x i64] }* %_a3824, i64 %_low3825, i64 %_high3826, i64 %_mid3827)
  br label %_after3806
_else3807:
  br label %_after3806
_after3806:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_i3664 = alloca i64
  %_j3666 = alloca i64
  %_k3668 = alloca i64
  %_c3672 = alloca { i64, [0 x i64] }*
  %_a3657 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3657
  %_low3659 = alloca i64
  store i64 %low, i64* %_low3659
  %_high3661 = alloca i64
  store i64 %high, i64* %_high3661
  %_mid3663 = alloca i64
  store i64 %mid, i64* %_mid3663
  store i64 0, i64* %_i3664
  store i64 0, i64* %_j3666
  store i64 0, i64* %_k3668
  %_raw_array3670 = call i64* @oat_alloc_array(i64 50)
  %_array3671 = bitcast i64* %_raw_array3670 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3671, { i64, [0 x i64] }** %_c3672
  %_low3674 = load i64, i64* %_low3659
  store i64 %_low3674, i64* %_i3664
  %_mid3676 = load i64, i64* %_mid3663
  %_bop3677 = add i64 %_mid3676, 1
  store i64 %_bop3677, i64* %_j3666
  %_low3679 = load i64, i64* %_low3659
  store i64 %_low3679, i64* %_k3668
  br label %_pre3689
_pre3689:
  %_i3681 = load i64, i64* %_i3664
  %_mid3682 = load i64, i64* %_mid3663
  %_bop3683 = icmp sle i64 %_i3681, %_mid3682
  %_j3684 = load i64, i64* %_j3666
  %_high3685 = load i64, i64* %_high3661
  %_bop3686 = icmp sle i64 %_j3684, %_high3685
  %_bop3687 = and i1 %_bop3683, %_bop3686
  %_cnd3691 = icmp eq i1 %_bop3687, 0
  br i1 %_cnd3691, label %_post3688, label %_body3690
_body3690:
  %_a3694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_i3695 = load i64, i64* %_i3664
  %_ptr3692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3694, i32 0, i32 1, i64 %_i3695
  %_resPtr3693 = load i64, i64* %_ptr3692
  %_a3698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_j3699 = load i64, i64* %_j3666
  %_ptr3696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3698, i32 0, i32 1, i64 %_j3699
  %_resPtr3697 = load i64, i64* %_ptr3696
  %_bop3700 = icmp slt i64 %_resPtr3693, %_resPtr3697
  br i1 %_bop3700, label %_if3703, label %_else3702
_if3703:
  %_a3721 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_i3722 = load i64, i64* %_i3664
  %_ptr3719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3721, i32 0, i32 1, i64 %_i3722
  %_resPtr3720 = load i64, i64* %_ptr3719
  %_c3723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3672
  %_k3724 = load i64, i64* %_k3668
  %_ptr3725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3723, i32 0, i32 1, i64 %_k3724
  store i64 %_resPtr3720, i64* %_ptr3725
  %_k3727 = load i64, i64* %_k3668
  %_bop3728 = add i64 %_k3727, 1
  store i64 %_bop3728, i64* %_k3668
  %_i3730 = load i64, i64* %_i3664
  %_bop3731 = add i64 %_i3730, 1
  store i64 %_bop3731, i64* %_i3664
  br label %_after3701
_else3702:
  %_a3707 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_j3708 = load i64, i64* %_j3666
  %_ptr3705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3707, i32 0, i32 1, i64 %_j3708
  %_resPtr3706 = load i64, i64* %_ptr3705
  %_c3709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3672
  %_k3710 = load i64, i64* %_k3668
  %_ptr3711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3709, i32 0, i32 1, i64 %_k3710
  store i64 %_resPtr3706, i64* %_ptr3711
  %_k3713 = load i64, i64* %_k3668
  %_bop3714 = add i64 %_k3713, 1
  store i64 %_bop3714, i64* %_k3668
  %_j3716 = load i64, i64* %_j3666
  %_bop3717 = add i64 %_j3716, 1
  store i64 %_bop3717, i64* %_j3666
  br label %_after3701
_after3701:
  br label %_pre3689
_post3688:
  br label %_pre3737
_pre3737:
  %_i3733 = load i64, i64* %_i3664
  %_mid3734 = load i64, i64* %_mid3663
  %_bop3735 = icmp sle i64 %_i3733, %_mid3734
  %_cnd3739 = icmp eq i1 %_bop3735, 0
  br i1 %_cnd3739, label %_post3736, label %_body3738
_body3738:
  %_a3742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_i3743 = load i64, i64* %_i3664
  %_ptr3740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3742, i32 0, i32 1, i64 %_i3743
  %_resPtr3741 = load i64, i64* %_ptr3740
  %_c3744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3672
  %_k3745 = load i64, i64* %_k3668
  %_ptr3746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3744, i32 0, i32 1, i64 %_k3745
  store i64 %_resPtr3741, i64* %_ptr3746
  %_k3748 = load i64, i64* %_k3668
  %_bop3749 = add i64 %_k3748, 1
  store i64 %_bop3749, i64* %_k3668
  %_i3751 = load i64, i64* %_i3664
  %_bop3752 = add i64 %_i3751, 1
  store i64 %_bop3752, i64* %_i3664
  br label %_pre3737
_post3736:
  br label %_pre3758
_pre3758:
  %_j3754 = load i64, i64* %_j3666
  %_high3755 = load i64, i64* %_high3661
  %_bop3756 = icmp sle i64 %_j3754, %_high3755
  %_cnd3760 = icmp eq i1 %_bop3756, 0
  br i1 %_cnd3760, label %_post3757, label %_body3759
_body3759:
  %_a3763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_j3764 = load i64, i64* %_j3666
  %_ptr3761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3763, i32 0, i32 1, i64 %_j3764
  %_resPtr3762 = load i64, i64* %_ptr3761
  %_c3765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3672
  %_k3766 = load i64, i64* %_k3668
  %_ptr3767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3765, i32 0, i32 1, i64 %_k3766
  store i64 %_resPtr3762, i64* %_ptr3767
  %_k3769 = load i64, i64* %_k3668
  %_bop3770 = add i64 %_k3769, 1
  store i64 %_bop3770, i64* %_k3668
  %_j3772 = load i64, i64* %_j3666
  %_bop3773 = add i64 %_j3772, 1
  store i64 %_bop3773, i64* %_j3666
  br label %_pre3758
_post3757:
  %_low3775 = load i64, i64* %_low3659
  store i64 %_low3775, i64* %_i3664
  br label %_pre3781
_pre3781:
  %_i3777 = load i64, i64* %_i3664
  %_k3778 = load i64, i64* %_k3668
  %_bop3779 = icmp slt i64 %_i3777, %_k3778
  %_cnd3783 = icmp eq i1 %_bop3779, 0
  br i1 %_cnd3783, label %_post3780, label %_body3782
_body3782:
  %_c3786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3672
  %_i3787 = load i64, i64* %_i3664
  %_ptr3784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3786, i32 0, i32 1, i64 %_i3787
  %_resPtr3785 = load i64, i64* %_ptr3784
  %_a3788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3657
  %_i3789 = load i64, i64* %_i3664
  %_ptr3790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3788, i32 0, i32 1, i64 %_i3789
  store i64 %_resPtr3785, i64* %_ptr3790
  %_i3792 = load i64, i64* %_i3664
  %_bop3793 = add i64 %_i3792, 1
  store i64 %_bop3793, i64* %_i3664
  br label %_pre3781
_post3780:
  ret void
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
