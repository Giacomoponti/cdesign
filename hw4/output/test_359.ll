; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_809 = call i64 @f2()
  ret i64 %_809
}

define i64 @f2() {
  %_808 = call i64 @f3()
  ret i64 %_808
}

define i64 @f3() {
  %_807 = call i64 @f4()
  ret i64 %_807
}

define i64 @f4() {
  %_806 = call i64 @f5()
  ret i64 %_806
}

define i64 @f5() {
  %_805 = call i64 @f6()
  ret i64 %_805
}

define i64 @f6() {
  %_804 = call i64 @f7()
  ret i64 %_804
}

define i64 @f7() {
  %_803 = call i64 @f8()
  ret i64 %_803
}

define i64 @f8() {
  %_802 = call i64 @f9()
  ret i64 %_802
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc798 = alloca i64
  store i64 %argc, i64* %_argc798
  %_argv800 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv800
  %_801 = call i64 @f1()
  ret i64 %_801
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
