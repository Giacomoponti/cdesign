; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_i3968 = alloca i64
  %_min3974 = alloca i64
  %_mi3977 = alloca i64
  %_a3962 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3962
  %_s3964 = alloca i64
  store i64 %s, i64* %_s3964
  %_b3966 = alloca i64
  store i64 %b, i64* %_b3966
  %_s3967 = load i64, i64* %_s3964
  store i64 %_s3967, i64* %_i3968
  %_a3972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3962
  %_s3973 = load i64, i64* %_s3964
  %_ptr3970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3972, i32 0, i32 1, i64 %_s3973
  %_resPtr3971 = load i64, i64* %_ptr3970
  store i64 %_resPtr3971, i64* %_min3974
  %_s3976 = load i64, i64* %_s3964
  store i64 %_s3976, i64* %_mi3977
  br label %_pre3983
_pre3983:
  %_i3979 = load i64, i64* %_i3968
  %_b3980 = load i64, i64* %_b3966
  %_bop3981 = icmp slt i64 %_i3979, %_b3980
  %_cnd3985 = icmp eq i1 %_bop3981, 0
  br i1 %_cnd3985, label %_post3982, label %_body3984
_body3984:
  %_a3988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3962
  %_i3989 = load i64, i64* %_i3968
  %_ptr3986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3988, i32 0, i32 1, i64 %_i3989
  %_resPtr3987 = load i64, i64* %_ptr3986
  %_min3990 = load i64, i64* %_min3974
  %_bop3991 = icmp slt i64 %_resPtr3987, %_min3990
  br i1 %_bop3991, label %_if3994, label %_else3993
_if3994:
  %_a3998 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3962
  %_i3999 = load i64, i64* %_i3968
  %_ptr3996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3998, i32 0, i32 1, i64 %_i3999
  %_resPtr3997 = load i64, i64* %_ptr3996
  store i64 %_resPtr3997, i64* %_min3974
  %_i4001 = load i64, i64* %_i3968
  store i64 %_i4001, i64* %_mi3977
  br label %_after3992
_else3993:
  br label %_after3992
_after3992:
  %_i4003 = load i64, i64* %_i3968
  %_bop4004 = add i64 %_i4003, 1
  store i64 %_bop4004, i64* %_i3968
  br label %_pre3983
_post3982:
  %_mi4006 = load i64, i64* %_mi3977
  ret i64 %_mi4006
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_t3922 = alloca i64
  %_mi3924 = alloca i64
  %_i3926 = alloca i64
  %_a3919 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3919
  %_s3921 = alloca i64
  store i64 %s, i64* %_s3921
  store i64 0, i64* %_t3922
  store i64 0, i64* %_mi3924
  store i64 0, i64* %_i3926
  br label %_pre3932
_pre3932:
  %_i3928 = load i64, i64* %_i3926
  %_s3929 = load i64, i64* %_s3921
  %_bop3930 = icmp slt i64 %_i3928, %_s3929
  %_cnd3934 = icmp eq i1 %_bop3930, 0
  br i1 %_cnd3934, label %_post3931, label %_body3933
_body3933:
  %_a3935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3919
  %_i3936 = load i64, i64* %_i3926
  %_s3937 = load i64, i64* %_s3921
  %_3938 = call i64 @getminindex({ i64, [0 x i64] }* %_a3935, i64 %_i3936, i64 %_s3937)
  store i64 %_3938, i64* %_mi3924
  %_a3942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3919
  %_i3943 = load i64, i64* %_i3926
  %_ptr3940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3942, i32 0, i32 1, i64 %_i3943
  %_resPtr3941 = load i64, i64* %_ptr3940
  store i64 %_resPtr3941, i64* %_t3922
  %_a3947 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3919
  %_mi3948 = load i64, i64* %_mi3924
  %_ptr3945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3947, i32 0, i32 1, i64 %_mi3948
  %_resPtr3946 = load i64, i64* %_ptr3945
  %_a3949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3919
  %_i3950 = load i64, i64* %_i3926
  %_ptr3951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3949, i32 0, i32 1, i64 %_i3950
  store i64 %_resPtr3946, i64* %_ptr3951
  %_t3953 = load i64, i64* %_t3922
  %_a3954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3919
  %_mi3955 = load i64, i64* %_mi3924
  %_ptr3956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3954, i32 0, i32 1, i64 %_mi3955
  store i64 %_t3953, i64* %_ptr3956
  %_i3958 = load i64, i64* %_i3926
  %_bop3959 = add i64 %_i3958, 1
  store i64 %_bop3959, i64* %_i3926
  br label %_pre3932
_post3931:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_ar3898 = alloca { i64, [0 x i64] }*
  %_i3902 = alloca i64
  %_argc3877 = alloca i64
  store i64 %argc, i64* %_argc3877
  %_argv3879 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3879
  %_raw_array3880 = call i64* @oat_alloc_array(i64 8)
  %_array3881 = bitcast i64* %_raw_array3880 to { i64, [0 x i64] }*
  %_gep3882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep3882
  %_gep3884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep3884
  %_gep3886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep3886
  %_gep3888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep3888
  %_gep3890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep3890
  %_gep3892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep3892
  %_gep3894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep3894
  %_gep3896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3881, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep3896
  store { i64, [0 x i64] }* %_array3881, { i64, [0 x i64] }** %_ar3898
  %_ar3900 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3898
  call void @selectionsort({ i64, [0 x i64] }* %_ar3900, i64 8)
  store i64 0, i64* %_i3902
  br label %_pre3907
_pre3907:
  %_i3904 = load i64, i64* %_i3902
  %_bop3905 = icmp slt i64 %_i3904, 8
  %_cnd3909 = icmp eq i1 %_bop3905, 0
  br i1 %_cnd3909, label %_post3906, label %_body3908
_body3908:
  %_ar3912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3898
  %_i3913 = load i64, i64* %_i3902
  %_ptr3910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3912, i32 0, i32 1, i64 %_i3913
  %_resPtr3911 = load i64, i64* %_ptr3910
  call void @print_int(i64 %_resPtr3911)
  %_i3915 = load i64, i64* %_i3902
  %_bop3916 = add i64 %_i3915, 1
  store i64 %_bop3916, i64* %_i3902
  br label %_pre3907
_post3906:
  ret i64 0
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
