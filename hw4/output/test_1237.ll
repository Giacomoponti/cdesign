; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i587 = alloca i64
  %_j592 = alloca i64
  %_argc582 = alloca i64
  %_argv584 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv584
  store i64 %argc, i64* %_argc582
  store i64 9, i64* %_i587
  %_i589 = load i64, i64* %_i587
  %_i590 = load i64, i64* %_i587
  %_bop591 = add i64 %_i589, %_i590
  store i64 %_bop591, i64* %_j592
  %_i594 = load i64, i64* %_i587
  %_i595 = load i64, i64* %_i587
  %_i596 = load i64, i64* %_i587
  %_bop597 = mul i64 %_i595, %_i596
  %_bop598 = add i64 %_i594, %_bop597
  %_j599 = load i64, i64* %_j592
  %_bop600 = sub i64 %_bop598, %_j599
  %_bop601 = lshr i64 %_bop600, 2
  %_bop602 = shl i64 %_bop601, 2
  %_bop603 = ashr i64 %_bop602, 2
  ret i64 %_bop603
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
