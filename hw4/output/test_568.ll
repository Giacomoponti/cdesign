; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_bop73 = icmp ne i64 6, 5
  br i1 %_bop73, label %_if76, label %_else75
_if76:
  %_bop78 = shl i64 5, 17
  %_bop79 = lshr i64 %_bop78, 2
  %_bop80 = ashr i64 %_bop79, 10
  %_uop81 = xor i64 %_bop80, -1
  %_bop82 = mul i64 %_uop81, 2
  %_bop83 = sub i64 %_bop82, 100
  %_bop84 = add i64 %_bop83, 6
  ret i64 %_bop84
_else75:
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
