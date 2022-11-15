; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i36 = alloca i64
  %_j41 = alloca i64
  store i64 9, i64* %_i36
  %_i38 = load i64, i64* %_i36
  %_i39 = load i64, i64* %_i36
  %_bop40 = add i64 %_i38, %_i39
  store i64 %_bop40, i64* %_j41
  %_i43 = load i64, i64* %_i36
  %_i44 = load i64, i64* %_i36
  %_i45 = load i64, i64* %_i36
  %_bop46 = mul i64 %_i44, %_i45
  %_bop47 = add i64 %_i43, %_bop46
  %_j48 = load i64, i64* %_j41
  %_bop49 = sub i64 %_bop47, %_j48
  %_bop50 = lshr i64 %_bop49, 2
  %_bop51 = shl i64 %_bop50, 2
  %_bop52 = ashr i64 %_bop51, 2
  ret i64 %_bop52
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
