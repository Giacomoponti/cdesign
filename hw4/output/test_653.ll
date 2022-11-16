; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_id882 = call i64 @f2()
  ret i64 %_id882
}

define i64 @f2() {
  %_id881 = call i64 @f3()
  ret i64 %_id881
}

define i64 @f3() {
  %_id880 = call i64 @f4()
  ret i64 %_id880
}

define i64 @f4() {
  %_id879 = call i64 @f5()
  ret i64 %_id879
}

define i64 @f5() {
  %_id878 = call i64 @f6()
  ret i64 %_id878
}

define i64 @f6() {
  %_id877 = call i64 @f7()
  ret i64 %_id877
}

define i64 @f7() {
  %_id876 = call i64 @f8()
  ret i64 %_id876
}

define i64 @f8() {
  %_id875 = call i64 @f9()
  ret i64 %_id875
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc869 = alloca i64
  %_argv871 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv871
  store i64 %argc, i64* %_argc869
  %_id874 = call i64 @f1()
  ret i64 %_id874
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
