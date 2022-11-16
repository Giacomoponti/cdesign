; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3760 = alloca i64
  %_y3762 = alloca i64
  store i64 %y, i64* %_y3762
  store i64 %x, i64* %_x3760
  %_x3765 = load i64, i64* %_x3763
  %_y3766 = load i64, i64* %_y3764
  %_bop3767 = icmp eq i64 %_x3765, %_y3766
  br i1 %_bop3767, label %_if3770, label %_else3769
_if3770:
  %_x3772 = load i64, i64* %_x3763
  ret i64 %_x3772
_else3769:
  br label %_after3768
_after3768:
  %_x3773 = load i64, i64* %_x3763
  %_bop3774 = icmp eq i64 %_x3773, 0
  br i1 %_bop3774, label %_if3777, label %_else3776
_if3777:
  %_y3779 = load i64, i64* %_y3764
  ret i64 %_y3779
_else3776:
  br label %_after3775
_after3775:
  %_y3780 = load i64, i64* %_y3764
  %_bop3781 = icmp eq i64 %_y3780, 0
  br i1 %_bop3781, label %_if3784, label %_else3783
_if3784:
  %_x3786 = load i64, i64* %_x3763
  ret i64 %_x3786
_else3783:
  br label %_after3782
_after3782:
  %_x3787 = load i64, i64* %_x3763
  %_uop3788 = xor i64 %_x3787, -1
  %_bop3789 = and i64 %_uop3788, 1
  %_bop3790 = icmp eq i64 %_bop3789, 1
  br i1 %_bop3790, label %_if3793, label %_else3792
_if3793:
  %_y3795 = load i64, i64* %_y3764
  %_bop3796 = and i64 %_y3795, 1
  %_bop3797 = icmp eq i64 %_bop3796, 1
  br i1 %_bop3797, label %_if3800, label %_else3799
_if3800:
  %_x3808 = load i64, i64* %_x3763
  %_bop3809 = lshr i64 %_x3808, 1
  %_y3810 = load i64, i64* %_y3764
  %_id3811 = call i64 @binary_gcd(i64 %_bop3809, i64 %_y3810)
  ret i64 %_id3811
_else3799:
  %_x3802 = load i64, i64* %_x3763
  %_bop3803 = lshr i64 %_x3802, 1
  %_y3804 = load i64, i64* %_y3764
  %_bop3805 = lshr i64 %_y3804, 1
  %_id3806 = call i64 @binary_gcd(i64 %_bop3803, i64 %_bop3805)
  %_bop3807 = shl i64 %_id3806, 1
  ret i64 %_bop3807
_after3798:
  br label %_after3791
_else3792:
  br label %_after3791
_after3791:
  %_y3812 = load i64, i64* %_y3764
  %_uop3813 = xor i64 %_y3812, -1
  %_bop3814 = and i64 %_uop3813, 1
  %_bop3815 = icmp eq i64 %_bop3814, 1
  br i1 %_bop3815, label %_if3818, label %_else3817
_if3818:
  %_x3820 = load i64, i64* %_x3763
  %_y3821 = load i64, i64* %_y3764
  %_bop3822 = lshr i64 %_y3821, 1
  %_id3823 = call i64 @binary_gcd(i64 %_x3820, i64 %_bop3822)
  ret i64 %_id3823
_else3817:
  br label %_after3816
_after3816:
  %_x3824 = load i64, i64* %_x3763
  %_y3825 = load i64, i64* %_y3764
  %_bop3826 = icmp sgt i64 %_x3824, %_y3825
  br i1 %_bop3826, label %_if3829, label %_else3828
_if3829:
  %_x3831 = load i64, i64* %_x3763
  %_y3832 = load i64, i64* %_y3764
  %_bop3833 = sub i64 %_x3831, %_y3832
  %_bop3834 = lshr i64 %_bop3833, 1
  %_y3835 = load i64, i64* %_y3764
  %_id3836 = call i64 @binary_gcd(i64 %_bop3834, i64 %_y3835)
  ret i64 %_id3836
_else3828:
  br label %_after3827
_after3827:
  %_y3837 = load i64, i64* %_y3764
  %_x3838 = load i64, i64* %_x3763
  %_bop3839 = sub i64 %_y3837, %_x3838
  %_bop3840 = lshr i64 %_bop3839, 1
  %_x3841 = load i64, i64* %_x3763
  %_id3842 = call i64 @binary_gcd(i64 %_bop3840, i64 %_x3841)
  ret i64 %_id3842
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x3752 = alloca i64
  %_y3754 = alloca i64
  %_argc3747 = alloca i64
  %_argv3749 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3749
  store i64 %argc, i64* %_argc3747
  store i64 21, i64* %_x3752
  store i64 15, i64* %_y3754
  %_x3756 = load i64, i64* %_x3752
  %_y3757 = load i64, i64* %_y3754
  %_id3758 = call i64 @binary_gcd(i64 %_x3756, i64 %_y3757)
  ret i64 %_id3758
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
