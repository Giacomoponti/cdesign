; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_i5479 = alloca i64
  %_j5481 = alloca i64
  %_tmp5509 = alloca i64
  %_a5474 = alloca { i64, [0 x i64] }*
  %_len5476 = alloca i64
  store i64 %len, i64* %_len5476
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a5474
  store i64 1, i64* %_i5479
  store i64 2, i64* %_j5481
  br label %_pre5487
_pre5487:
  %_i5483 = load i64, i64* %_i5479
  %_len5484 = load i64, i64* %_len5478
  %_bop5485 = icmp slt i64 %_i5483, %_len5484
  %_cnd5489 = icmp eq i1 %_bop5485, 0
  br i1 %_cnd5489, label %_post5486, label %_body5488
_body5488:
  %_a5492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5477
  %_i5493 = load i64, i64* %_i5479
  %_bop5494 = sub i64 %_i5493, 1
  %_ptr5490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5492, i32 0, i32 1, i64 %_bop5494
  %_resPtr5491 = load i64, i64* %_ptr5490
  %_a5497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5477
  %_i5498 = load i64, i64* %_i5479
  %_ptr5495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5497, i32 0, i32 1, i64 %_i5498
  %_resPtr5496 = load i64, i64* %_ptr5495
  %_bop5499 = icmp sle i64 %_resPtr5491, %_resPtr5496
  br i1 %_bop5499, label %_if5502, label %_else5501
_if5502:
  %_j5539 = load i64, i64* %_j5481
  store i64 %_j5539, i64* %_i5479
  %_j5541 = load i64, i64* %_j5481
  %_bop5542 = add i64 %_j5541, 1
  store i64 %_bop5542, i64* %_j5481
  br label %_after5500
_else5501:
  %_a5506 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5477
  %_i5507 = load i64, i64* %_i5479
  %_bop5508 = sub i64 %_i5507, 1
  %_ptr5504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5506, i32 0, i32 1, i64 %_bop5508
  %_resPtr5505 = load i64, i64* %_ptr5504
  store i64 %_resPtr5505, i64* %_tmp5509
  %_a5513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5477
  %_i5514 = load i64, i64* %_i5479
  %_ptr5511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5513, i32 0, i32 1, i64 %_i5514
  %_resPtr5512 = load i64, i64* %_ptr5511
  %_a5515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5477
  %_i5516 = load i64, i64* %_i5479
  %_bop5517 = sub i64 %_i5516, 1
  %_ptr5518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5515, i32 0, i32 1, i64 %_bop5517
  store i64 %_resPtr5512, i64* %_ptr5518
  %_tmp5520 = load i64, i64* %_tmp5509
  %_a5521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5477
  %_i5522 = load i64, i64* %_i5479
  %_ptr5523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5521, i32 0, i32 1, i64 %_i5522
  store i64 %_tmp5520, i64* %_ptr5523
  %_i5525 = load i64, i64* %_i5479
  %_bop5526 = sub i64 %_i5525, 1
  store i64 %_bop5526, i64* %_i5479
  %_i5528 = load i64, i64* %_i5479
  %_bop5529 = icmp eq i64 %_i5528, 0
  br i1 %_bop5529, label %_if5532, label %_else5531
_if5532:
  %_j5534 = load i64, i64* %_j5481
  store i64 %_j5534, i64* %_i5479
  %_j5536 = load i64, i64* %_j5481
  %_bop5537 = add i64 %_j5536, 1
  store i64 %_bop5537, i64* %_j5481
  br label %_after5530
_else5531:
  br label %_after5530
_after5530:
  br label %_after5500
_after5500:
  br label %_pre5487
_post5486:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr5450 = alloca { i64, [0 x i64] }*
  %_len5452 = alloca i64
  %_i5457 = alloca i64
  %_argc5427 = alloca i64
  %_argv5429 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5429
  store i64 %argc, i64* %_argc5427
  %_raw_array5432 = call i64* @oat_alloc_array(i64 8)
  %_array5433 = bitcast i64* %_raw_array5432 to { i64, [0 x i64] }*
  %_gep5434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep5434
  %_gep5436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep5436
  %_gep5438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5438
  %_gep5440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep5440
  %_gep5442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep5442
  %_gep5444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep5444
  %_gep5446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep5446
  %_gep5448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5433, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep5448
  store { i64, [0 x i64] }* %_array5433, { i64, [0 x i64] }** %_arr5450
  store i64 8, i64* %_len5452
  %_arr5454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5450
  %_len5455 = load i64, i64* %_len5452
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5454, i64 %_len5455)
  store i64 0, i64* %_i5457
  br label %_pre5462
_pre5462:
  %_i5459 = load i64, i64* %_i5457
  %_bop5460 = icmp slt i64 %_i5459, 8
  %_cnd5464 = icmp eq i1 %_bop5460, 0
  br i1 %_cnd5464, label %_post5461, label %_body5463
_body5463:
  %_arr5467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5450
  %_i5468 = load i64, i64* %_i5457
  %_ptr5465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5467, i32 0, i32 1, i64 %_i5468
  %_resPtr5466 = load i64, i64* %_ptr5465
  call void @print_int(i64 %_resPtr5466)
  %_i5470 = load i64, i64* %_i5457
  %_bop5471 = add i64 %_i5470, 1
  store i64 %_bop5471, i64* %_i5457
  br label %_pre5462
_post5461:
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
