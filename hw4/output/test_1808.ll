; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_arr3307 = alloca { i64, [0 x i64] }*
  %_r3312 = alloca { i64, [0 x i64] }*
  %_i3314 = alloca i64
  store i8* %str, i8** %_str3297
  store i64 %start, i64* %_start3299
  store i64 %len, i64* %_len3301
  %_len3301 = alloca i64
  %_start3299 = alloca i64
  %_str3297 = alloca i8*
  %_str3305 = load i8*, i8** %_str3302
  %_id3306 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3305)
  store { i64, [0 x i64] }* %_id3306, { i64, [0 x i64] }** %_arr3307
  %_len3309 = load i64, i64* %_len3304
  %_raw_array3310 = call i64* @oat_alloc_array(i64 %_len3309)
  %_array3311 = bitcast i64* %_raw_array3310 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3311, { i64, [0 x i64] }** %_r3312
  store i64 0, i64* %_i3314
  br label %_pre3320
_pre3320:
  %_i3316 = load i64, i64* %_i3314
  %_len3317 = load i64, i64* %_len3304
  %_bop3318 = icmp slt i64 %_i3316, %_len3317
  %_cnd3322 = icmp eq i1 %_bop3318, 0
  br i1 %_cnd3322, label %_post3319, label %_body3321
_body3321:
  %_arr3325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3307
  %_i3326 = load i64, i64* %_i3314
  %_start3327 = load i64, i64* %_start3303
  %_bop3328 = add i64 %_i3326, %_start3327
  %_ptr3323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3325, i32 0, i32 1, i64 %_bop3328
  %_resPtr3324 = load i64, i64* %_ptr3323
  %_r3329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3312
  %_i3330 = load i64, i64* %_i3314
  %_ptr3331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r3329, i32 0, i32 1, i64 %_i3330
  store i64 %_resPtr3324, i64* %_ptr3331
  %_i3333 = load i64, i64* %_i3314
  %_bop3334 = add i64 %_i3333, 1
  store i64 %_bop3334, i64* %_i3314
  br label %_pre3320
_post3319:
  %_r3336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3312
  %_id3337 = call i8* @string_of_array({ i64, [0 x i64] }* %_r3336)
  ret i8* %_id3337
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc3286
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3288
  %_argv3288 = alloca { i64, [0 x i8*] }*
  %_argc3286 = alloca i64
  %_argv3293 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3290
  %_ptr3291 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv3293, i32 0, i32 1, i32 1
  %_resPtr3292 = load i8*, i8** %_ptr3291
  %_id3294 = call i8* @sub(i8* %_resPtr3292, i64 3, i64 5)
  call void @print_string(i8* %_id3294)
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
