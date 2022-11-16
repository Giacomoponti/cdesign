; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr13045 = alloca { i64, [0 x i64] }*
  %_str3049 = alloca i8*
  %_arr23053 = alloca { i64, [0 x i64] }*
  %_s3055 = alloca i64
  %_i3057 = alloca i64
  %_argc3028 = alloca i64
  %_argv3030 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3030
  store i64 %argc, i64* %_argc3028
  %_raw_array3033 = call i64* @oat_alloc_array(i64 5)
  %_array3034 = bitcast i64* %_raw_array3033 to { i64, [0 x i64] }*
  %_gep3035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3034, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep3035
  %_gep3037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3034, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3037
  %_gep3039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3034, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep3039
  %_gep3041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3034, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep3041
  %_gep3043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3034, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep3043
  store { i64, [0 x i64] }* %_array3034, { i64, [0 x i64] }** %_arr13045
  %_arr13047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr13045
  %_id3048 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr13047)
  store i8* %_id3048, i8** %_str3049
  %_str3051 = load i8*, i8** %_str3049
  %_id3052 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3051)
  store { i64, [0 x i64] }* %_id3052, { i64, [0 x i64] }** %_arr23053
  store i64 0, i64* %_s3055
  store i64 0, i64* %_i3057
  br label %_pre3062
_pre3062:
  %_i3059 = load i64, i64* %_i3057
  %_bop3060 = icmp slt i64 %_i3059, 5
  %_cnd3064 = icmp eq i1 %_bop3060, 0
  br i1 %_cnd3064, label %_post3061, label %_body3063
_body3063:
  %_s3065 = load i64, i64* %_s3055
  %_arr23068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr23053
  %_i3069 = load i64, i64* %_i3057
  %_ptr3066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr23068, i32 0, i32 1, i64 %_i3069
  %_resPtr3067 = load i64, i64* %_ptr3066
  %_bop3070 = add i64 %_s3065, %_resPtr3067
  store i64 %_bop3070, i64* %_s3055
  %_i3072 = load i64, i64* %_i3057
  %_bop3073 = add i64 %_i3072, 1
  store i64 %_bop3073, i64* %_i3057
  br label %_pre3062
_post3061:
  %_s3075 = load i64, i64* %_s3055
  call void @print_int(i64 %_s3075)
  %_s3077 = load i64, i64* %_s3055
  ret i64 %_s3077
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
