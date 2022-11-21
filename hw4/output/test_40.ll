; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8

define i64 @f() {
  %_j857 = alloca i64
  store i64 0, i64* %_j857
  %_859 = call i64 @g()
  store i64 %_859, i64* %_j857
  %_j861 = load i64, i64* %_j857
  ret i64 %_j861
}

define i64 @g() {
  %_i856 = load i64, i64* @i
  ret i64 %_i856
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc852 = alloca i64
  store i64 %argc, i64* %_argc852
  %_argv854 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv854
  %_855 = call i64 @f()
  ret i64 %_855
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
