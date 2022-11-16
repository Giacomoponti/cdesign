; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_id901 = call i64 @f2()
  ret i64 %_id901
}

define i64 @f2() {
  %_id900 = call i64 @f3()
  ret i64 %_id900
}

define i64 @f3() {
  %_id899 = call i64 @f4()
  ret i64 %_id899
}

define i64 @f4() {
  %_id898 = call i64 @f5()
  ret i64 %_id898
}

define i64 @f5() {
  %_id897 = call i64 @f6()
  ret i64 %_id897
}

define i64 @f6() {
  %_id896 = call i64 @f7()
  ret i64 %_id896
}

define i64 @f7() {
  %_id895 = call i64 @f8()
  ret i64 %_id895
}

define i64 @f8() {
  %_id894 = call i64 @f9()
  ret i64 %_id894
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc888
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv890
  %_argv890 = alloca { i64, [0 x i8*] }*
  %_argc888 = alloca i64
  %_id893 = call i64 @f1()
  ret i64 %_id893
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
