; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min4801 = alloca i64
  %_i4803 = alloca i64
  %_arr4793 = alloca { i64, [0 x i64] }*
  %_len4795 = alloca i64
  store i64 %len, i64* %_len4795
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4793
  %_arr4800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4796
  %_ptr4798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4800, i32 0, i32 1, i32 0
  %_resPtr4799 = load i64, i64* %_ptr4798
  store i64 %_resPtr4799, i64* %_min4801
  store i64 0, i64* %_i4803
  br label %_pre4809
_pre4809:
  %_cnd4811 = icmp eq i1 %_bop4807, 0
  br i1 %_cnd4811, label %_post4808, label %_body4810
_body4810:
  %_i4805 = load i64, i64* %_i4803
  %_len4806 = load i64, i64* %_len4797
  %_bop4807 = icmp slt i64 %_i4805, %_len4806
  %_arr4814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4796
  %_i4815 = load i64, i64* %_i4803
  %_ptr4812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4814, i32 0, i32 1, i64 %_i4815
  %_resPtr4813 = load i64, i64* %_ptr4812
  %_min4816 = load i64, i64* %_min4801
  %_bop4817 = icmp slt i64 %_resPtr4813, %_min4816
  br i1 %_bop4817, label %_if4820, label %_else4819
_if4820:
  %_arr4824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4796
  %_i4825 = load i64, i64* %_i4803
  %_ptr4822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4824, i32 0, i32 1, i64 %_i4825
  %_resPtr4823 = load i64, i64* %_ptr4822
  store i64 %_resPtr4823, i64* %_min4801
  br label %_after4818
_else4819:
  br label %_after4818
_after4818:
  %_i4827 = load i64, i64* %_i4803
  %_bop4828 = add i64 %_i4827, 1
  store i64 %_bop4828, i64* %_i4803
  br label %_pre4809
_post4808:
  %_min4830 = load i64, i64* %_min4801
  ret i64 %_min4830
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_max4762 = alloca i64
  %_i4764 = alloca i64
  %_arr4754 = alloca { i64, [0 x i64] }*
  %_len4756 = alloca i64
  store i64 %len, i64* %_len4756
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4754
  %_arr4761 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4757
  %_ptr4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4761, i32 0, i32 1, i32 0
  %_resPtr4760 = load i64, i64* %_ptr4759
  store i64 %_resPtr4760, i64* %_max4762
  store i64 0, i64* %_i4764
  br label %_pre4770
_pre4770:
  %_cnd4772 = icmp eq i1 %_bop4768, 0
  br i1 %_cnd4772, label %_post4769, label %_body4771
_body4771:
  %_i4766 = load i64, i64* %_i4764
  %_len4767 = load i64, i64* %_len4758
  %_bop4768 = icmp slt i64 %_i4766, %_len4767
  %_arr4775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4757
  %_i4776 = load i64, i64* %_i4764
  %_ptr4773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4775, i32 0, i32 1, i64 %_i4776
  %_resPtr4774 = load i64, i64* %_ptr4773
  %_max4777 = load i64, i64* %_max4762
  %_bop4778 = icmp sgt i64 %_resPtr4774, %_max4777
  br i1 %_bop4778, label %_if4781, label %_else4780
_if4781:
  %_arr4785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4757
  %_i4786 = load i64, i64* %_i4764
  %_ptr4783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4785, i32 0, i32 1, i64 %_i4786
  %_resPtr4784 = load i64, i64* %_ptr4783
  store i64 %_resPtr4784, i64* %_max4762
  br label %_after4779
_else4780:
  br label %_after4779
_after4779:
  %_i4788 = load i64, i64* %_i4764
  %_bop4789 = add i64 %_i4788, 1
  store i64 %_bop4789, i64* %_i4764
  br label %_pre4770
_post4769:
  %_max4791 = load i64, i64* %_max4762
  ret i64 %_max4791
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min4654 = alloca i64
  %_max4659 = alloca i64
  %_counts4667 = alloca { i64, [0 x i64] }*
  %_i4669 = alloca i64
  %_i4701 = alloca i64
  %_j4703 = alloca i64
  %_out4708 = alloca { i64, [0 x i64] }*
  %_arr4646 = alloca { i64, [0 x i64] }*
  %_len4648 = alloca i64
  store i64 %len, i64* %_len4648
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4646
  %_arr4651 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4649
  %_len4652 = load i64, i64* %_len4650
  %_id4653 = call i64 @min({ i64, [0 x i64] }* %_arr4651, i64 %_len4652)
  store i64 %_id4653, i64* %_min4654
  %_arr4656 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4649
  %_len4657 = load i64, i64* %_len4650
  %_id4658 = call i64 @max({ i64, [0 x i64] }* %_arr4656, i64 %_len4657)
  store i64 %_id4658, i64* %_max4659
  %_max4661 = load i64, i64* %_max4659
  %_min4662 = load i64, i64* %_min4654
  %_bop4663 = sub i64 %_max4661, %_min4662
  %_bop4664 = add i64 %_bop4663, 1
  %_raw_array4665 = call i64* @oat_alloc_array(i64 %_bop4664)
  %_array4666 = bitcast i64* %_raw_array4665 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4666, { i64, [0 x i64] }** %_counts4667
  store i64 0, i64* %_i4669
  br label %_pre4675
_pre4675:
  %_cnd4677 = icmp eq i1 %_bop4673, 0
  br i1 %_cnd4677, label %_post4674, label %_body4676
