; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i568 = alloca i64
  %_j573 = alloca i64
  %_argc563 = alloca i64
  %_argv565 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv565
  store i64 %argc, i64* %_argc563
  store i64 9, i64* %_i568
  %_i570 = load i64, i64* %_i568
  %_i571 = load i64, i64* %_i568
  %_bop572 = add i64 %_i570, %_i571
  store i64 %_bop572, i64* %_j573
  %_i575 = load i64, i64* %_i568
  %_i576 = load i64, i64* %_i568
  %_i577 = load i64, i64* %_i568
  %_bop578 = mul i64 %_i576, %_i577
  %_bop579 = add i64 %_i575, %_bop578
  %_j580 = load i64, i64* %_j573
  %_bop581 = sub i64 %_bop579, %_j580
  %_bop582 = lshr i64 %_bop581, 2
  %_bop583 = shl i64 %_bop582, 2
  %_bop584 = ashr i64 %_bop583, 2
  ret i64 %_bop584
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
