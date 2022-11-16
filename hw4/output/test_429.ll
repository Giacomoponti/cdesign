; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i492 = alloca i64
  %_j497 = alloca i64
  %_argc487 = alloca i64
  %_argv489 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv489
  store i64 %argc, i64* %_argc487
  store i64 9, i64* %_i492
  %_i494 = load i64, i64* %_i492
  %_i495 = load i64, i64* %_i492
  %_bop496 = add i64 %_i494, %_i495
  store i64 %_bop496, i64* %_j497
  %_i499 = load i64, i64* %_i492
  %_i500 = load i64, i64* %_i492
  %_i501 = load i64, i64* %_i492
  %_bop502 = mul i64 %_i500, %_i501
  %_bop503 = add i64 %_i499, %_bop502
  %_j504 = load i64, i64* %_j497
  %_bop505 = sub i64 %_bop503, %_j504
  %_bop506 = lshr i64 %_bop505, 2
  %_bop507 = shl i64 %_bop506, 2
  %_bop508 = ashr i64 %_bop507, 2
  ret i64 %_bop508
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
