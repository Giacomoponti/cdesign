; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc123 = alloca i64
  %_argv125 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv125
  store i64 %argc, i64* %_argc123
  %_bop128 = icmp ne i64 6, 5
  br i1 %_bop128, label %_if131, label %_else130
_if131:
  %_bop133 = shl i64 5, 17
  %_bop134 = lshr i64 %_bop133, 2
  %_bop135 = ashr i64 %_bop134, 10
  %_uop136 = xor i64 %_bop135, -1
  %_bop137 = mul i64 %_uop136, 2
  %_bop138 = sub i64 %_bop137, 100
  %_bop139 = add i64 %_bop138, 6
  ret i64 %_bop139
_else130:
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
