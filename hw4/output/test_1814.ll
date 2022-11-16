; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_arr4574 = alloca { i64, [0 x i1] }*
  %_i4576 = alloca i64
  %_i4598 = alloca i64
  %_j4617 = alloca i64
  %_count4637 = alloca i64
  %_i4639 = alloca i64
  store i64 %n, i64* %_n4569
  %_n4569 = alloca i64
  %_n4571 = load i64, i64* %_n4570
  %_raw_array4572 = call i64* @oat_alloc_array(i64 %_n4571)
  %_array4573 = bitcast i64* %_raw_array4572 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4573, { i64, [0 x i1] }** %_arr4574
  store i64 0, i64* %_i4576
  br label %_pre4582
_pre4582:
  %_i4578 = load i64, i64* %_i4576
  %_n4579 = load i64, i64* %_n4570
  %_bop4580 = icmp slt i64 %_i4578, %_n4579
  %_cnd4584 = icmp eq i1 %_bop4580, 0
  br i1 %_cnd4584, label %_post4581, label %_body4583
_body4583:
  %_arr4585 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4574
  %_i4586 = load i64, i64* %_i4576
  %_ptr4587 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4585, i32 0, i32 1, i64 %_i4586
  store i1 1, i1* %_ptr4587
  %_i4589 = load i64, i64* %_i4576
  %_bop4590 = add i64 %_i4589, 1
  store i64 %_bop4590, i64* %_i4576
  br label %_pre4582
_post4581:
  %_arr4592 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4574
  %_ptr4593 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4592, i32 0, i32 1, i32 0
  store i1 0, i1* %_ptr4593
  %_arr4595 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4574
  %_ptr4596 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4595, i32 0, i32 1, i32 1
  store i1 0, i1* %_ptr4596
  store i64 0, i64* %_i4598
  br label %_pre4604
_pre4604:
  %_i4600 = load i64, i64* %_i4598
  %_n4601 = load i64, i64* %_n4570
  %_bop4602 = icmp slt i64 %_i4600, %_n4601
  %_cnd4606 = icmp eq i1 %_bop4602, 0
  br i1 %_cnd4606, label %_post4603, label %_body4605
_body4605:
  %_arr4609 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4574
  %_i4610 = load i64, i64* %_i4598
  %_ptr4607 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4609, i32 0, i32 1, i64 %_i4610
  %_resPtr4608 = load i1, i1* %_ptr4607
  br i1 %_resPtr4608, label %_if4613, label %_else4612
_if4613:
  %_i4615 = load i64, i64* %_i4598
  %_bop4616 = mul i64 %_i4615, 2
  store i64 %_bop4616, i64* %_j4617
  br label %_pre4623
_pre4623:
  %_j4619 = load i64, i64* %_j4617
  %_n4620 = load i64, i64* %_n4570
  %_bop4621 = icmp slt i64 %_j4619, %_n4620
  %_cnd4625 = icmp eq i1 %_bop4621, 0
  br i1 %_cnd4625, label %_post4622, label %_body4624
_body4624:
  %_arr4626 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4574
  %_j4627 = load i64, i64* %_j4617
  %_ptr4628 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4626, i32 0, i32 1, i64 %_j4627
  store i1 0, i1* %_ptr4628
  %_j4630 = load i64, i64* %_j4617
  %_i4631 = load i64, i64* %_i4598
  %_bop4632 = add i64 %_j4630, %_i4631
  store i64 %_bop4632, i64* %_j4617
  br label %_pre4623
_post4622:
  br label %_after4611
_else4612:
  br label %_after4611
_after4611:
  %_i4634 = load i64, i64* %_i4598
  %_bop4635 = add i64 %_i4634, 1
  store i64 %_bop4635, i64* %_i4598
  br label %_pre4604
_post4603:
  store i64 0, i64* %_count4637
  store i64 0, i64* %_i4639
  br label %_pre4645
_pre4645:
  %_i4641 = load i64, i64* %_i4639
  %_n4642 = load i64, i64* %_n4570
  %_bop4643 = icmp slt i64 %_i4641, %_n4642
  %_cnd4647 = icmp eq i1 %_bop4643, 0
  br i1 %_cnd4647, label %_post4644, label %_body4646
_body4646:
  %_arr4650 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4574
  %_i4651 = load i64, i64* %_i4639
  %_ptr4648 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4650, i32 0, i32 1, i64 %_i4651
  %_resPtr4649 = load i1, i1* %_ptr4648
  br i1 %_resPtr4649, label %_if4654, label %_else4653
_if4654:
  %_count4656 = load i64, i64* %_count4637
  %_bop4657 = add i64 %_count4656, 1
  store i64 %_bop4657, i64* %_count4637
  br label %_after4652
_else4653:
  br label %_after4652
_after4652:
  %_i4659 = load i64, i64* %_i4639
  %_bop4660 = add i64 %_i4659, 1
  store i64 %_bop4660, i64* %_i4639
  br label %_pre4645
_post4644:
  %_count4662 = load i64, i64* %_count4637
  ret i64 %_count4662
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_n4564 = alloca i64
  store i64 %argc, i64* %_argc4559
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4561
  %_argv4561 = alloca { i64, [0 x i8*] }*
  %_argc4559 = alloca i64
  store i64 100, i64* %_n4564
  %_n4566 = load i64, i64* %_n4564
  %_id4567 = call i64 @sieve(i64 %_n4566)
  ret i64 %_id4567
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
