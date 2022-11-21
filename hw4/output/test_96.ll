; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n4952 = alloca i64
  store i64 %n, i64* %_n4952
  %_n4953 = load i64, i64* %_n4952
  %_bop4954 = icmp eq i64 %_n4953, 0
  br i1 %_bop4954, label %_if4957, label %_else4956
_if4957:
  ret i64 0
_else4956:
  br label %_after4955
_after4955:
  %_n4959 = load i64, i64* %_n4952
  %_bop4960 = icmp eq i64 %_n4959, 1
  br i1 %_bop4960, label %_if4963, label %_else4962
_if4963:
  ret i64 1
_else4962:
  br label %_after4961
_after4961:
  %_n4965 = load i64, i64* %_n4952
  %_bop4966 = sub i64 %_n4965, 1
  %_4967 = call i64 @fibR(i64 %_bop4966)
  %_n4968 = load i64, i64* %_n4952
  %_bop4969 = sub i64 %_n4968, 2
  %_4970 = call i64 @fibR(i64 %_bop4969)
  %_bop4971 = add i64 %_4967, %_4970
  ret i64 %_bop4971
}

define i64 @fibI(i64 %n) {
  %_a4911 = alloca i64
  %_b4913 = alloca i64
  %_old4937 = alloca i64
  %_n4910 = alloca i64
  store i64 %n, i64* %_n4910
  store i64 0, i64* %_a4911
  store i64 1, i64* %_b4913
  %_n4915 = load i64, i64* %_n4910
  %_bop4916 = icmp eq i64 %_n4915, 0
  br i1 %_bop4916, label %_if4919, label %_else4918
_if4919:
  %_a4921 = load i64, i64* %_a4911
  ret i64 %_a4921
_else4918:
  br label %_after4917
_after4917:
  %_n4922 = load i64, i64* %_n4910
  %_bop4923 = icmp eq i64 %_n4922, 1
  br i1 %_bop4923, label %_if4926, label %_else4925
_if4926:
  %_b4928 = load i64, i64* %_b4913
  ret i64 %_b4928
_else4925:
  br label %_after4924
_after4924:
  br label %_pre4933
_pre4933:
  %_n4929 = load i64, i64* %_n4910
  %_bop4930 = sub i64 %_n4929, 2
  %_bop4931 = icmp sgt i64 %_bop4930, 0
  %_cnd4935 = icmp eq i1 %_bop4931, 0
  br i1 %_cnd4935, label %_post4932, label %_body4934
_body4934:
  %_b4936 = load i64, i64* %_b4913
  store i64 %_b4936, i64* %_old4937
  %_b4939 = load i64, i64* %_b4913
  %_a4940 = load i64, i64* %_a4911
  %_bop4941 = add i64 %_b4939, %_a4940
  store i64 %_bop4941, i64* %_b4913
  %_old4943 = load i64, i64* %_old4937
  store i64 %_old4943, i64* %_a4911
  %_n4945 = load i64, i64* %_n4910
  %_bop4946 = sub i64 %_n4945, 1
  store i64 %_bop4946, i64* %_n4910
  br label %_pre4933
_post4932:
  %_a4948 = load i64, i64* %_a4911
  %_b4949 = load i64, i64* %_b4913
  %_bop4950 = add i64 %_a4948, %_b4949
  ret i64 %_bop4950
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val4896 = alloca i64
  %_argc4893 = alloca i64
  store i64 %argc, i64* %_argc4893
  %_argv4895 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4895
  store i64 1, i64* %_val4896
  %_4898 = call i64 @fibR(i64 12)
  %_bop4899 = icmp eq i64 %_4898, 144
  %_4900 = call i64 @fibI(i64 12)
  %_bop4901 = icmp eq i64 %_4900, 144
  %_bop4902 = and i1 %_bop4899, %_bop4901
  br i1 %_bop4902, label %_if4905, label %_else4904
_if4905:
  store i64 0, i64* %_val4896
  br label %_after4903
_else4904:
  br label %_after4903
_after4903:
  %_val4908 = load i64, i64* %_val4896
  ret i64 %_val4908
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
