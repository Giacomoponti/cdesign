; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr13135 = alloca { i64, [0 x i64] }*
  %_str3139 = alloca i8*
  %_arr23143 = alloca { i64, [0 x i64] }*
  %_s3145 = alloca i64
  %_i3147 = alloca i64
  store i64 %argc, i64* %_argc3118
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3120
  %_argv3120 = alloca { i64, [0 x i8*] }*
  %_argc3118 = alloca i64
  %_raw_array3123 = call i64* @oat_alloc_array(i64 5)
  %_array3124 = bitcast i64* %_raw_array3123 to { i64, [0 x i64] }*
  %_gep3125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3124, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep3125
  %_gep3127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3124, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3127
  %_gep3129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3124, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep3129
  %_gep3131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3124, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep3131
  %_gep3133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3124, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep3133
  store { i64, [0 x i64] }* %_array3124, { i64, [0 x i64] }** %_arr13135
  %_arr13137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr13135
  %_id3138 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr13137)
  store i8* %_id3138, i8** %_str3139
  %_str3141 = load i8*, i8** %_str3139
  %_id3142 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3141)
  store { i64, [0 x i64] }* %_id3142, { i64, [0 x i64] }** %_arr23143
  store i64 0, i64* %_s3145
  store i64 0, i64* %_i3147
  br label %_pre3152
_pre3152:
  %_i3149 = load i64, i64* %_i3147
  %_bop3150 = icmp slt i64 %_i3149, 5
  %_cnd3154 = icmp eq i1 %_bop3150, 0
  br i1 %_cnd3154, label %_post3151, label %_body3153
_body3153:
  %_s3155 = load i64, i64* %_s3145
  %_arr23158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr23143
  %_i3159 = load i64, i64* %_i3147
  %_ptr3156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr23158, i32 0, i32 1, i64 %_i3159
  %_resPtr3157 = load i64, i64* %_ptr3156
  %_bop3160 = add i64 %_s3155, %_resPtr3157
  store i64 %_bop3160, i64* %_s3145
  %_i3162 = load i64, i64* %_i3147
  %_bop3163 = add i64 %_i3162, 1
  store i64 %_bop3163, i64* %_i3147
  br label %_pre3152
_post3151:
  %_s3165 = load i64, i64* %_s3145
  ret i64 %_s3165
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
