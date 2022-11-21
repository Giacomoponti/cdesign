; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc109 = alloca i64
  store i64 %argc, i64* %_argc109
  %_argv111 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv111
  %_bop112 = icmp ne i64 6, 5
  br i1 %_bop112, label %_if115, label %_else114
_if115:
  %_bop117 = shl i64 5, 17
  %_bop118 = lshr i64 %_bop117, 2
  %_bop119 = ashr i64 %_bop118, 10
  %_uop120 = xor i64 %_bop119, -1
  %_bop121 = mul i64 %_uop120, 2
  %_bop122 = sub i64 %_bop121, 100
  %_bop123 = add i64 %_bop122, 6
  ret i64 %_bop123
_else114:
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
