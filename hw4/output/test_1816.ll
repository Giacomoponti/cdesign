; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  store i64 %n, i64* %_n4957
  %_n4957 = alloca i64
  %_n4959 = load i64, i64* %_n4958
  %_bop4960 = icmp eq i64 %_n4959, 0
  br i1 %_bop4960, label %_if4963, label %_else4962
_if4963:
  ret i64 0
_else4962:
  br label %_after4961
_after4961:
  %_n4965 = load i64, i64* %_n4958
  %_bop4966 = icmp eq i64 %_n4965, 1
  br i1 %_bop4966, label %_if4969, label %_else4968
_if4969:
  ret i64 1
_else4968:
  br label %_after4967
_after4967:
  %_n4971 = load i64, i64* %_n4958
  %_bop4972 = sub i64 %_n4971, 1
  %_id4973 = call i64 @fibR(i64 %_bop4972)
  %_n4974 = load i64, i64* %_n4958
  %_bop4975 = sub i64 %_n4974, 2
  %_id4976 = call i64 @fibR(i64 %_bop4975)
  %_bop4977 = add i64 %_id4973, %_id4976
  ret i64 %_bop4977
}

define i64 @fibI(i64 %n) {
  %_a4916 = alloca i64
  %_b4918 = alloca i64
  %_old4942 = alloca i64
  store i64 %n, i64* %_n4914
  %_n4914 = alloca i64
  store i64 0, i64* %_a4916
  store i64 1, i64* %_b4918
  %_n4920 = load i64, i64* %_n4915
  %_bop4921 = icmp eq i64 %_n4920, 0
  br i1 %_bop4921, label %_if4924, label %_else4923
_if4924:
  %_a4926 = load i64, i64* %_a4916
  ret i64 %_a4926
_else4923:
  br label %_after4922
_after4922:
  %_n4927 = load i64, i64* %_n4915
  %_bop4928 = icmp eq i64 %_n4927, 1
  br i1 %_bop4928, label %_if4931, label %_else4930
_if4931:
  %_b4933 = load i64, i64* %_b4918
  ret i64 %_b4933
_else4930:
  br label %_after4929
_after4929:
  br label %_pre4938
_pre4938:
  %_n4934 = load i64, i64* %_n4915
  %_bop4935 = sub i64 %_n4934, 2
  %_bop4936 = icmp sgt i64 %_bop4935, 0
  %_cnd4940 = icmp eq i1 %_bop4936, 0
  br i1 %_cnd4940, label %_post4937, label %_body4939
_body4939:
  %_b4941 = load i64, i64* %_b4918
  store i64 %_b4941, i64* %_old4942
  %_b4944 = load i64, i64* %_b4918
  %_a4945 = load i64, i64* %_a4916
  %_bop4946 = add i64 %_b4944, %_a4945
  store i64 %_bop4946, i64* %_b4918
  %_old4948 = load i64, i64* %_old4942
  store i64 %_old4948, i64* %_a4916
  %_n4950 = load i64, i64* %_n4915
  %_bop4951 = sub i64 %_n4950, 1
  store i64 %_bop4951, i64* %_n4915
  br label %_pre4938
_post4937:
  %_a4953 = load i64, i64* %_a4916
  %_b4954 = load i64, i64* %_b4918
  %_bop4955 = add i64 %_a4953, %_b4954
  ret i64 %_bop4955
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val4900 = alloca i64
  store i64 %argc, i64* %_argc4895
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4897
  %_argv4897 = alloca { i64, [0 x i8*] }*
  %_argc4895 = alloca i64
  store i64 1, i64* %_val4900
  %_id4902 = call i64 @fibR(i64 12)
  %_bop4903 = icmp eq i64 %_id4902, 144
  %_id4904 = call i64 @fibI(i64 12)
  %_bop4905 = icmp eq i64 %_id4904, 144
  %_bop4906 = and i1 %_bop4903, %_bop4905
  br i1 %_bop4906, label %_if4909, label %_else4908
_if4909:
  store i64 0, i64* %_val4900
  br label %_after4907
_else4908:
  br label %_after4907
_after4907:
  %_val4912 = load i64, i64* %_val4900
  ret i64 %_val4912
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
