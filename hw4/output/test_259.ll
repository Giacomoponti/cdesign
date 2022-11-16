; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_id481 = call i64 @f2()
  ret i64 %_id481
}

define i64 @f2() {
  %_id480 = call i64 @f3()
  ret i64 %_id480
}

define i64 @f3() {
  %_id479 = call i64 @f4()
  ret i64 %_id479
}

define i64 @f4() {
  %_id478 = call i64 @f5()
  ret i64 %_id478
}

define i64 @f5() {
  %_id477 = call i64 @f6()
  ret i64 %_id477
}

define i64 @f6() {
  %_id476 = call i64 @f7()
  ret i64 %_id476
}

define i64 @f7() {
  %_id475 = call i64 @f8()
  ret i64 %_id475
}

define i64 @f8() {
  %_id474 = call i64 @f9()
  ret i64 %_id474
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id473 = call i64 @f1()
  ret i64 %_id473
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
