; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc116
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv118
  %_argv118 = alloca { i64, [0 x i8*] }*
  %_argc116 = alloca i64
  %_bop121 = icmp ne i64 6, 5
  br i1 %_bop121, label %_if124, label %_else123
_if124:
  %_bop126 = shl i64 5, 17
  %_bop127 = lshr i64 %_bop126, 2
  %_bop128 = ashr i64 %_bop127, 10
  %_uop129 = xor i64 %_bop128, -1
  %_bop130 = mul i64 %_uop129, 2
  %_bop131 = sub i64 %_bop130, 100
  %_bop132 = add i64 %_bop131, 6
  ret i64 %_bop132
_else123:
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
