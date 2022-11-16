; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_arr4514 = alloca { i64, [0 x i1] }*
  %_i4516 = alloca i64
  %_i4538 = alloca i64
  %_j4557 = alloca i64
  %_count4577 = alloca i64
  %_i4579 = alloca i64
  %_n4509 = alloca i64
  store i64 %n, i64* %_n4509
  %_n4511 = load i64, i64* %_n4510
  %_raw_array4512 = call i64* @oat_alloc_array(i64 %_n4511)
  %_array4513 = bitcast i64* %_raw_array4512 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4513, { i64, [0 x i1] }** %_arr4514
  store i64 0, i64* %_i4516
  br label %_pre4522
_pre4522:
  %_cnd4524 = icmp eq i1 %_bop4520, 0
  br i1 %_cnd4524, label %_post4521, label %_body4523
_body4523:
  %_i4518 = load i64, i64* %_i4516
  %_n4519 = load i64, i64* %_n4510
  %_bop4520 = icmp slt i64 %_i4518, %_n4519
  %_arr4525 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4514
  %_i4526 = load i64, i64* %_i4516
  %_ptr4527 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4525, i32 0, i32 1, i64 %_i4526
  store i1 1, i1* %_ptr4527
  %_i4529 = load i64, i64* %_i4516
  %_bop4530 = add i64 %_i4529, 1
  store i64 %_bop4530, i64* %_i4516
  br label %_pre4522
_post4521:
  %_arr4532 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4514
  %_ptr4533 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4532, i32 0, i32 1, i32 0
  store i1 0, i1* %_ptr4533
  %_arr4535 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4514
  %_ptr4536 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4535, i32 0, i32 1, i32 1
  store i1 0, i1* %_ptr4536
  store i64 0, i64* %_i4538
  br label %_pre4544
_pre4544:
  %_cnd4546 = icmp eq i1 %_bop4542, 0
  br i1 %_cnd4546, label %_post4543, label %_body4545
_body4545:
  %_i4540 = load i64, i64* %_i4538
  %_n4541 = load i64, i64* %_n4510
  %_bop4542 = icmp slt i64 %_i4540, %_n4541
  %_arr4549 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4514
  %_i4550 = load i64, i64* %_i4538
  %_ptr4547 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4549, i32 0, i32 1, i64 %_i4550
  %_resPtr4548 = load i1, i1* %_ptr4547
  br i1 %_resPtr4548, label %_if4553, label %_else4552
_if4553:
  %_i4555 = load i64, i64* %_i4538
  %_bop4556 = mul i64 %_i4555, 2
  store i64 %_bop4556, i64* %_j4557
  br label %_pre4563
_pre4563:
  %_cnd4565 = icmp eq i1 %_bop4561, 0
  br i1 %_cnd4565, label %_post4562, label %_body4564
_body4564:
  %_j4559 = load i64, i64* %_j4557
  %_n4560 = load i64, i64* %_n4510
  %_bop4561 = icmp slt i64 %_j4559, %_n4560
  %_arr4566 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4514
  %_j4567 = load i64, i64* %_j4557
  %_ptr4568 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4566, i32 0, i32 1, i64 %_j4567
  store i1 0, i1* %_ptr4568
  %_j4570 = load i64, i64* %_j4557
  %_i4571 = load i64, i64* %_i4538
  %_bop4572 = add i64 %_j4570, %_i4571
  store i64 %_bop4572, i64* %_j4557
  br label %_pre4563
_post4562:
  br label %_after4551
_else4552:
  br label %_after4551
_after4551:
  %_i4574 = load i64, i64* %_i4538
  %_bop4575 = add i64 %_i4574, 1
  store i64 %_bop4575, i64* %_i4538
  br label %_pre4544
_post4543:
  store i64 0, i64* %_count4577
  store i64 0, i64* %_i4579
  br label %_pre4585
_pre4585:
  %_cnd4587 = icmp eq i1 %_bop4583, 0
  br i1 %_cnd4587, label %_post4584, label %_body4586
_body4586:
  %_i4581 = load i64, i64* %_i4579
  %_n4582 = load i64, i64* %_n4510
  %_bop4583 = icmp slt i64 %_i4581, %_n4582
  %_arr4590 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4514
  %_i4591 = load i64, i64* %_i4579
  %_ptr4588 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4590, i32 0, i32 1, i64 %_i4591
  %_resPtr4589 = load i1, i1* %_ptr4588
  br i1 %_resPtr4589, label %_if4594, label %_else4593
_if4594:
  %_count4596 = load i64, i64* %_count4577
  %_bop4597 = add i64 %_count4596, 1
  store i64 %_bop4597, i64* %_count4577
  br label %_after4592
_else4593:
  br label %_after4592
_after4592:
  %_i4599 = load i64, i64* %_i4579
  %_bop4600 = add i64 %_i4599, 1
  store i64 %_bop4600, i64* %_i4579
  br label %_pre4585
_post4584:
  %_count4602 = load i64, i64* %_count4577
  ret i64 %_count4602
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_n4504 = alloca i64
  %_argc4499 = alloca i64
  %_argv4501 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4501
  store i64 %argc, i64* %_argc4499
  store i64 100, i64* %_n4504
  %_n4506 = load i64, i64* %_n4504
  %_id4507 = call i64 @sieve(i64 %_n4506)
  ret i64 %_id4507
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
