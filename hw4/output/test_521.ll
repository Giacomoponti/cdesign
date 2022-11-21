; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_s4508 = global [2 x i8] c"
\00"
@_s4509 = global i8* bitcast ([2 x i8]* @_s4508 to i8*)

define i64 @xor(i64 %x, i64 %y) {
  %_x4556 = alloca i64
  store i64 %x, i64* %_x4556
  %_y4558 = alloca i64
  store i64 %y, i64* %_y4558
  %_x4559 = load i64, i64* %_x4556
  %_y4560 = load i64, i64* %_y4558
  %_bop4561 = and i64 %_x4559, %_y4560
  %_uop4562 = xor i64 %_bop4561, -1
  %_x4563 = load i64, i64* %_x4556
  %_y4564 = load i64, i64* %_y4558
  %_bop4565 = or i64 %_x4563, %_y4564
  %_bop4566 = and i64 %_uop4562, %_bop4565
  ret i64 %_bop4566
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_x4520 = alloca i64
  %_y4525 = alloca i64
  %_s4516 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s4516
  %_s4519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4516
  %_ptr4517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4519, i32 0, i32 1, i32 0
  %_resPtr4518 = load i64, i64* %_ptr4517
  store i64 %_resPtr4518, i64* %_x4520
  %_s4524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4516
  %_ptr4522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4524, i32 0, i32 1, i32 1
  %_resPtr4523 = load i64, i64* %_ptr4522
  store i64 %_resPtr4523, i64* %_y4525
  %_y4527 = load i64, i64* %_y4525
  %_s4528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4516
  %_ptr4529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4528, i32 0, i32 1, i32 0
  store i64 %_y4527, i64* %_ptr4529
  %_x4531 = load i64, i64* %_x4520
  %_x4532 = load i64, i64* %_x4520
  %_bop4533 = shl i64 %_x4532, 23
  %_4534 = call i64 @xor(i64 %_x4531, i64 %_bop4533)
  store i64 %_4534, i64* %_x4520
  %_x4536 = load i64, i64* %_x4520
  %_x4537 = load i64, i64* %_x4520
  %_bop4538 = lshr i64 %_x4537, 17
  %_4539 = call i64 @xor(i64 %_x4536, i64 %_bop4538)
  store i64 %_4539, i64* %_x4520
  %_x4541 = load i64, i64* %_x4520
  %_y4542 = load i64, i64* %_y4525
  %_y4543 = load i64, i64* %_y4525
  %_bop4544 = lshr i64 %_y4543, 26
  %_4545 = call i64 @xor(i64 %_y4542, i64 %_bop4544)
  %_4546 = call i64 @xor(i64 %_x4541, i64 %_4545)
  store i64 %_4546, i64* %_x4520
  %_x4548 = load i64, i64* %_x4520
  %_s4549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4516
  %_ptr4550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4549, i32 0, i32 1, i32 1
  store i64 %_x4548, i64* %_ptr4550
  %_x4552 = load i64, i64* %_x4520
  %_y4553 = load i64, i64* %_y4525
  %_bop4554 = add i64 %_x4552, %_y4553
  ret i64 %_bop4554
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_seed4485 = alloca { i64, [0 x i64] }*
  %_i4487 = alloca i64
  %_argc4480 = alloca i64
  store i64 %argc, i64* %_argc4480
  %_argv4482 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4482
  %_raw_array4483 = call i64* @oat_alloc_array(i64 2)
  %_array4484 = bitcast i64* %_raw_array4483 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4484, { i64, [0 x i64] }** %_seed4485
  store i64 0, i64* %_i4487
  br label %_pre4492
_pre4492:
  %_i4489 = load i64, i64* %_i4487
  %_bop4490 = icmp slt i64 %_i4489, 2
  %_cnd4494 = icmp eq i1 %_bop4490, 0
  br i1 %_cnd4494, label %_post4491, label %_body4493
_body4493:
  %_i4495 = load i64, i64* %_i4487
  %_bop4496 = add i64 %_i4495, 1
  %_bop4497 = mul i64 100, %_bop4496
  %_seed4498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4485
  %_i4499 = load i64, i64* %_i4487
  %_ptr4500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4498, i32 0, i32 1, i64 %_i4499
  store i64 %_bop4497, i64* %_ptr4500
  %_i4502 = load i64, i64* %_i4487
  %_bop4503 = add i64 %_i4502, 1
  store i64 %_bop4503, i64* %_i4487
  br label %_pre4492
_post4491:
  %_seed4505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4485
  %_4506 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4505)
  call void @print_int(i64 %_4506)
  %_tmp4510 = load i8*, i8** @_s4509
  call void @print_string(i8* %_tmp4510)
  %_seed4512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4485
  %_4513 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4512)
  call void @print_int(i64 %_4513)
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
