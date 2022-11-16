; generated from: oatprograms/run13.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x, i64 %y) {
  %_x524 = alloca i64
  %_y526 = alloca i64
  store i64 %y, i64* %_y526
  store i64 %x, i64* %_x524
  %_x529 = load i64, i64* %_x527
  ret i64 %_x529
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc517 = alloca i64
  %_argv519 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv519
  store i64 %argc, i64* %_argc517
  %_id522 = call i64 @f(i64 1, i64 2)
  ret i64 %_id522
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
