; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_uop65 = xor i64 5, -1
  %_bop66 = and i64 %_uop65, 6
  %_bop67 = or i64 2, 0
  %_bop68 = icmp sge i64 %_bop66, %_bop67
  br i1 %_bop68, label %_if71, label %_else70
_if71:
  ret i64 23
_else70:
  ret i64 46
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
