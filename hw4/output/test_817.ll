; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x404 = alloca { i64, [0 x i64] }*
  %_y406 = alloca { i64, [0 x i64] }*
  %_b408 = alloca i1
  store i1 %b, i1* %_b408
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y406
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x404
  %_b412 = load i1, i1* %_b411
  br i1 %_b412, label %_if415, label %_else414
_if415:
  %_x418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x409
  ret { i64, [0 x i64] }* %_x418
_else414:
  %_y417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y410
  ret { i64, [0 x i64] }* %_y417
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x356 = alloca { i64, [0 x i64] }*
  %_i358 = alloca i64
  %_y376 = alloca { i64, [0 x i64] }*
  %_i378 = alloca i64
  %_argc349 = alloca i64
  %_argv351 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv351
  store i64 %argc, i64* %_argc349
  %_raw_array354 = call i64* @oat_alloc_array(i64 3)
  %_array355 = bitcast i64* %_raw_array354 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array355, { i64, [0 x i64] }** %_x356
  store i64 0, i64* %_i358
  br label %_pre363
_pre363:
  %_i360 = load i64, i64* %_i358
  %_bop361 = icmp slt i64 %_i360, 3
  %_cnd365 = icmp eq i1 %_bop361, 0
  br i1 %_cnd365, label %_post362, label %_body364
_body364:
  %_i366 = load i64, i64* %_i358
  %_x367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x356
  %_i368 = load i64, i64* %_i358
  %_ptr369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x367, i32 0, i32 1, i64 %_i368
  store i64 %_i366, i64* %_ptr369
  %_i371 = load i64, i64* %_i358
  %_bop372 = add i64 %_i371, 1
  store i64 %_bop372, i64* %_i358
  br label %_pre363
_post362:
  %_raw_array374 = call i64* @oat_alloc_array(i64 3)
  %_array375 = bitcast i64* %_raw_array374 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array375, { i64, [0 x i64] }** %_y376
  store i64 0, i64* %_i378
  br label %_pre383
_pre383:
  %_i380 = load i64, i64* %_i378
  %_bop381 = icmp slt i64 %_i380, 3
  %_cnd385 = icmp eq i1 %_bop381, 0
  br i1 %_cnd385, label %_post382, label %_body384
_body384:
  %_i386 = load i64, i64* %_i378
  %_bop387 = add i64 %_i386, 3
  %_y388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y376
  %_i389 = load i64, i64* %_i378
  %_ptr390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y388, i32 0, i32 1, i64 %_i389
  store i64 %_bop387, i64* %_ptr390
  %_i392 = load i64, i64* %_i378
  %_bop393 = add i64 %_i392, 1
  store i64 %_bop393, i64* %_i378
  br label %_pre383
_post382:
  %_x395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x356
  %_y396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y376
  %_id397 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x395, { i64, [0 x i64] }* %_y396, i1 1)
  %_ptr398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id397, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr398
  %_x402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x356
  %_ptr400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x402, i32 0, i32 1, i32 0
  %_resPtr401 = load i64, i64* %_ptr400
  ret i64 %_resPtr401
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
