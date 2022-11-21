; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_s4700 = global [2 x i8] c"
\00"
@_s4701 = global i8* bitcast ([2 x i8]* @_s4700 to i8*)

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min4862 = alloca i64
  %_i4864 = alloca i64
  %_arr4856 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4856
  %_len4858 = alloca i64
  store i64 %len, i64* %_len4858
  %_arr4861 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4856
  %_ptr4859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4861, i32 0, i32 1, i32 0
  %_resPtr4860 = load i64, i64* %_ptr4859
  store i64 %_resPtr4860, i64* %_min4862
  store i64 0, i64* %_i4864
  br label %_pre4870
_pre4870:
  %_i4866 = load i64, i64* %_i4864
  %_len4867 = load i64, i64* %_len4858
  %_bop4868 = icmp slt i64 %_i4866, %_len4867
  %_cnd4872 = icmp eq i1 %_bop4868, 0
  br i1 %_cnd4872, label %_post4869, label %_body4871
_body4871:
  %_arr4875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4856
  %_i4876 = load i64, i64* %_i4864
  %_ptr4873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4875, i32 0, i32 1, i64 %_i4876
  %_resPtr4874 = load i64, i64* %_ptr4873
  %_min4877 = load i64, i64* %_min4862
  %_bop4878 = icmp slt i64 %_resPtr4874, %_min4877
  br i1 %_bop4878, label %_if4881, label %_else4880
_if4881:
  %_arr4885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4856
  %_i4886 = load i64, i64* %_i4864
  %_ptr4883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4885, i32 0, i32 1, i64 %_i4886
  %_resPtr4884 = load i64, i64* %_ptr4883
  store i64 %_resPtr4884, i64* %_min4862
  br label %_after4879
_else4880:
  br label %_after4879
_after4879:
  %_i4888 = load i64, i64* %_i4864
  %_bop4889 = add i64 %_i4888, 1
  store i64 %_bop4889, i64* %_i4864
  br label %_pre4870
_post4869:
  %_min4891 = load i64, i64* %_min4862
  ret i64 %_min4891
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_max4825 = alloca i64
  %_i4827 = alloca i64
  %_arr4819 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4819
  %_len4821 = alloca i64
  store i64 %len, i64* %_len4821
  %_arr4824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4819
  %_ptr4822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4824, i32 0, i32 1, i32 0
  %_resPtr4823 = load i64, i64* %_ptr4822
  store i64 %_resPtr4823, i64* %_max4825
  store i64 0, i64* %_i4827
  br label %_pre4833
_pre4833:
  %_i4829 = load i64, i64* %_i4827
  %_len4830 = load i64, i64* %_len4821
  %_bop4831 = icmp slt i64 %_i4829, %_len4830
  %_cnd4835 = icmp eq i1 %_bop4831, 0
  br i1 %_cnd4835, label %_post4832, label %_body4834
_body4834:
  %_arr4838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4819
  %_i4839 = load i64, i64* %_i4827
  %_ptr4836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4838, i32 0, i32 1, i64 %_i4839
  %_resPtr4837 = load i64, i64* %_ptr4836
  %_max4840 = load i64, i64* %_max4825
  %_bop4841 = icmp sgt i64 %_resPtr4837, %_max4840
  br i1 %_bop4841, label %_if4844, label %_else4843
_if4844:
  %_arr4848 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4819
  %_i4849 = load i64, i64* %_i4827
  %_ptr4846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4848, i32 0, i32 1, i64 %_i4849
  %_resPtr4847 = load i64, i64* %_ptr4846
  store i64 %_resPtr4847, i64* %_max4825
  br label %_after4842
_else4843:
  br label %_after4842
_after4842:
  %_i4851 = load i64, i64* %_i4827
  %_bop4852 = add i64 %_i4851, 1
  store i64 %_bop4852, i64* %_i4827
  br label %_pre4833
