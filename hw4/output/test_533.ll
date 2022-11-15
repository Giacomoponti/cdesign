; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i117 = alloca i64
  store i64 0, i64* %_i117
  %_b119 = load i1, i1* @b
  br i1 %_b119, label %_if122, label %_else121
_if122:
  store i64 1, i64* %_i117
  br label %_after120
_else121:
  br label %_after120
_after120:
  %_i125 = load i64, i64* %_i117
  ret i64 %_i125
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
