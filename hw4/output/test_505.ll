; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_bop68 = icmp ne i64 6, 5
  br i1 %_bop68, label %_if71, label %_else70
_if71:
  %_bop73 = shl i64 5, 17
  %_bop74 = lshr i64 %_bop73, 2
  %_bop75 = ashr i64 %_bop74, 10
  %_uop76 = xor i64 %_bop75, -1
  %_bop77 = mul i64 %_uop76, 2
  %_bop78 = sub i64 %_bop77, 100
  %_bop79 = add i64 %_bop78, 6
  ret i64 %_bop79
_else70:
  ret i64 2
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
