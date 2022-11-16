; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_s3036 = global [6 x i8] c"hello\00"
@_s3037 = global i8* bitcast ([6 x i8]* @_s3036 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str3039 = alloca i8*
  %_arr3043 = alloca { i64, [0 x i64] }*
  %_s3045 = alloca i64
  %_i3047 = alloca i64
  store i64 %argc, i64* %_argc3031
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3033
  %_argv3033 = alloca { i64, [0 x i8*] }*
  %_argc3031 = alloca i64
  %_tmp3038 = load i8*, i8** @_s3037
  store i8* %_tmp3038, i8** %_str3039
  %_str3041 = load i8*, i8** %_str3039
  %_id3042 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3041)
  store { i64, [0 x i64] }* %_id3042, { i64, [0 x i64] }** %_arr3043
  store i64 0, i64* %_s3045
  store i64 0, i64* %_i3047
  br label %_pre3052
_pre3052:
  %_i3049 = load i64, i64* %_i3047
  %_bop3050 = icmp slt i64 %_i3049, 5
  %_cnd3054 = icmp eq i1 %_bop3050, 0
  br i1 %_cnd3054, label %_post3051, label %_body3053
_body3053:
  %_s3055 = load i64, i64* %_s3045
  %_arr3058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3043
  %_i3059 = load i64, i64* %_i3047
  %_ptr3056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3058, i32 0, i32 1, i64 %_i3059
  %_resPtr3057 = load i64, i64* %_ptr3056
  %_bop3060 = add i64 %_s3055, %_resPtr3057
  store i64 %_bop3060, i64* %_s3045
  %_i3062 = load i64, i64* %_i3047
  %_bop3063 = add i64 %_i3062, 1
  store i64 %_bop3063, i64* %_i3047
  br label %_pre3052
_post3051:
  %_s3065 = load i64, i64* %_s3045
  ret i64 %_s3065
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
