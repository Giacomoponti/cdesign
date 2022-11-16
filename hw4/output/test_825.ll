; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i584 = alloca i64
  %_j589 = alloca i64
  %_argc579 = alloca i64
  %_argv581 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv581
  store i64 %argc, i64* %_argc579
  store i64 9, i64* %_i584
  %_i586 = load i64, i64* %_i584
  %_i587 = load i64, i64* %_i584
  %_bop588 = add i64 %_i586, %_i587
  store i64 %_bop588, i64* %_j589
  %_i591 = load i64, i64* %_i584
  %_i592 = load i64, i64* %_i584
  %_i593 = load i64, i64* %_i584
  %_bop594 = mul i64 %_i592, %_i593
  %_bop595 = add i64 %_i591, %_bop594
  %_j596 = load i64, i64* %_j589
  %_bop597 = sub i64 %_bop595, %_j596
  %_bop598 = lshr i64 %_bop597, 2
  %_bop599 = shl i64 %_bop598, 2
  %_bop600 = ashr i64 %_bop599, 2
  ret i64 %_bop600
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
