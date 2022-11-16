; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i228 = alloca i64
  store i64 0, i64* %_i228
  %_b230 = load i1, i1* @b
  br i1 %_b230, label %_if233, label %_else232
_if233:
  store i64 1, i64* %_i228
  br label %_after231
_else232:
  br label %_after231
_after231:
  %_i236 = load i64, i64* %_i228
  ret i64 %_i236
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
