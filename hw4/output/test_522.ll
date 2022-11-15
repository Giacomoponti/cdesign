; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_uop60 = xor i64 5, -1
  %_bop61 = and i64 %_uop60, 6
  %_bop62 = or i64 2, 0
  %_bop63 = icmp sge i64 %_bop61, %_bop62
  br i1 %_bop63, label %_if66, label %_else65
_if66:
  ret i64 23
_else65:
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