_post4832:
  %_max4854 = load i64, i64* %_max4825
  ret i64 %_max4854
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min4719 = alloca i64
  %_max4724 = alloca i64
  %_counts4732 = alloca { i64, [0 x i64] }*
  %_i4734 = alloca i64
  %_i4766 = alloca i64
  %_j4768 = alloca i64
  %_out4773 = alloca { i64, [0 x i64] }*
  %_arr4713 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4713
  %_len4715 = alloca i64
  store i64 %len, i64* %_len4715
  %_arr4716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4713
  %_len4717 = load i64, i64* %_len4715
  %_4718 = call i64 @min({ i64, [0 x i64] }* %_arr4716, i64 %_len4717)
  store i64 %_4718, i64* %_min4719
  %_arr4721 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4713
  %_len4722 = load i64, i64* %_len4715
  %_4723 = call i64 @max({ i64, [0 x i64] }* %_arr4721, i64 %_len4722)
  store i64 %_4723, i64* %_max4724
  %_max4726 = load i64, i64* %_max4724
  %_min4727 = load i64, i64* %_min4719
  %_bop4728 = sub i64 %_max4726, %_min4727
  %_bop4729 = add i64 %_bop4728, 1
  %_raw_array4730 = call i64* @oat_alloc_array(i64 %_bop4729)
  %_array4731 = bitcast i64* %_raw_array4730 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4731, { i64, [0 x i64] }** %_counts4732
  store i64 0, i64* %_i4734
  br label %_pre4740
_pre4740:
  %_i4736 = load i64, i64* %_i4734
  %_len4737 = load i64, i64* %_len4715
  %_bop4738 = icmp slt i64 %_i4736, %_len4737
  %_cnd4742 = icmp eq i1 %_bop4738, 0
  br i1 %_cnd4742, label %_post4739, label %_body4741
_body4741:
  %_counts4745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4732
  %_arr4748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4713
  %_i4749 = load i64, i64* %_i4734
  %_ptr4746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4748, i32 0, i32 1, i64 %_i4749
  %_resPtr4747 = load i64, i64* %_ptr4746
  %_min4750 = load i64, i64* %_min4719
  %_bop4751 = sub i64 %_resPtr4747, %_min4750
  %_ptr4743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4745, i32 0, i32 1, i64 %_bop4751
  %_resPtr4744 = load i64, i64* %_ptr4743
  %_bop4752 = add i64 %_resPtr4744, 1
  %_counts4753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4732
  %_arr4756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4713
  %_i4757 = load i64, i64* %_i4734
  %_ptr4754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4756, i32 0, i32 1, i64 %_i4757
  %_resPtr4755 = load i64, i64* %_ptr4754
  %_min4758 = load i64, i64* %_min4719
  %_bop4759 = sub i64 %_resPtr4755, %_min4758
  %_ptr4760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4753, i32 0, i32 1, i64 %_bop4759
  store i64 %_bop4752, i64* %_ptr4760
  %_i4762 = load i64, i64* %_i4734
  %_bop4763 = add i64 %_i4762, 1
  store i64 %_bop4763, i64* %_i4734
  br label %_pre4740
_post4739:
  %_min4765 = load i64, i64* %_min4719
  store i64 %_min4765, i64* %_i4766
  store i64 0, i64* %_j4768
  %_len4770 = load i64, i64* %_len4715
  %_raw_array4771 = call i64* @oat_alloc_array(i64 %_len4770)
  %_array4772 = bitcast i64* %_raw_array4771 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4772, { i64, [0 x i64] }** %_out4773
  br label %_pre4779
_pre4779:
  %_i4775 = load i64, i64* %_i4766
  %_max4776 = load i64, i64* %_max4724
  %_bop4777 = icmp sle i64 %_i4775, %_max4776
  %_cnd4781 = icmp eq i1 %_bop4777, 0
  br i1 %_cnd4781, label %_post4778, label %_body4780
