; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr13096 = alloca { i64, [0 x i64] }*
  %_str3100 = alloca i8*
  %_arr23104 = alloca { i64, [0 x i64] }*
  %_s3106 = alloca i64
  %_i3108 = alloca i64
  %_argc3079 = alloca i64
  %_argv3081 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3081
  store i64 %argc, i64* %_argc3079
  %_raw_array3084 = call i64* @oat_alloc_array(i64 5)
  %_array3085 = bitcast i64* %_raw_array3084 to { i64, [0 x i64] }*
  %_gep3086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3085, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep3086
  %_gep3088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3085, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3088
  %_gep3090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3085, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep3090
  %_gep3092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3085, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep3092
  %_gep3094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3085, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep3094
  store { i64, [0 x i64] }* %_array3085, { i64, [0 x i64] }** %_arr13096
  %_arr13098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr13096
  %_id3099 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr13098)
  store i8* %_id3099, i8** %_str3100
  %_str3102 = load i8*, i8** %_str3100
  %_id3103 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3102)
  store { i64, [0 x i64] }* %_id3103, { i64, [0 x i64] }** %_arr23104
  store i64 0, i64* %_s3106
  store i64 0, i64* %_i3108
  br label %_pre3113
_pre3113:
  %_cnd3115 = icmp eq i1 %_bop3111, 0
  br i1 %_cnd3115, label %_post3112, label %_body3114
_body3114:
  %_i3110 = load i64, i64* %_i3108
  %_bop3111 = icmp slt i64 %_i3110, 5
  %_s3116 = load i64, i64* %_s3106
  %_arr23119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr23104
  %_i3120 = load i64, i64* %_i3108
  %_ptr3117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr23119, i32 0, i32 1, i64 %_i3120
  %_resPtr3118 = load i64, i64* %_ptr3117
  %_bop3121 = add i64 %_s3116, %_resPtr3118
  store i64 %_bop3121, i64* %_s3106
  %_i3123 = load i64, i64* %_i3108
  %_bop3124 = add i64 %_i3123, 1
  store i64 %_bop3124, i64* %_i3108
  br label %_pre3113
_post3112:
  %_s3126 = load i64, i64* %_s3106
  ret i64 %_s3126
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
