; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i99 = alloca i64
  %_j104 = alloca i64
  store i64 9, i64* %_i99
  %_i101 = load i64, i64* %_i99
  %_i102 = load i64, i64* %_i99
  %_bop103 = add i64 %_i101, %_i102
  store i64 %_bop103, i64* %_j104
  %_i106 = load i64, i64* %_i99
  %_i107 = load i64, i64* %_i99
  %_i108 = load i64, i64* %_i99
  %_bop109 = mul i64 %_i107, %_i108
  %_bop110 = add i64 %_i106, %_bop109
  %_j111 = load i64, i64* %_j104
  %_bop112 = sub i64 %_bop110, %_j111
  %_bop113 = lshr i64 %_bop112, 2
  %_bop114 = shl i64 %_bop113, 2
  %_bop115 = ashr i64 %_bop114, 2
  ret i64 %_bop115
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
