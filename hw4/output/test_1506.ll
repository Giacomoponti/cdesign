; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_s4696 = global [2 x i8] c"
\00"
@_s4697 = global i8* bitcast ([2 x i8]* @_s4696 to i8*)

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min4864 = alloca i64
  %_i4866 = alloca i64
  %_arr4856 = alloca { i64, [0 x i64] }*
  %_len4858 = alloca i64
  store i64 %len, i64* %_len4858
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4856
  %_arr4863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4859
  %_ptr4861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4863, i32 0, i32 1, i32 0
  %_resPtr4862 = load i64, i64* %_ptr4861
  store i64 %_resPtr4862, i64* %_min4864
  store i64 0, i64* %_i4866
  br label %_pre4872
_pre4872:
  %_i4868 = load i64, i64* %_i4866
  %_len4869 = load i64, i64* %_len4860
  %_bop4870 = icmp slt i64 %_i4868, %_len4869
  %_cnd4874 = icmp eq i1 %_bop4870, 0
  br i1 %_cnd4874, label %_post4871, label %_body4873
_body4873:
  %_arr4877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4859
  %_i4878 = load i64, i64* %_i4866
  %_ptr4875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4877, i32 0, i32 1, i64 %_i4878
  %_resPtr4876 = load i64, i64* %_ptr4875
  %_min4879 = load i64, i64* %_min4864
  %_bop4880 = icmp slt i64 %_resPtr4876, %_min4879
  br i1 %_bop4880, label %_if4883, label %_else4882
_if4883:
  %_arr4887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4859
  %_i4888 = load i64, i64* %_i4866
  %_ptr4885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4887, i32 0, i32 1, i64 %_i4888
  %_resPtr4886 = load i64, i64* %_ptr4885
  store i64 %_resPtr4886, i64* %_min4864
  br label %_after4881
_else4882:
  br label %_after4881
_after4881:
  %_i4890 = load i64, i64* %_i4866
  %_bop4891 = add i64 %_i4890, 1
  store i64 %_bop4891, i64* %_i4866
  br label %_pre4872
_post4871:
  %_min4893 = load i64, i64* %_min4864
  ret i64 %_min4893
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_max4825 = alloca i64
  %_i4827 = alloca i64
  %_arr4817 = alloca { i64, [0 x i64] }*
  %_len4819 = alloca i64
  store i64 %len, i64* %_len4819
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4817
  %_arr4824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4820
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
  %_arr4838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4820
  %_i4839 = load i64, i64* %_i4827
  %_ptr4836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4838, i32 0, i32 1, i64 %_i4839
  %_resPtr4837 = load i64, i64* %_ptr4836
  %_max4840 = load i64, i64* %_max4825
  %_bop4841 = icmp sgt i64 %_resPtr4837, %_max4840
  br i1 %_bop4841, label %_if4844, label %_else4843
_if4844:
  %_arr4848 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4820
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
  %_min4717 = alloca i64
  %_max4722 = alloca i64
  %_counts4730 = alloca { i64, [0 x i64] }*
  %_i4732 = alloca i64
  %_i4764 = alloca i64
  %_j4766 = alloca i64
  %_out4771 = alloca { i64, [0 x i64] }*
  %_arr4709 = alloca { i64, [0 x i64] }*
  %_len4711 = alloca i64
  store i64 %len, i64* %_len4711
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4709
  %_arr4714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4712
  %_len4715 = load i64, i64* %_len4713
  %_id4716 = call i64 @min({ i64, [0 x i64] }* %_arr4714, i64 %_len4715)
  store i64 %_id4716, i64* %_min4717
  %_arr4719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4712
  %_len4720 = load i64, i64* %_len4713
  %_id4721 = call i64 @max({ i64, [0 x i64] }* %_arr4719, i64 %_len4720)
  store i64 %_id4721, i64* %_max4722
  %_max4724 = load i64, i64* %_max4722
  %_min4725 = load i64, i64* %_min4717
  %_bop4726 = sub i64 %_max4724, %_min4725
  %_bop4727 = add i64 %_bop4726, 1
  %_raw_array4728 = call i64* @oat_alloc_array(i64 %_bop4727)
  %_array4729 = bitcast i64* %_raw_array4728 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4729, { i64, [0 x i64] }** %_counts4730
  store i64 0, i64* %_i4732
  br label %_pre4738
_pre4738:
  %_i4734 = load i64, i64* %_i4732
  %_len4735 = load i64, i64* %_len4713
  %_bop4736 = icmp slt i64 %_i4734, %_len4735
  %_cnd4740 = icmp eq i1 %_bop4736, 0
  br i1 %_cnd4740, label %_post4737, label %_body4739
