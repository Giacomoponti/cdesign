; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i515 = alloca i64
  %_j520 = alloca i64
  %_argc512 = alloca i64
  store i64 %argc, i64* %_argc512
  %_argv514 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv514
  store i64 9, i64* %_i515
  %_i517 = load i64, i64* %_i515
  %_i518 = load i64, i64* %_i515
  %_bop519 = add i64 %_i517, %_i518
  store i64 %_bop519, i64* %_j520
  %_i522 = load i64, i64* %_i515
  %_i523 = load i64, i64* %_i515
  %_i524 = load i64, i64* %_i515
  %_bop525 = mul i64 %_i523, %_i524
  %_bop526 = add i64 %_i522, %_bop525
  %_j527 = load i64, i64* %_j520
  %_bop528 = sub i64 %_bop526, %_j527
  %_bop529 = lshr i64 %_bop528, 2
  %_bop530 = shl i64 %_bop529, 2
  %_bop531 = ashr i64 %_bop530, 2
  ret i64 %_bop531
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
