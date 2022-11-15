; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i100 = alloca i64
  %_j105 = alloca i64
  store i64 9, i64* %_i100
  %_i102 = load i64, i64* %_i100
  %_i103 = load i64, i64* %_i100
  %_bop104 = add i64 %_i102, %_i103
  store i64 %_bop104, i64* %_j105
  %_i107 = load i64, i64* %_i100
  %_i108 = load i64, i64* %_i100
  %_i109 = load i64, i64* %_i100
  %_bop110 = mul i64 %_i108, %_i109
  %_bop111 = add i64 %_i107, %_bop110
  %_j112 = load i64, i64* %_j105
  %_bop113 = sub i64 %_bop111, %_j112
  %_bop114 = lshr i64 %_bop113, 2
  %_bop115 = shl i64 %_bop114, 2
  %_bop116 = ashr i64 %_bop115, 2
  ret i64 %_bop116
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
