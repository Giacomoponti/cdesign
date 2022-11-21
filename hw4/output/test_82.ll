; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_s3001 = global [11 x i8] c"1234967890\00"
@_s3002 = global i8* bitcast ([11 x i8]* @_s3001 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr3005 = alloca { i64, [0 x i64] }*
  %_sum3007 = alloca i64
  %_i3009 = alloca i64
  %_i3025 = alloca i64
  %_argc2998 = alloca i64
  store i64 %argc, i64* %_argc2998
  %_argv3000 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3000
  %_tmp3003 = load i8*, i8** @_s3002
  %_3004 = call { i64, [0 x i64] }* @array_of_string(i8* %_tmp3003)
  store { i64, [0 x i64] }* %_3004, { i64, [0 x i64] }** %_arr3005
  store i64 0, i64* %_sum3007
  store i64 0, i64* %_i3009
  br label %_pre3014
_pre3014:
  %_i3011 = load i64, i64* %_i3009
  %_bop3012 = icmp slt i64 %_i3011, 10
  %_cnd3016 = icmp eq i1 %_bop3012, 0
  br i1 %_cnd3016, label %_post3013, label %_body3015
_body3015:
  %_i3017 = load i64, i64* %_i3009
  %_arr3018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3005
  %_i3019 = load i64, i64* %_i3009
  %_ptr3020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3018, i32 0, i32 1, i64 %_i3019
  store i64 %_i3017, i64* %_ptr3020
  %_i3022 = load i64, i64* %_i3009
  %_bop3023 = add i64 %_i3022, 1
  store i64 %_bop3023, i64* %_i3009
  br label %_pre3014
_post3013:
  store i64 0, i64* %_i3025
  br label %_pre3030
_pre3030:
  %_i3027 = load i64, i64* %_i3025
  %_bop3028 = icmp slt i64 %_i3027, 10
  %_cnd3032 = icmp eq i1 %_bop3028, 0
  br i1 %_cnd3032, label %_post3029, label %_body3031
_body3031:
  %_sum3033 = load i64, i64* %_sum3007
  %_arr3036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3005
  %_i3037 = load i64, i64* %_i3025
  %_ptr3034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3036, i32 0, i32 1, i64 %_i3037
  %_resPtr3035 = load i64, i64* %_ptr3034
  %_bop3038 = add i64 %_sum3033, %_resPtr3035
  store i64 %_bop3038, i64* %_sum3007
  %_i3040 = load i64, i64* %_i3025
  %_bop3041 = add i64 %_i3040, 1
  store i64 %_bop3041, i64* %_i3025
  br label %_pre3030
_post3029:
  %_sum3043 = load i64, i64* %_sum3007
  ret i64 %_sum3043
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
