; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i151 = alloca i64
  %_j156 = alloca i64
  store i64 9, i64* %_i151
  %_i153 = load i64, i64* %_i151
  %_i154 = load i64, i64* %_i151
  %_bop155 = add i64 %_i153, %_i154
  store i64 %_bop155, i64* %_j156
  %_i158 = load i64, i64* %_i151
  %_i159 = load i64, i64* %_i151
  %_i160 = load i64, i64* %_i151
  %_bop161 = mul i64 %_i159, %_i160
  %_bop162 = add i64 %_i158, %_bop161
  %_j163 = load i64, i64* %_j156
  %_bop164 = sub i64 %_bop162, %_j163
  %_bop165 = lshr i64 %_bop164, 2
  %_bop166 = shl i64 %_bop165, 2
  %_bop167 = ashr i64 %_bop166, 2
  ret i64 %_bop167
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
