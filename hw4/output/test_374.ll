; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_id770 = call i64 @f2()
  ret i64 %_id770
}

define i64 @f2() {
  %_id769 = call i64 @f3()
  ret i64 %_id769
}

define i64 @f3() {
  %_id768 = call i64 @f4()
  ret i64 %_id768
}

define i64 @f4() {
  %_id767 = call i64 @f5()
  ret i64 %_id767
}

define i64 @f5() {
  %_id766 = call i64 @f6()
  ret i64 %_id766
}

define i64 @f6() {
  %_id765 = call i64 @f7()
  ret i64 %_id765
}

define i64 @f7() {
  %_id764 = call i64 @f8()
  ret i64 %_id764
}

define i64 @f8() {
  %_id763 = call i64 @f9()
  ret i64 %_id763
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc757 = alloca i64
  %_argv759 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv759
  store i64 %argc, i64* %_argc757
  %_id762 = call i64 @f1()
  ret i64 %_id762
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
