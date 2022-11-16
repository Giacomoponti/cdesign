; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_arr4938 to { i64, [0 x i64] }*)
@_arr4938 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars4857 = alloca { i64, [0 x i64] }*
  %_b_chars4861 = alloca { i64, [0 x i64] }*
  %_last_char_a4867 = alloca i64
  %_last_char_b4873 = alloca i64
  %_prev_lcs4889 = alloca i8*
  %_next_char4900 = alloca i8*
  %_left_lcs4911 = alloca i8*
  %_right_lcs4919 = alloca i8*
  %_left_len4923 = alloca i64
  %_right_len4927 = alloca i64
  %_i4835 = alloca i64
  %_j4837 = alloca i64
  %_a4839 = alloca i8*
  %_b4841 = alloca i8*
  store i8* %b, i8** %_b4841
  store i8* %a, i8** %_a4839
  store i64 %j, i64* %_j4837
  store i64 %i, i64* %_i4835
  %_i4846 = load i64, i64* %_i4842
  %_bop4847 = icmp slt i64 %_i4846, 0
  %_j4848 = load i64, i64* %_j4843
  %_bop4849 = icmp slt i64 %_j4848, 0
  %_bop4850 = or i1 %_bop4847, %_bop4849
  br i1 %_bop4850, label %_if4853, label %_else4852
_if4853:
  ret void null
_else4852:
  br label %_after4851
_after4851:
  %_a4855 = load i8*, i8** %_a4844
  %_id4856 = call { i64, [0 x i64] }* @array_of_string(i8* %_a4855)
  store { i64, [0 x i64] }* %_id4856, { i64, [0 x i64] }** %_a_chars4857
  %_b4859 = load i8*, i8** %_b4845
  %_id4860 = call { i64, [0 x i64] }* @array_of_string(i8* %_b4859)
  store { i64, [0 x i64] }* %_id4860, { i64, [0 x i64] }** %_b_chars4861
  %_a_chars4865 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4857
  %_i4866 = load i64, i64* %_i4842
  %_ptr4863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4865, i32 0, i32 1, i64 %_i4866
  %_resPtr4864 = load i64, i64* %_ptr4863
  store i64 %_resPtr4864, i64* %_last_char_a4867
  %_b_chars4871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4861
  %_j4872 = load i64, i64* %_j4843
  %_ptr4869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars4871, i32 0, i32 1, i64 %_j4872
  %_resPtr4870 = load i64, i64* %_ptr4869
  store i64 %_resPtr4870, i64* %_last_char_b4873
  %_last_char_a4875 = load i64, i64* %_last_char_a4867
  %_last_char_b4876 = load i64, i64* %_last_char_b4873
  %_bop4877 = icmp eq i64 %_last_char_a4875, %_last_char_b4876
  br i1 %_bop4877, label %_if4880, label %_else4879
_if4880:
  %_i4882 = load i64, i64* %_i4842
  %_bop4883 = sub i64 %_i4882, 1
  %_j4884 = load i64, i64* %_j4843
  %_bop4885 = sub i64 %_j4884, 1
  %_a4886 = load i8*, i8** %_a4844
  %_b4887 = load i8*, i8** %_b4845
  %_id4888 = call i8* @lcs(i64 %_bop4883, i64 %_bop4885, i8* %_a4886, i8* %_b4887)
  store i8* %_id4888, i8** %_prev_lcs4889
  %_a_chars4893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4857
  %_i4894 = load i64, i64* %_i4842
  %_ptr4891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4893, i32 0, i32 1, i64 %_i4894
  %_resPtr4892 = load i64, i64* %_ptr4891
  %_buf4895 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_ptr4896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf4895, i32 0, i32 1, i32 0
  store i64 %_resPtr4892, i64* %_ptr4896
  %_buf4898 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_id4899 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf4898)
  store i8* %_id4899, i8** %_next_char4900
  %_prev_lcs4902 = load i8*, i8** %_prev_lcs4889
  %_next_char4903 = load i8*, i8** %_next_char4900
  %_id4904 = call i8* @string_cat(i8* %_prev_lcs4902, i8* %_next_char4903)
  ret i8* %_id4904
_else4879:
  br label %_after4878
_after4878:
  %_i4905 = load i64, i64* %_i4842
  %_j4906 = load i64, i64* %_j4843
  %_bop4907 = sub i64 %_j4906, 1
  %_a4908 = load i8*, i8** %_a4844
  %_b4909 = load i8*, i8** %_b4845
  %_id4910 = call i8* @lcs(i64 %_i4905, i64 %_bop4907, i8* %_a4908, i8* %_b4909)
  store i8* %_id4910, i8** %_left_lcs4911
  %_i4913 = load i64, i64* %_i4842
  %_bop4914 = sub i64 %_i4913, 1
  %_j4915 = load i64, i64* %_j4843
  %_a4916 = load i8*, i8** %_a4844
  %_b4917 = load i8*, i8** %_b4845
  %_id4918 = call i8* @lcs(i64 %_bop4914, i64 %_j4915, i8* %_a4916, i8* %_b4917)
  store i8* %_id4918, i8** %_right_lcs4919
  %_left_lcs4921 = load i8*, i8** %_left_lcs4911
  %_id4922 = call i64 @length_of_string(i8* %_left_lcs4921)
  store i64 %_id4922, i64* %_left_len4923
  %_right_lcs4925 = load i8*, i8** %_right_lcs4919
  %_id4926 = call i64 @length_of_string(i8* %_right_lcs4925)
  store i64 %_id4926, i64* %_right_len4927
  %_left_len4929 = load i64, i64* %_left_len4923
  %_right_len4930 = load i64, i64* %_right_len4927
  %_bop4931 = icmp slt i64 %_left_len4929, %_right_len4930
  br i1 %_bop4931, label %_if4934, label %_else4933
_if4934:
  %_right_lcs4937 = load i8*, i8** %_right_lcs4919
  ret i8* %_right_lcs4937
_else4933:
  %_left_lcs4936 = load i8*, i8** %_left_lcs4911
  ret i8* %_left_lcs4936
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato4826 = alloca void
  %_orating4828 = alloca void
  %_argc4821 = alloca i64
  %_argv4823 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4823
  store i64 %argc, i64* %_argc4821
  store void null, void* %_tomato4826
  store void null, void* %_orating4828
  %_tomato4830 = load void, void* %_tomato4826
  %_orating4831 = load void, void* %_orating4828
  %_id4832 = call i8* @lcs(i64 5, i64 6, void %_tomato4830, void %_orating4831)
  call void @print_string(i8* %_id4832)
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
