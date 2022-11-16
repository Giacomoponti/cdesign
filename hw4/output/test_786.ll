; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n4894 = alloca i64
  store i64 %n, i64* %_n4894
  %_n4896 = load i64, i64* %_n4895
  %_bop4897 = icmp eq i64 %_n4896, 0
  br i1 %_bop4897, label %_if4900, label %_else4899
_if4900:
  ret i64 0
_else4899:
  br label %_after4898
_after4898:
  %_n4902 = load i64, i64* %_n4895
  %_bop4903 = icmp eq i64 %_n4902, 1
  br i1 %_bop4903, label %_if4906, label %_else4905
_if4906:
  ret i64 1
_else4905:
  br label %_after4904
_after4904:
  %_n4908 = load i64, i64* %_n4895
  %_bop4909 = sub i64 %_n4908, 1
  %_id4910 = call i64 @fibR(i64 %_bop4909)
  %_n4911 = load i64, i64* %_n4895
  %_bop4912 = sub i64 %_n4911, 2
  %_id4913 = call i64 @fibR(i64 %_bop4912)
  %_bop4914 = add i64 %_id4910, %_id4913
  ret i64 %_bop4914
}

define i64 @fibI(i64 %n) {
  %_a4853 = alloca i64
  %_b4855 = alloca i64
  %_old4879 = alloca i64
  %_n4851 = alloca i64
  store i64 %n, i64* %_n4851
  store i64 0, i64* %_a4853
  store i64 1, i64* %_b4855
  %_n4857 = load i64, i64* %_n4852
  %_bop4858 = icmp eq i64 %_n4857, 0
  br i1 %_bop4858, label %_if4861, label %_else4860
_if4861:
  %_a4863 = load i64, i64* %_a4853
  ret i64 %_a4863
_else4860:
  br label %_after4859
_after4859:
  %_n4864 = load i64, i64* %_n4852
  %_bop4865 = icmp eq i64 %_n4864, 1
  br i1 %_bop4865, label %_if4868, label %_else4867
_if4868:
  %_b4870 = load i64, i64* %_b4855
  ret i64 %_b4870
_else4867:
  br label %_after4866
_after4866:
  br label %_pre4875
_pre4875:
  %_cnd4877 = icmp eq i1 %_bop4873, 0
  br i1 %_cnd4877, label %_post4874, label %_body4876
_body4876:
  %_n4871 = load i64, i64* %_n4852
  %_bop4872 = sub i64 %_n4871, 2
  %_bop4873 = icmp sgt i64 %_bop4872, 0
  %_b4878 = load i64, i64* %_b4855
  store i64 %_b4878, i64* %_old4879
  %_b4881 = load i64, i64* %_b4855
  %_a4882 = load i64, i64* %_a4853
  %_bop4883 = add i64 %_b4881, %_a4882
  store i64 %_bop4883, i64* %_b4855
  %_old4885 = load i64, i64* %_old4879
  store i64 %_old4885, i64* %_a4853
  %_n4887 = load i64, i64* %_n4852
  %_bop4888 = sub i64 %_n4887, 1
  store i64 %_bop4888, i64* %_n4852
  br label %_pre4875
_post4874:
  %_a4890 = load i64, i64* %_a4853
  %_b4891 = load i64, i64* %_b4855
  %_bop4892 = add i64 %_a4890, %_b4891
  ret i64 %_bop4892
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val4837 = alloca i64
  %_argc4832 = alloca i64
  %_argv4834 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4834
  store i64 %argc, i64* %_argc4832
  store i64 1, i64* %_val4837
  %_id4839 = call i64 @fibR(i64 12)
  %_bop4840 = icmp eq i64 %_id4839, 144
  %_id4841 = call i64 @fibI(i64 12)
  %_bop4842 = icmp eq i64 %_id4841, 144
  %_bop4843 = and i1 %_bop4840, %_bop4842
  br i1 %_bop4843, label %_if4846, label %_else4845
_if4846:
  store i64 0, i64* %_val4837
  br label %_after4844
_else4845:
  br label %_after4844
_after4844:
  %_val4849 = load i64, i64* %_val4837
  ret i64 %_val4849
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
