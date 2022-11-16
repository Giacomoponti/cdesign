; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_s4496 = global [2 x i8] c"
\00"
@_s4497 = global i8* bitcast ([2 x i8]* @_s4496 to i8*)

define i64 @xor(i64 %x, i64 %y) {
  store i64 %x, i64* %_x4545
  store i64 %y, i64* %_y4547
  %_y4547 = alloca i64
  %_x4545 = alloca i64
  %_x4550 = load i64, i64* %_x4548
  %_y4551 = load i64, i64* %_y4549
  %_bop4552 = and i64 %_x4550, %_y4551
  %_uop4553 = xor i64 %_bop4552, -1
  %_x4554 = load i64, i64* %_x4548
  %_y4555 = load i64, i64* %_y4549
  %_bop4556 = or i64 %_x4554, %_y4555
  %_bop4557 = and i64 %_uop4553, %_bop4556
  ret i64 %_bop4557
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_x4509 = alloca i64
  %_y4514 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s4504
  %_s4504 = alloca { i64, [0 x i64] }*
  %_s4508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4505
  %_ptr4506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4508, i32 0, i32 1, i32 0
  %_resPtr4507 = load i64, i64* %_ptr4506
  store i64 %_resPtr4507, i64* %_x4509
  %_s4513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4505
  %_ptr4511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4513, i32 0, i32 1, i32 1
  %_resPtr4512 = load i64, i64* %_ptr4511
  store i64 %_resPtr4512, i64* %_y4514
  %_y4516 = load i64, i64* %_y4514
  %_s4517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4505
  %_ptr4518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4517, i32 0, i32 1, i32 0
  store i64 %_y4516, i64* %_ptr4518
  %_x4520 = load i64, i64* %_x4509
  %_x4521 = load i64, i64* %_x4509
  %_bop4522 = shl i64 %_x4521, 23
  %_id4523 = call i64 @xor(i64 %_x4520, i64 %_bop4522)
  store i64 %_id4523, i64* %_x4509
  %_x4525 = load i64, i64* %_x4509
  %_x4526 = load i64, i64* %_x4509
  %_bop4527 = lshr i64 %_x4526, 17
  %_id4528 = call i64 @xor(i64 %_x4525, i64 %_bop4527)
  store i64 %_id4528, i64* %_x4509
  %_x4530 = load i64, i64* %_x4509
  %_y4531 = load i64, i64* %_y4514
  %_y4532 = load i64, i64* %_y4514
  %_bop4533 = lshr i64 %_y4532, 26
  %_id4534 = call i64 @xor(i64 %_y4531, i64 %_bop4533)
  %_id4535 = call i64 @xor(i64 %_x4530, i64 %_id4534)
  store i64 %_id4535, i64* %_x4509
  %_x4537 = load i64, i64* %_x4509
  %_s4538 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4505
  %_ptr4539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4538, i32 0, i32 1, i32 1
  store i64 %_x4537, i64* %_ptr4539
  %_x4541 = load i64, i64* %_x4509
  %_y4542 = load i64, i64* %_y4514
  %_bop4543 = add i64 %_x4541, %_y4542
  ret i64 %_bop4543
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_seed4473 = alloca { i64, [0 x i64] }*
  %_i4475 = alloca i64
  store i64 %argc, i64* %_argc4466
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4468
  %_argv4468 = alloca { i64, [0 x i8*] }*
  %_argc4466 = alloca i64
  %_raw_array4471 = call i64* @oat_alloc_array(i64 2)
  %_array4472 = bitcast i64* %_raw_array4471 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4472, { i64, [0 x i64] }** %_seed4473
  store i64 0, i64* %_i4475
  br label %_pre4480
_pre4480:
  %_i4477 = load i64, i64* %_i4475
  %_bop4478 = icmp slt i64 %_i4477, 2
  %_cnd4482 = icmp eq i1 %_bop4478, 0
  br i1 %_cnd4482, label %_post4479, label %_body4481
_body4481:
  %_i4483 = load i64, i64* %_i4475
  %_bop4484 = add i64 %_i4483, 1
  %_bop4485 = mul i64 100, %_bop4484
  %_seed4486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4473
  %_i4487 = load i64, i64* %_i4475
  %_ptr4488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4486, i32 0, i32 1, i64 %_i4487
  store i64 %_bop4485, i64* %_ptr4488
  %_i4490 = load i64, i64* %_i4475
  %_bop4491 = add i64 %_i4490, 1
  store i64 %_bop4491, i64* %_i4475
  br label %_pre4480
_post4479:
  %_seed4493 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4473
  %_id4494 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4493)
  call void @print_int(i64 %_id4494)
  %_tmp4498 = load i8*, i8** @_s4497
  call void @print_string(i8* %_tmp4498)
  %_seed4500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4473
  %_id4501 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4500)
  call void @print_int(i64 %_id4501)
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
