; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_arr3092 = alloca { i64, [0 x i64] }*
  %_r3097 = alloca { i64, [0 x i64] }*
  %_i3099 = alloca i64
  %_str3085 = alloca i8*
  store i8* %str, i8** %_str3085
  %_start3087 = alloca i64
  store i64 %start, i64* %_start3087
  %_len3089 = alloca i64
  store i64 %len, i64* %_len3089
  %_str3090 = load i8*, i8** %_str3085
  %_3091 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3090)
  store { i64, [0 x i64] }* %_3091, { i64, [0 x i64] }** %_arr3092
  %_len3094 = load i64, i64* %_len3089
  %_raw_array3095 = call i64* @oat_alloc_array(i64 %_len3094)
  %_array3096 = bitcast i64* %_raw_array3095 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3096, { i64, [0 x i64] }** %_r3097
  store i64 0, i64* %_i3099
  br label %_pre3105
_pre3105:
  %_i3101 = load i64, i64* %_i3099
  %_len3102 = load i64, i64* %_len3089
  %_bop3103 = icmp slt i64 %_i3101, %_len3102
  %_cnd3107 = icmp eq i1 %_bop3103, 0
  br i1 %_cnd3107, label %_post3104, label %_body3106
_body3106:
  %_arr3110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3092
  %_i3111 = load i64, i64* %_i3099
  %_start3112 = load i64, i64* %_start3087
  %_bop3113 = add i64 %_i3111, %_start3112
  %_ptr3108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3110, i32 0, i32 1, i64 %_bop3113
  %_resPtr3109 = load i64, i64* %_ptr3108
  %_r3114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3097
  %_i3115 = load i64, i64* %_i3099
  %_ptr3116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r3114, i32 0, i32 1, i64 %_i3115
  store i64 %_resPtr3109, i64* %_ptr3116
  %_i3118 = load i64, i64* %_i3099
  %_bop3119 = add i64 %_i3118, 1
  store i64 %_bop3119, i64* %_i3099
  br label %_pre3105
_post3104:
  %_r3121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3097
  %_3122 = call i8* @string_of_array({ i64, [0 x i64] }* %_r3121)
  ret i8* %_3122
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3076 = alloca i64
  store i64 %argc, i64* %_argc3076
  %_argv3078 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3078
  %_argv3081 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3078
  %_ptr3079 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv3081, i32 0, i32 1, i32 1
  %_resPtr3080 = load i8*, i8** %_ptr3079
  %_3082 = call i8* @sub(i8* %_resPtr3080, i64 3, i64 5)
  call void @print_string(i8* %_3082)
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
