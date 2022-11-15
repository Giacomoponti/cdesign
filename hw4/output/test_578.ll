; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i122 = alloca i64
  store i64 0, i64* %_i122
  %_b124 = load i1, i1* @b
  br i1 %_b124, label %_if127, label %_else126
_if127:
  store i64 1, i64* %_i122
  br label %_after125
_else126:
  br label %_after125
_after125:
  %_i130 = load i64, i64* %_i122
  ret i64 %_i130
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
