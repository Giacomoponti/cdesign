; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i513 = alloca i64
  store i64 %argc, i64* %_argc508
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv510
  %_argv510 = alloca { i64, [0 x i8*] }*
  %_argc508 = alloca i64
  store i64 0, i64* %_i513
  %_b515 = load i1, i1* @b
  br i1 %_b515, label %_if518, label %_else517
_if518:
  store i64 1, i64* %_i513
  br label %_after516
_else517:
  br label %_after516
_after516:
  %_i521 = load i64, i64* %_i513
  ret i64 %_i521
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
