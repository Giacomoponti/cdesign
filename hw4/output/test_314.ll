; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_i5451 = alloca i64
  %_j5453 = alloca i64
  %_tmp5481 = alloca i64
  %_a5448 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a5448
  %_len5450 = alloca i64
  store i64 %len, i64* %_len5450
  store i64 1, i64* %_i5451
  store i64 2, i64* %_j5453
  br label %_pre5459
_pre5459:
  %_i5455 = load i64, i64* %_i5451
  %_len5456 = load i64, i64* %_len5450
  %_bop5457 = icmp slt i64 %_i5455, %_len5456
  %_cnd5461 = icmp eq i1 %_bop5457, 0
  br i1 %_cnd5461, label %_post5458, label %_body5460
_body5460:
  %_a5464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5448
  %_i5465 = load i64, i64* %_i5451
  %_bop5466 = sub i64 %_i5465, 1
  %_ptr5462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5464, i32 0, i32 1, i64 %_bop5466
  %_resPtr5463 = load i64, i64* %_ptr5462
  %_a5469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5448
  %_i5470 = load i64, i64* %_i5451
  %_ptr5467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5469, i32 0, i32 1, i64 %_i5470
  %_resPtr5468 = load i64, i64* %_ptr5467
  %_bop5471 = icmp sle i64 %_resPtr5463, %_resPtr5468
  br i1 %_bop5471, label %_if5474, label %_else5473
_if5474:
  %_j5511 = load i64, i64* %_j5453
  store i64 %_j5511, i64* %_i5451
  %_j5513 = load i64, i64* %_j5453
  %_bop5514 = add i64 %_j5513, 1
  store i64 %_bop5514, i64* %_j5453
  br label %_after5472
_else5473:
  %_a5478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5448
  %_i5479 = load i64, i64* %_i5451
  %_bop5480 = sub i64 %_i5479, 1
  %_ptr5476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5478, i32 0, i32 1, i64 %_bop5480
  %_resPtr5477 = load i64, i64* %_ptr5476
  store i64 %_resPtr5477, i64* %_tmp5481
  %_a5485 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5448
  %_i5486 = load i64, i64* %_i5451
  %_ptr5483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5485, i32 0, i32 1, i64 %_i5486
  %_resPtr5484 = load i64, i64* %_ptr5483
  %_a5487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5448
  %_i5488 = load i64, i64* %_i5451
  %_bop5489 = sub i64 %_i5488, 1
  %_ptr5490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5487, i32 0, i32 1, i64 %_bop5489
  store i64 %_resPtr5484, i64* %_ptr5490
  %_tmp5492 = load i64, i64* %_tmp5481
  %_a5493 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5448
  %_i5494 = load i64, i64* %_i5451
  %_ptr5495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5493, i32 0, i32 1, i64 %_i5494
  store i64 %_tmp5492, i64* %_ptr5495
  %_i5497 = load i64, i64* %_i5451
  %_bop5498 = sub i64 %_i5497, 1
  store i64 %_bop5498, i64* %_i5451
  %_i5500 = load i64, i64* %_i5451
  %_bop5501 = icmp eq i64 %_i5500, 0
  br i1 %_bop5501, label %_if5504, label %_else5503
_if5504:
  %_j5506 = load i64, i64* %_j5453
  store i64 %_j5506, i64* %_i5451
  %_j5508 = load i64, i64* %_j5453
  %_bop5509 = add i64 %_j5508, 1
  store i64 %_bop5509, i64* %_j5453
  br label %_after5502
_else5503:
  br label %_after5502
_after5502:
  br label %_after5472
_after5472:
  br label %_pre5459
_post5458:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr5424 = alloca { i64, [0 x i64] }*
  %_len5426 = alloca i64
  %_i5431 = alloca i64
  %_argc5403 = alloca i64
  store i64 %argc, i64* %_argc5403
  %_argv5405 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5405
  %_raw_array5406 = call i64* @oat_alloc_array(i64 8)
  %_array5407 = bitcast i64* %_raw_array5406 to { i64, [0 x i64] }*
  %_gep5408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep5408
  %_gep5410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep5410
  %_gep5412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5412
  %_gep5414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep5414
  %_gep5416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep5416
  %_gep5418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep5418
  %_gep5420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep5420
  %_gep5422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5407, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep5422
  store { i64, [0 x i64] }* %_array5407, { i64, [0 x i64] }** %_arr5424
  store i64 8, i64* %_len5426
  %_arr5428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5424
  %_len5429 = load i64, i64* %_len5426
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5428, i64 %_len5429)
  store i64 0, i64* %_i5431
  br label %_pre5436
_pre5436:
  %_i5433 = load i64, i64* %_i5431
  %_bop5434 = icmp slt i64 %_i5433, 8
  %_cnd5438 = icmp eq i1 %_bop5434, 0
  br i1 %_cnd5438, label %_post5435, label %_body5437
_body5437:
  %_arr5441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5424
  %_i5442 = load i64, i64* %_i5431
  %_ptr5439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5441, i32 0, i32 1, i64 %_i5442
  %_resPtr5440 = load i64, i64* %_ptr5439
  call void @print_int(i64 %_resPtr5440)
  %_i5444 = load i64, i64* %_i5431
  %_bop5445 = add i64 %_i5444, 1
  store i64 %_bop5445, i64* %_i5431
  br label %_pre5436
_post5435:
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
