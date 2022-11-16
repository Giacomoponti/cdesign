; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_id431 = call i64 @f2()
  ret i64 %_id431
}

define i64 @f2() {
  %_id430 = call i64 @f3()
  ret i64 %_id430
}

define i64 @f3() {
  %_id429 = call i64 @f4()
  ret i64 %_id429
}

define i64 @f4() {
  %_id428 = call i64 @f5()
  ret i64 %_id428
}

define i64 @f5() {
  %_id427 = call i64 @f6()
  ret i64 %_id427
}

define i64 @f6() {
  %_id426 = call i64 @f7()
  ret i64 %_id426
}

define i64 @f7() {
  %_id425 = call i64 @f8()
  ret i64 %_id425
}

define i64 @f8() {
  %_id424 = call i64 @f9()
  ret i64 %_id424
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id423 = call i64 @f1()
  ret i64 %_id423
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
