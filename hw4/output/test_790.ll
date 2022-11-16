; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_i5407 = alloca i64
  %_j5409 = alloca i64
  %_tmp5437 = alloca i64
  %_a5402 = alloca { i64, [0 x i64] }*
  %_len5404 = alloca i64
  store i64 %len, i64* %_len5404
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a5402
  store i64 1, i64* %_i5407
  store i64 2, i64* %_j5409
  br label %_pre5415
_pre5415:
  %_cnd5417 = icmp eq i1 %_bop5413, 0
  br i1 %_cnd5417, label %_post5414, label %_body5416
_body5416:
  %_i5411 = load i64, i64* %_i5407
  %_len5412 = load i64, i64* %_len5406
  %_bop5413 = icmp slt i64 %_i5411, %_len5412
  %_a5420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5405
  %_i5421 = load i64, i64* %_i5407
  %_bop5422 = sub i64 %_i5421, 1
  %_ptr5418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5420, i32 0, i32 1, i64 %_bop5422
  %_resPtr5419 = load i64, i64* %_ptr5418
  %_a5425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5405
  %_i5426 = load i64, i64* %_i5407
  %_ptr5423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5425, i32 0, i32 1, i64 %_i5426
  %_resPtr5424 = load i64, i64* %_ptr5423
  %_bop5427 = icmp sle i64 %_resPtr5419, %_resPtr5424
  br i1 %_bop5427, label %_if5430, label %_else5429
_if5430:
  %_j5467 = load i64, i64* %_j5409
  store i64 %_j5467, i64* %_i5407
  %_j5469 = load i64, i64* %_j5409
  %_bop5470 = add i64 %_j5469, 1
  store i64 %_bop5470, i64* %_j5409
  br label %_after5428
_else5429:
  %_a5434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5405
  %_i5435 = load i64, i64* %_i5407
  %_bop5436 = sub i64 %_i5435, 1
  %_ptr5432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5434, i32 0, i32 1, i64 %_bop5436
  %_resPtr5433 = load i64, i64* %_ptr5432
  store i64 %_resPtr5433, i64* %_tmp5437
  %_a5441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5405
  %_i5442 = load i64, i64* %_i5407
  %_ptr5439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5441, i32 0, i32 1, i64 %_i5442
  %_resPtr5440 = load i64, i64* %_ptr5439
  %_a5443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5405
  %_i5444 = load i64, i64* %_i5407
  %_bop5445 = sub i64 %_i5444, 1
  %_ptr5446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5443, i32 0, i32 1, i64 %_bop5445
  store i64 %_resPtr5440, i64* %_ptr5446
  %_tmp5448 = load i64, i64* %_tmp5437
  %_a5449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5405
  %_i5450 = load i64, i64* %_i5407
  %_ptr5451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5449, i32 0, i32 1, i64 %_i5450
  store i64 %_tmp5448, i64* %_ptr5451
  %_i5453 = load i64, i64* %_i5407
  %_bop5454 = sub i64 %_i5453, 1
  store i64 %_bop5454, i64* %_i5407
  %_i5456 = load i64, i64* %_i5407
  %_bop5457 = icmp eq i64 %_i5456, 0
  br i1 %_bop5457, label %_if5460, label %_else5459
_if5460:
  %_j5462 = load i64, i64* %_j5409
  store i64 %_j5462, i64* %_i5407
  %_j5464 = load i64, i64* %_j5409
  %_bop5465 = add i64 %_j5464, 1
  store i64 %_bop5465, i64* %_j5409
  br label %_after5458
_else5459:
  br label %_after5458
_after5458:
  br label %_after5428
_after5428:
  br label %_pre5415
_post5414:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr5378 = alloca { i64, [0 x i64] }*
  %_len5380 = alloca i64
  %_i5385 = alloca i64
  %_argc5355 = alloca i64
  %_argv5357 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5357
  store i64 %argc, i64* %_argc5355
  %_raw_array5360 = call i64* @oat_alloc_array(i64 8)
  %_array5361 = bitcast i64* %_raw_array5360 to { i64, [0 x i64] }*
  %_gep5362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep5362
  %_gep5364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep5364
  %_gep5366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5366
  %_gep5368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep5368
  %_gep5370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep5370
  %_gep5372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep5372
  %_gep5374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep5374
  %_gep5376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5361, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep5376
  store { i64, [0 x i64] }* %_array5361, { i64, [0 x i64] }** %_arr5378
  store i64 8, i64* %_len5380
  %_arr5382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5378
  %_len5383 = load i64, i64* %_len5380
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5382, i64 %_len5383)
  store i64 0, i64* %_i5385
  br label %_pre5390
_pre5390:
  %_cnd5392 = icmp eq i1 %_bop5388, 0
  br i1 %_cnd5392, label %_post5389, label %_body5391
_body5391:
  %_i5387 = load i64, i64* %_i5385
  %_bop5388 = icmp slt i64 %_i5387, 8
  %_arr5395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5378
  %_i5396 = load i64, i64* %_i5385
  %_ptr5393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5395, i32 0, i32 1, i64 %_i5396
  %_resPtr5394 = load i64, i64* %_ptr5393
  call void @print_int(i64 %_resPtr5394)
  %_i5398 = load i64, i64* %_i5385
  %_bop5399 = add i64 %_i5398, 1
  store i64 %_bop5399, i64* %_i5385
  br label %_pre5390
_post5389:
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
