; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc109 = alloca i64
  %_argv111 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv111
  store i64 %argc, i64* %_argc109
  %_uop114 = xor i64 5, -1
  %_bop115 = and i64 %_uop114, 6
  %_bop116 = or i64 2, 0
  %_bop117 = icmp sge i64 %_bop115, %_bop116
  br i1 %_bop117, label %_if120, label %_else119
_if120:
  ret i64 23
_else119:
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
