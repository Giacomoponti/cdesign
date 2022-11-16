; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i650 = alloca i64
  store i64 12, i64* %_i650
  %_i652 = load i64, i64* %_i650
  ret i64 %_i652
}

define i64 @g() {
  %_i647 = alloca i64
  store i64 10, i64* %_i647
  %_i649 = load i64, i64* %_i647
  ret i64 %_i649
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc637
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv639
  %_argv639 = alloca { i64, [0 x i8*] }*
  %_argc637 = alloca i64
  %_id642 = call i64 @f()
  %_id643 = call i64 @g()
  %_bop644 = add i64 %_id642, %_id643
  %_i645 = load i64, i64* @i
  %_bop646 = add i64 %_bop644, %_i645
  ret i64 %_bop646
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
