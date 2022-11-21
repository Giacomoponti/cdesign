; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc81 = alloca i64
  store i64 %argc, i64* %_argc81
  %_argv83 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv83
  %_uop84 = icmp eq i1 1, 0
  %_uop85 = mul i64 4, -1
  %_bop86 = add i64 %_uop85, 5
  %_bop87 = icmp sgt i64 %_bop86, 0
  %_bop88 = mul i64 6, 4
  %_bop89 = icmp slt i64 %_bop88, 25
  %_bop90 = and i1 %_bop87, %_bop89
  %_bop91 = or i1 %_uop84, %_bop90
  br i1 %_bop91, label %_if94, label %_else93
_if94:
  ret i64 9
_else93:
  ret i64 4
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
