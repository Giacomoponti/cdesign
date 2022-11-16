; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i553 = alloca i64
  store i64 12, i64* %_i553
  %_i555 = load i64, i64* %_i553
  ret i64 %_i555
}

define i64 @g() {
  %_i550 = alloca i64
  store i64 10, i64* %_i550
  %_i552 = load i64, i64* %_i550
  ret i64 %_i552
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc540 = alloca i64
  %_argv542 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv542
  store i64 %argc, i64* %_argc540
  %_id545 = call i64 @f()
  %_id546 = call i64 @g()
  %_bop547 = add i64 %_id545, %_id546
  %_i548 = load i64, i64* @i
  %_bop549 = add i64 %_bop547, %_i548
  ret i64 %_bop549
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
