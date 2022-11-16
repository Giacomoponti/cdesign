; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_hello2993 to i8*)
@_hello2993 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr2968 = alloca { i64, [0 x i64] }*
  %_s2970 = alloca i64
  %_i2972 = alloca i64
  %_argc2961 = alloca i64
  %_argv2963 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2963
  store i64 %argc, i64* %_argc2961
  %_str2966 = load i8*, i8** @str
  %_id2967 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2966)
  store { i64, [0 x i64] }* %_id2967, { i64, [0 x i64] }** %_arr2968
  store i64 0, i64* %_s2970
  store i64 0, i64* %_i2972
  br label %_pre2977
_pre2977:
  %_i2974 = load i64, i64* %_i2972
  %_bop2975 = icmp slt i64 %_i2974, 5
  %_cnd2979 = icmp eq i1 %_bop2975, 0
  br i1 %_cnd2979, label %_post2976, label %_body2978
_body2978:
  %_s2980 = load i64, i64* %_s2970
  %_arr2983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2968
  %_i2984 = load i64, i64* %_i2972
  %_ptr2981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2983, i32 0, i32 1, i64 %_i2984
  %_resPtr2982 = load i64, i64* %_ptr2981
  %_bop2985 = add i64 %_s2980, %_resPtr2982
  store i64 %_bop2985, i64* %_s2970
  %_i2987 = load i64, i64* %_i2972
  %_bop2988 = add i64 %_i2987, 1
  store i64 %_bop2988, i64* %_i2972
  br label %_pre2977
_post2976:
  %_s2990 = load i64, i64* %_s2970
  call void @print_int(i64 %_s2990)
  %_s2992 = load i64, i64* %_s2970
  ret i64 %_s2992
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
