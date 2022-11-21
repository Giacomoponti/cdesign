; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_arr4580 = alloca { i64, [0 x i1] }*
  %_i4582 = alloca i64
  %_i4604 = alloca i64
  %_j4623 = alloca i64
  %_count4643 = alloca i64
  %_i4645 = alloca i64
  %_n4576 = alloca i64
  store i64 %n, i64* %_n4576
  %_n4577 = load i64, i64* %_n4576
  %_raw_array4578 = call i64* @oat_alloc_array(i64 %_n4577)
  %_array4579 = bitcast i64* %_raw_array4578 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4579, { i64, [0 x i1] }** %_arr4580
  store i64 0, i64* %_i4582
  br label %_pre4588
_pre4588:
  %_i4584 = load i64, i64* %_i4582
  %_n4585 = load i64, i64* %_n4576
  %_bop4586 = icmp slt i64 %_i4584, %_n4585
  %_cnd4590 = icmp eq i1 %_bop4586, 0
  br i1 %_cnd4590, label %_post4587, label %_body4589
_body4589:
  %_arr4591 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4580
  %_i4592 = load i64, i64* %_i4582
  %_ptr4593 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4591, i32 0, i32 1, i64 %_i4592
  store i1 1, i1* %_ptr4593
  %_i4595 = load i64, i64* %_i4582
  %_bop4596 = add i64 %_i4595, 1
  store i64 %_bop4596, i64* %_i4582
  br label %_pre4588
_post4587:
  %_arr4598 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4580
  %_ptr4599 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4598, i32 0, i32 1, i32 0
  store i1 0, i1* %_ptr4599
  %_arr4601 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4580
  %_ptr4602 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4601, i32 0, i32 1, i32 1
  store i1 0, i1* %_ptr4602
  store i64 0, i64* %_i4604
  br label %_pre4610
_pre4610:
  %_i4606 = load i64, i64* %_i4604
  %_n4607 = load i64, i64* %_n4576
  %_bop4608 = icmp slt i64 %_i4606, %_n4607
  %_cnd4612 = icmp eq i1 %_bop4608, 0
  br i1 %_cnd4612, label %_post4609, label %_body4611
_body4611:
  %_arr4615 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4580
  %_i4616 = load i64, i64* %_i4604
  %_ptr4613 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4615, i32 0, i32 1, i64 %_i4616
  %_resPtr4614 = load i1, i1* %_ptr4613
  br i1 %_resPtr4614, label %_if4619, label %_else4618
_if4619:
  %_i4621 = load i64, i64* %_i4604
  %_bop4622 = mul i64 %_i4621, 2
  store i64 %_bop4622, i64* %_j4623
  br label %_pre4629
_pre4629:
  %_j4625 = load i64, i64* %_j4623
  %_n4626 = load i64, i64* %_n4576
  %_bop4627 = icmp slt i64 %_j4625, %_n4626
  %_cnd4631 = icmp eq i1 %_bop4627, 0
  br i1 %_cnd4631, label %_post4628, label %_body4630
_body4630:
  %_arr4632 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4580
  %_j4633 = load i64, i64* %_j4623
  %_ptr4634 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4632, i32 0, i32 1, i64 %_j4633
  store i1 0, i1* %_ptr4634
  %_j4636 = load i64, i64* %_j4623
  %_i4637 = load i64, i64* %_i4604
  %_bop4638 = add i64 %_j4636, %_i4637
  store i64 %_bop4638, i64* %_j4623
  br label %_pre4629
_post4628:
  br label %_after4617
_else4618:
  br label %_after4617
_after4617:
  %_i4640 = load i64, i64* %_i4604
  %_bop4641 = add i64 %_i4640, 1
  store i64 %_bop4641, i64* %_i4604
  br label %_pre4610
_post4609:
  store i64 0, i64* %_count4643
  store i64 0, i64* %_i4645
  br label %_pre4651
_pre4651:
  %_i4647 = load i64, i64* %_i4645
  %_n4648 = load i64, i64* %_n4576
  %_bop4649 = icmp slt i64 %_i4647, %_n4648
  %_cnd4653 = icmp eq i1 %_bop4649, 0
  br i1 %_cnd4653, label %_post4650, label %_body4652
_body4652:
  %_arr4656 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4580
  %_i4657 = load i64, i64* %_i4645
  %_ptr4654 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4656, i32 0, i32 1, i64 %_i4657
  %_resPtr4655 = load i1, i1* %_ptr4654
  br i1 %_resPtr4655, label %_if4660, label %_else4659
_if4660:
  %_count4662 = load i64, i64* %_count4643
  %_bop4663 = add i64 %_count4662, 1
  store i64 %_bop4663, i64* %_count4643
  br label %_after4658
_else4659:
  br label %_after4658
_after4658:
  %_i4665 = load i64, i64* %_i4645
  %_bop4666 = add i64 %_i4665, 1
  store i64 %_bop4666, i64* %_i4645
  br label %_pre4651
_post4650:
  %_count4668 = load i64, i64* %_count4643
  ret i64 %_count4668
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_n4571 = alloca i64
  %_argc4568 = alloca i64
  store i64 %argc, i64* %_argc4568
  %_argv4570 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4570
  store i64 100, i64* %_n4571
  %_n4573 = load i64, i64* %_n4571
  %_4574 = call i64 @sieve(i64 %_n4573)
  ret i64 %_4574
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
