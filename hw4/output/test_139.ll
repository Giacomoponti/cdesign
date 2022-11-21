; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i570 = alloca i64
  store i64 12, i64* %_i570
  %_i572 = load i64, i64* %_i570
  ret i64 %_i572
}

define i64 @g() {
  %_i567 = alloca i64
  store i64 10, i64* %_i567
  %_i569 = load i64, i64* %_i567
  ret i64 %_i569
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc559 = alloca i64
  store i64 %argc, i64* %_argc559
  %_argv561 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv561
  %_562 = call i64 @f()
  %_563 = call i64 @g()
  %_bop564 = add i64 %_562, %_563
  %_i565 = load i64, i64* @i
  %_bop566 = add i64 %_bop564, %_i565
  ret i64 %_bop566
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
