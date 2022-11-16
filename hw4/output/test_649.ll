; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i631 = alloca i64
  store i64 12, i64* %_i631
  %_i633 = load i64, i64* %_i631
  ret i64 %_i633
}

define i64 @g() {
  %_i628 = alloca i64
  store i64 10, i64* %_i628
  %_i630 = load i64, i64* %_i628
  ret i64 %_i630
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc618 = alloca i64
  %_argv620 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv620
  store i64 %argc, i64* %_argc618
  %_id623 = call i64 @f()
  %_id624 = call i64 @g()
  %_bop625 = add i64 %_id623, %_id624
  %_i626 = load i64, i64* @i
  %_bop627 = add i64 %_bop625, %_i626
  ret i64 %_bop627
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
