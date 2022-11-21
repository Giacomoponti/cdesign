; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_acc1043 = alloca i64
  %_x1042 = alloca i64
  store i64 %x, i64* %_x1042
  store i64 1, i64* %_acc1043
  br label %_pre1048
_pre1048:
  %_x1045 = load i64, i64* %_x1042
  %_bop1046 = icmp sgt i64 %_x1045, 0
  %_cnd1050 = icmp eq i1 %_bop1046, 0
  br i1 %_cnd1050, label %_post1047, label %_body1049
_body1049:
  %_acc1051 = load i64, i64* %_acc1043
  %_x1052 = load i64, i64* %_x1042
  %_bop1053 = mul i64 %_acc1051, %_x1052
  store i64 %_bop1053, i64* %_acc1043
  %_x1055 = load i64, i64* %_x1042
  %_bop1056 = sub i64 %_x1055, 1
  store i64 %_bop1056, i64* %_x1042
  br label %_pre1048
_post1047:
  %_acc1058 = load i64, i64* %_acc1043
  ret i64 %_acc1058
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1035 = alloca i64
  store i64 %argc, i64* %_argc1035
  %_argv1037 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1037
  %_1038 = call i64 @fact(i64 5)
  %_1039 = call i8* @string_of_int(i64 %_1038)
  call void @print_string(i8* %_1039)
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