_body4739:
  %_counts4743 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4730
  %_arr4746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4712
  %_i4747 = load i64, i64* %_i4732
  %_ptr4744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4746, i32 0, i32 1, i64 %_i4747
  %_resPtr4745 = load i64, i64* %_ptr4744
  %_min4748 = load i64, i64* %_min4717
  %_bop4749 = sub i64 %_resPtr4745, %_min4748
  %_ptr4741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4743, i32 0, i32 1, i64 %_bop4749
  %_resPtr4742 = load i64, i64* %_ptr4741
  %_bop4750 = add i64 %_resPtr4742, 1
  %_counts4751 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4730
  %_arr4754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4712
  %_i4755 = load i64, i64* %_i4732
  %_ptr4752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4754, i32 0, i32 1, i64 %_i4755
  %_resPtr4753 = load i64, i64* %_ptr4752
  %_min4756 = load i64, i64* %_min4717
  %_bop4757 = sub i64 %_resPtr4753, %_min4756
  %_ptr4758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4751, i32 0, i32 1, i64 %_bop4757
  store i64 %_bop4750, i64* %_ptr4758
  %_i4760 = load i64, i64* %_i4732
  %_bop4761 = add i64 %_i4760, 1
  store i64 %_bop4761, i64* %_i4732
  br label %_pre4738
_post4737:
  %_min4763 = load i64, i64* %_min4717
  store i64 %_min4763, i64* %_i4764
  store i64 0, i64* %_j4766
  %_len4768 = load i64, i64* %_len4713
  %_raw_array4769 = call i64* @oat_alloc_array(i64 %_len4768)
  %_array4770 = bitcast i64* %_raw_array4769 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4770, { i64, [0 x i64] }** %_out4771
  br label %_pre4777
_pre4777:
  %_i4773 = load i64, i64* %_i4764
  %_max4774 = load i64, i64* %_max4722
  %_bop4775 = icmp sle i64 %_i4773, %_max4774
  %_cnd4779 = icmp eq i1 %_bop4775, 0
  br i1 %_cnd4779, label %_post4776, label %_body4778
_body4778:
  %_counts4782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4730
  %_i4783 = load i64, i64* %_i4764
  %_min4784 = load i64, i64* %_min4717
  %_bop4785 = sub i64 %_i4783, %_min4784
  %_ptr4780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4782, i32 0, i32 1, i64 %_bop4785
  %_resPtr4781 = load i64, i64* %_ptr4780
  %_bop4786 = icmp sgt i64 %_resPtr4781, 0
  br i1 %_bop4786, label %_if4789, label %_else4788
_if4789:
  %_i4794 = load i64, i64* %_i4764
  %_out4795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4771
  %_j4796 = load i64, i64* %_j4766
  %_ptr4797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4795, i32 0, i32 1, i64 %_j4796
  store i64 %_i4794, i64* %_ptr4797
  %_counts4801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4730
  %_i4802 = load i64, i64* %_i4764
  %_min4803 = load i64, i64* %_min4717
  %_bop4804 = sub i64 %_i4802, %_min4803
  %_ptr4799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4801, i32 0, i32 1, i64 %_bop4804
  %_resPtr4800 = load i64, i64* %_ptr4799
  %_bop4805 = sub i64 %_resPtr4800, 1
  %_counts4806 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4730
  %_i4807 = load i64, i64* %_i4764
  %_min4808 = load i64, i64* %_min4717
  %_bop4809 = sub i64 %_i4807, %_min4808
  %_ptr4810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4806, i32 0, i32 1, i64 %_bop4809
  store i64 %_bop4805, i64* %_ptr4810
  %_j4812 = load i64, i64* %_j4766
  %_bop4813 = add i64 %_j4812, 1
  store i64 %_bop4813, i64* %_j4766
  br label %_after4787
_else4788:
  %_i4791 = load i64, i64* %_i4764
  %_bop4792 = add i64 %_i4791, 1
  store i64 %_bop4792, i64* %_i4764
  br label %_after4787
_after4787:
  br label %_pre4777
_post4776:
  %_out4815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4771
  ret { i64, [0 x i64] }* %_out4815
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr4689 = alloca { i64, [0 x i64] }*
  %_len4691 = alloca i64
  %_sorted4703 = alloca { i64, [0 x i64] }*
  %_argc4664 = alloca i64
  %_argv4666 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4666
  store i64 %argc, i64* %_argc4664
  %_raw_array4669 = call i64* @oat_alloc_array(i64 9)
  %_array4670 = bitcast i64* %_raw_array4669 to { i64, [0 x i64] }*
  %_gep4671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 0
  store i64 67, i64* %_gep4671
  %_gep4673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 1
  store i64 89, i64* %_gep4673
  %_gep4675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 2
  store i64 69, i64* %_gep4675
  %_gep4677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep4677
  %_gep4679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 4
  store i64 65, i64* %_gep4679
  %_gep4681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 5
  store i64 90, i64* %_gep4681
  %_gep4683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 6
  store i64 72, i64* %_gep4683
  %_gep4685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 7
  store i64 70, i64* %_gep4685
  %_gep4687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4670, i32 0, i32 1, i32 8
  store i64 65, i64* %_gep4687
  store { i64, [0 x i64] }* %_array4670, { i64, [0 x i64] }** %_arr4689
  store i64 9, i64* %_len4691
  %_arr4693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4689
  %_id4694 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4693)
  call void @print_string(i8* %_id4694)
  %_tmp4698 = load i8*, i8** @_s4697
  call void @print_string(i8* %_tmp4698)
  %_arr4700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4689
  %_len4701 = load i64, i64* %_len4691
  %_id4702 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4700, i64 %_len4701)
  store { i64, [0 x i64] }* %_id4702, { i64, [0 x i64] }** %_sorted4703
  %_sorted4705 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4703
  %_id4706 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4705)
  call void @print_string(i8* %_id4706)
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
