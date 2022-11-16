; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr13084 = alloca { i64, [0 x i64] }*
  %_str3088 = alloca i8*
  %_arr23092 = alloca { i64, [0 x i64] }*
  %_s3094 = alloca i64
  %_i3096 = alloca i64
  store i64 %argc, i64* %_argc3067
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3069
  %_argv3069 = alloca { i64, [0 x i8*] }*
  %_argc3067 = alloca i64
  %_raw_array3072 = call i64* @oat_alloc_array(i64 5)
  %_array3073 = bitcast i64* %_raw_array3072 to { i64, [0 x i64] }*
  %_gep3074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep3074
  %_gep3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3076
  %_gep3078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep3078
  %_gep3080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep3080
  %_gep3082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3073, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep3082
  store { i64, [0 x i64] }* %_array3073, { i64, [0 x i64] }** %_arr13084
  %_arr13086 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr13084
  %_id3087 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr13086)
  store i8* %_id3087, i8** %_str3088
  %_str3090 = load i8*, i8** %_str3088
  %_id3091 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3090)
  store { i64, [0 x i64] }* %_id3091, { i64, [0 x i64] }** %_arr23092
  store i64 0, i64* %_s3094
  store i64 0, i64* %_i3096
  br label %_pre3101
_pre3101:
  %_i3098 = load i64, i64* %_i3096
  %_bop3099 = icmp slt i64 %_i3098, 5
  %_cnd3103 = icmp eq i1 %_bop3099, 0
  br i1 %_cnd3103, label %_post3100, label %_body3102
_body3102:
  %_s3104 = load i64, i64* %_s3094
  %_arr23107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr23092
  %_i3108 = load i64, i64* %_i3096
  %_ptr3105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr23107, i32 0, i32 1, i64 %_i3108
  %_resPtr3106 = load i64, i64* %_ptr3105
  %_bop3109 = add i64 %_s3104, %_resPtr3106
  store i64 %_bop3109, i64* %_s3094
  %_i3111 = load i64, i64* %_i3096
  %_bop3112 = add i64 %_i3111, 1
  store i64 %_bop3112, i64* %_i3096
  br label %_pre3101
_post3100:
  %_s3114 = load i64, i64* %_s3094
  call void @print_int(i64 %_s3114)
  %_s3116 = load i64, i64* %_s3094
  ret i64 %_s3116
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
