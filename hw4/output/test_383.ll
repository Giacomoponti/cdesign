; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i45 = alloca i64
  %_j50 = alloca i64
  store i64 9, i64* %_i45
  %_i47 = load i64, i64* %_i45
  %_i48 = load i64, i64* %_i45
  %_bop49 = add i64 %_i47, %_i48
  store i64 %_bop49, i64* %_j50
  %_i52 = load i64, i64* %_i45
  %_i53 = load i64, i64* %_i45
  %_i54 = load i64, i64* %_i45
  %_bop55 = mul i64 %_i53, %_i54
  %_bop56 = add i64 %_i52, %_bop55
  %_j57 = load i64, i64* %_j50
  %_bop58 = sub i64 %_bop56, %_j57
  %_bop59 = lshr i64 %_bop58, 2
  %_bop60 = shl i64 %_bop59, 2
  %_bop61 = ashr i64 %_bop60, 2
  ret i64 %_bop61
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
