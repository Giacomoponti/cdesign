; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i2979 = alloca i64
  %_argc2976 = alloca i64
  store i64 %argc, i64* %_argc2976
  %_argv2978 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2978
  store i64 1, i64* %_i2979
  br label %_pre2985
_pre2985:
  %_i2981 = load i64, i64* %_i2979
  %_argc2982 = load i64, i64* %_argc2976
  %_bop2983 = icmp slt i64 %_i2981, %_argc2982
  %_cnd2987 = icmp eq i1 %_bop2983, 0
  br i1 %_cnd2987, label %_post2984, label %_body2986
_body2986:
  %_argv2990 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2978
  %_i2991 = load i64, i64* %_i2979
  %_ptr2988 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2990, i32 0, i32 1, i64 %_i2991
  %_resPtr2989 = load i8*, i8** %_ptr2988
  call void @print_string(i8* %_resPtr2989)
  %_i2993 = load i64, i64* %_i2979
  %_bop2994 = add i64 %_i2993, 1
  store i64 %_bop2994, i64* %_i2979
  br label %_pre2985
_post2984:
  %_argc2996 = load i64, i64* %_argc2976
  ret i64 %_argc2996
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
