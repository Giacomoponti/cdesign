; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc84
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv86
  %_argv86 = alloca { i64, [0 x i8*] }*
  %_argc84 = alloca i64
  %_uop89 = icmp eq i1 1, 0
  %_uop90 = mul i64 4, -1
  %_bop91 = add i64 %_uop90, 5
  %_bop92 = icmp sgt i64 %_bop91, 0
  %_bop93 = mul i64 6, 4
  %_bop94 = icmp slt i64 %_bop93, 25
  %_bop95 = and i1 %_bop92, %_bop94
  %_bop96 = or i1 %_uop89, %_bop95
  br i1 %_bop96, label %_if99, label %_else98
_if99:
  ret i64 9
_else98:
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
