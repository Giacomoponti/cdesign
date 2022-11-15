; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i105 = alloca i64
  %_j110 = alloca i64
  store i64 9, i64* %_i105
  %_i107 = load i64, i64* %_i105
  %_i108 = load i64, i64* %_i105
  %_bop109 = add i64 %_i107, %_i108
  store i64 %_bop109, i64* %_j110
  %_i112 = load i64, i64* %_i105
  %_i113 = load i64, i64* %_i105
  %_i114 = load i64, i64* %_i105
  %_bop115 = mul i64 %_i113, %_i114
  %_bop116 = add i64 %_i112, %_bop115
  %_j117 = load i64, i64* %_j110
  %_bop118 = sub i64 %_bop116, %_j117
  %_bop119 = lshr i64 %_bop118, 2
  %_bop120 = shl i64 %_bop119, 2
  %_bop121 = ashr i64 %_bop120, 2
  ret i64 %_bop121
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
