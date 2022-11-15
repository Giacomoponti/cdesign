; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i52 = alloca i64
  %_j57 = alloca i64
  store i64 9, i64* %_i52
  %_i54 = load i64, i64* %_i52
  %_i55 = load i64, i64* %_i52
  %_bop56 = add i64 %_i54, %_i55
  store i64 %_bop56, i64* %_j57
  %_i59 = load i64, i64* %_i52
  %_i60 = load i64, i64* %_i52
  %_i61 = load i64, i64* %_i52
  %_bop62 = mul i64 %_i60, %_i61
  %_bop63 = add i64 %_i59, %_bop62
  %_j64 = load i64, i64* %_j57
  %_bop65 = sub i64 %_bop63, %_j64
  %_bop66 = lshr i64 %_bop65, 2
  %_bop67 = shl i64 %_bop66, 2
  %_bop68 = ashr i64 %_bop67, 2
  ret i64 %_bop68
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