_body4780:
  %_counts4784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4732
  %_i4785 = load i64, i64* %_i4766
  %_min4786 = load i64, i64* %_min4719
  %_bop4787 = sub i64 %_i4785, %_min4786
  %_ptr4782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4784, i32 0, i32 1, i64 %_bop4787
  %_resPtr4783 = load i64, i64* %_ptr4782
  %_bop4788 = icmp sgt i64 %_resPtr4783, 0
  br i1 %_bop4788, label %_if4791, label %_else4790
_if4791:
  %_i4796 = load i64, i64* %_i4766
  %_out4797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4773
  %_j4798 = load i64, i64* %_j4768
  %_ptr4799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4797, i32 0, i32 1, i64 %_j4798
  store i64 %_i4796, i64* %_ptr4799
  %_counts4803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4732
  %_i4804 = load i64, i64* %_i4766
  %_min4805 = load i64, i64* %_min4719
  %_bop4806 = sub i64 %_i4804, %_min4805
  %_ptr4801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4803, i32 0, i32 1, i64 %_bop4806
  %_resPtr4802 = load i64, i64* %_ptr4801
  %_bop4807 = sub i64 %_resPtr4802, 1
  %_counts4808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4732
  %_i4809 = load i64, i64* %_i4766
  %_min4810 = load i64, i64* %_min4719
  %_bop4811 = sub i64 %_i4809, %_min4810
  %_ptr4812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4808, i32 0, i32 1, i64 %_bop4811
  store i64 %_bop4807, i64* %_ptr4812
  %_j4814 = load i64, i64* %_j4768
  %_bop4815 = add i64 %_j4814, 1
  store i64 %_bop4815, i64* %_j4768
  br label %_after4789
_else4790:
  %_i4793 = load i64, i64* %_i4766
  %_bop4794 = add i64 %_i4793, 1
  store i64 %_bop4794, i64* %_i4766
  br label %_after4789
_after4789:
  br label %_pre4779
_post4778:
  %_out4817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4773
  ret { i64, [0 x i64] }* %_out4817
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr4693 = alloca { i64, [0 x i64] }*
  %_len4695 = alloca i64
  %_sorted4707 = alloca { i64, [0 x i64] }*
  %_argc4670 = alloca i64
  store i64 %argc, i64* %_argc4670
  %_argv4672 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4672
  %_raw_array4673 = call i64* @oat_alloc_array(i64 9)
  %_array4674 = bitcast i64* %_raw_array4673 to { i64, [0 x i64] }*
  %_gep4675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 0
  store i64 65, i64* %_gep4675
  %_gep4677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 1
  store i64 70, i64* %_gep4677
  %_gep4679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 2
  store i64 72, i64* %_gep4679
  %_gep4681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 3
  store i64 90, i64* %_gep4681
  %_gep4683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 4
  store i64 65, i64* %_gep4683
  %_gep4685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 5
  store i64 65, i64* %_gep4685
  %_gep4687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 6
  store i64 69, i64* %_gep4687
  %_gep4689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 7
  store i64 89, i64* %_gep4689
  %_gep4691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4674, i32 0, i32 1, i32 8
  store i64 67, i64* %_gep4691
  store { i64, [0 x i64] }* %_array4674, { i64, [0 x i64] }** %_arr4693
  store i64 9, i64* %_len4695
  %_arr4697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4693
  %_4698 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4697)
  call void @print_string(i8* %_4698)
  %_tmp4702 = load i8*, i8** @_s4701
  call void @print_string(i8* %_tmp4702)
  %_arr4704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4693
  %_len4705 = load i64, i64* %_len4695
  %_4706 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4704, i64 %_len4705)
  store { i64, [0 x i64] }* %_4706, { i64, [0 x i64] }** %_sorted4707
  %_sorted4709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4707
  %_4710 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4709)
  call void @print_string(i8* %_4710)
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
