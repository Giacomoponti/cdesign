; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i490 = alloca i64
  %_j495 = alloca i64
  store i64 %argc, i64* %_argc485
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv487
  %_argv487 = alloca { i64, [0 x i8*] }*
  %_argc485 = alloca i64
  store i64 9, i64* %_i490
  %_i492 = load i64, i64* %_i490
  %_i493 = load i64, i64* %_i490
  %_bop494 = add i64 %_i492, %_i493
  store i64 %_bop494, i64* %_j495
  %_i497 = load i64, i64* %_i490
  %_i498 = load i64, i64* %_i490
  %_i499 = load i64, i64* %_i490
  %_bop500 = mul i64 %_i498, %_i499
  %_bop501 = add i64 %_i497, %_bop500
  %_j502 = load i64, i64* %_j495
  %_bop503 = sub i64 %_bop501, %_j502
  %_bop504 = lshr i64 %_bop503, 2
  %_bop505 = shl i64 %_bop504, 2
  %_bop506 = ashr i64 %_bop505, 2
  ret i64 %_bop506
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
