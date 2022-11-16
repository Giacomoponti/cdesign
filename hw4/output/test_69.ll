; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_id473 = call i64 @f2()
  ret i64 %_id473
}

define i64 @f2() {
  %_id472 = call i64 @f3()
  ret i64 %_id472
}

define i64 @f3() {
  %_id471 = call i64 @f4()
  ret i64 %_id471
}

define i64 @f4() {
  %_id470 = call i64 @f5()
  ret i64 %_id470
}

define i64 @f5() {
  %_id469 = call i64 @f6()
  ret i64 %_id469
}

define i64 @f6() {
  %_id468 = call i64 @f7()
  ret i64 %_id468
}

define i64 @f7() {
  %_id467 = call i64 @f8()
  ret i64 %_id467
}

define i64 @f8() {
  %_id466 = call i64 @f9()
  ret i64 %_id466
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id465 = call i64 @f1()
  ret i64 %_id465
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
