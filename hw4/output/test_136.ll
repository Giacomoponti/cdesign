; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i536 = alloca i64
  %_argc533 = alloca i64
  store i64 %argc, i64* %_argc533
  %_argv535 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv535
  store i64 0, i64* %_i536
  %_b538 = load i1, i1* @b
  br i1 %_b538, label %_if541, label %_else540
_if541:
  store i64 1, i64* %_i536
  br label %_after539
_else540:
  br label %_after539
_after539:
  %_i544 = load i64, i64* %_i536
  ret i64 %_i544
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
