; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_arr3262 = alloca { i64, [0 x i64] }*
  %_r3267 = alloca { i64, [0 x i64] }*
  %_i3269 = alloca i64
  %_str3252 = alloca i8*
  %_start3254 = alloca i64
  %_len3256 = alloca i64
  store i64 %len, i64* %_len3256
  store i64 %start, i64* %_start3254
  store i8* %str, i8** %_str3252
  %_str3260 = load i8*, i8** %_str3257
  %_id3261 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3260)
  store { i64, [0 x i64] }* %_id3261, { i64, [0 x i64] }** %_arr3262
  %_len3264 = load i64, i64* %_len3259
  %_raw_array3265 = call i64* @oat_alloc_array(i64 %_len3264)
  %_array3266 = bitcast i64* %_raw_array3265 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3266, { i64, [0 x i64] }** %_r3267
  store i64 0, i64* %_i3269
  br label %_pre3275
_pre3275:
  %_i3271 = load i64, i64* %_i3269
  %_len3272 = load i64, i64* %_len3259
  %_bop3273 = icmp slt i64 %_i3271, %_len3272
  %_cnd3277 = icmp eq i1 %_bop3273, 0
  br i1 %_cnd3277, label %_post3274, label %_body3276
_body3276:
  %_arr3280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3262
  %_i3281 = load i64, i64* %_i3269
  %_start3282 = load i64, i64* %_start3258
  %_bop3283 = add i64 %_i3281, %_start3282
  %_ptr3278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3280, i32 0, i32 1, i64 %_bop3283
  %_resPtr3279 = load i64, i64* %_ptr3278
  %_r3284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3267
  %_i3285 = load i64, i64* %_i3269
  %_ptr3286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r3284, i32 0, i32 1, i64 %_i3285
  store i64 %_resPtr3279, i64* %_ptr3286
  %_i3288 = load i64, i64* %_i3269
  %_bop3289 = add i64 %_i3288, 1
  store i64 %_bop3289, i64* %_i3269
  br label %_pre3275
_post3274:
  %_r3291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3267
  %_id3292 = call i8* @string_of_array({ i64, [0 x i64] }* %_r3291)
  ret i8* %_id3292
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3241 = alloca i64
  %_argv3243 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3243
  store i64 %argc, i64* %_argc3241
  %_argv3248 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3245
  %_ptr3246 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv3248, i32 0, i32 1, i32 1
  %_resPtr3247 = load i8*, i8** %_ptr3246
  %_id3249 = call i8* @sub(i8* %_resPtr3247, i64 3, i64 5)
  call void @print_string(i8* %_id3249)
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
