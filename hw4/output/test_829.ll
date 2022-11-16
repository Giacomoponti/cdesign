; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i647 = alloca i64
  store i64 12, i64* %_i647
  %_i649 = load i64, i64* %_i647
  ret i64 %_i649
}

define i64 @g() {
  %_i644 = alloca i64
  store i64 10, i64* %_i644
  %_i646 = load i64, i64* %_i644
  ret i64 %_i646
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc634 = alloca i64
  %_argv636 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv636
  store i64 %argc, i64* %_argc634
  %_id639 = call i64 @f()
  %_id640 = call i64 @g()
  %_bop641 = add i64 %_id639, %_id640
  %_i642 = load i64, i64* @i
  %_bop643 = add i64 %_bop641, %_i642
  ret i64 %_bop643
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