_body4676:
  %_i4671 = load i64, i64* %_i4669
  %_len4672 = load i64, i64* %_len4650
  %_bop4673 = icmp slt i64 %_i4671, %_len4672
  %_counts4680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4667
  %_arr4683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4649
  %_i4684 = load i64, i64* %_i4669
  %_ptr4681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4683, i32 0, i32 1, i64 %_i4684
  %_resPtr4682 = load i64, i64* %_ptr4681
  %_min4685 = load i64, i64* %_min4654
  %_bop4686 = sub i64 %_resPtr4682, %_min4685
  %_ptr4678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4680, i32 0, i32 1, i64 %_bop4686
  %_resPtr4679 = load i64, i64* %_ptr4678
  %_bop4687 = add i64 %_resPtr4679, 1
  %_counts4688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4667
  %_arr4691 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4649
  %_i4692 = load i64, i64* %_i4669
  %_ptr4689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4691, i32 0, i32 1, i64 %_i4692
  %_resPtr4690 = load i64, i64* %_ptr4689
  %_min4693 = load i64, i64* %_min4654
  %_bop4694 = sub i64 %_resPtr4690, %_min4693
  %_ptr4695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4688, i32 0, i32 1, i64 %_bop4694
  store i64 %_bop4687, i64* %_ptr4695
  %_i4697 = load i64, i64* %_i4669
  %_bop4698 = add i64 %_i4697, 1
  store i64 %_bop4698, i64* %_i4669
  br label %_pre4675
_post4674:
  %_min4700 = load i64, i64* %_min4654
  store i64 %_min4700, i64* %_i4701
  store i64 0, i64* %_j4703
  %_len4705 = load i64, i64* %_len4650
  %_raw_array4706 = call i64* @oat_alloc_array(i64 %_len4705)
  %_array4707 = bitcast i64* %_raw_array4706 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4707, { i64, [0 x i64] }** %_out4708
  br label %_pre4714
_pre4714:
  %_cnd4716 = icmp eq i1 %_bop4712, 0
  br i1 %_cnd4716, label %_post4713, label %_body4715
_body4715:
  %_i4710 = load i64, i64* %_i4701
  %_max4711 = load i64, i64* %_max4659
  %_bop4712 = icmp sle i64 %_i4710, %_max4711
  %_counts4719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4667
  %_i4720 = load i64, i64* %_i4701
  %_min4721 = load i64, i64* %_min4654
  %_bop4722 = sub i64 %_i4720, %_min4721
  %_ptr4717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4719, i32 0, i32 1, i64 %_bop4722
  %_resPtr4718 = load i64, i64* %_ptr4717
  %_bop4723 = icmp sgt i64 %_resPtr4718, 0
  br i1 %_bop4723, label %_if4726, label %_else4725
_if4726:
  %_i4731 = load i64, i64* %_i4701
  %_out4732 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4708
  %_j4733 = load i64, i64* %_j4703
  %_ptr4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4732, i32 0, i32 1, i64 %_j4733
  store i64 %_i4731, i64* %_ptr4734
  %_counts4738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4667
  %_i4739 = load i64, i64* %_i4701
  %_min4740 = load i64, i64* %_min4654
  %_bop4741 = sub i64 %_i4739, %_min4740
  %_ptr4736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4738, i32 0, i32 1, i64 %_bop4741
  %_resPtr4737 = load i64, i64* %_ptr4736
  %_bop4742 = sub i64 %_resPtr4737, 1
  %_counts4743 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4667
  %_i4744 = load i64, i64* %_i4701
  %_min4745 = load i64, i64* %_min4654
  %_bop4746 = sub i64 %_i4744, %_min4745
  %_ptr4747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4743, i32 0, i32 1, i64 %_bop4746
  store i64 %_bop4742, i64* %_ptr4747
  %_j4749 = load i64, i64* %_j4703
  %_bop4750 = add i64 %_j4749, 1
  store i64 %_bop4750, i64* %_j4703
  br label %_after4724
_else4725:
  %_i4728 = load i64, i64* %_i4701
  %_bop4729 = add i64 %_i4728, 1
  store i64 %_bop4729, i64* %_i4701
  br label %_after4724
_after4724:
  br label %_pre4714
_post4713:
  %_out4752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4708
  ret { i64, [0 x i64] }* %_out4752
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr4629 = alloca { i64, [0 x i64] }*
  %_len4631 = alloca i64
  %_sorted4640 = alloca { i64, [0 x i64] }*
  %_argc4604 = alloca i64
  %_argv4606 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4606
  store i64 %argc, i64* %_argc4604
  %_raw_array4609 = call i64* @oat_alloc_array(i64 9)
  %_array4610 = bitcast i64* %_raw_array4609 to { i64, [0 x i64] }*
  %_gep4611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 0
  store i64 65, i64* %_gep4611
  %_gep4613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 1
  store i64 70, i64* %_gep4613
  %_gep4615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 2
  store i64 72, i64* %_gep4615
  %_gep4617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 3
  store i64 90, i64* %_gep4617
  %_gep4619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 4
  store i64 65, i64* %_gep4619
  %_gep4621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 5
  store i64 65, i64* %_gep4621
  %_gep4623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 6
  store i64 69, i64* %_gep4623
  %_gep4625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 7
  store i64 89, i64* %_gep4625
  %_gep4627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4610, i32 0, i32 1, i32 8
  store i64 67, i64* %_gep4627
  store { i64, [0 x i64] }* %_array4610, { i64, [0 x i64] }** %_arr4629
  store i64 9, i64* %_len4631
  %_arr4633 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4629
  %_id4634 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4633)
  call void @print_string(i8* %_id4634)
  call void @print_string(void null)
  %_arr4637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4629
  %_len4638 = load i64, i64* %_len4631
  %_id4639 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4637, i64 %_len4638)
  store { i64, [0 x i64] }* %_id4639, { i64, [0 x i64] }** %_sorted4640
  %_sorted4642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4640
  %_id4643 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4642)
  call void @print_string(i8* %_id4643)
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
