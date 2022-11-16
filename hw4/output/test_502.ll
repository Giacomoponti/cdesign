; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i515 = alloca i64
  %_argc510 = alloca i64
  %_argv512 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv512
  store i64 %argc, i64* %_argc510
  store i64 0, i64* %_i515
  %_b517 = load i1, i1* @b
  br i1 %_b517, label %_if520, label %_else519
_if520:
  store i64 1, i64* %_i515
  br label %_after518
_else519:
  br label %_after518
_after518:
  %_i523 = load i64, i64* %_i515
  ret i64 %_i523
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
