; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc102 = alloca i64
  %_argv104 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv104
  store i64 %argc, i64* %_argc102
  %_uop107 = xor i64 5, -1
  %_bop108 = and i64 %_uop107, 6
  %_bop109 = or i64 2, 0
  %_bop110 = icmp sge i64 %_bop108, %_bop109
  br i1 %_bop110, label %_if113, label %_else112
_if113:
  ret i64 23
_else112:
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
