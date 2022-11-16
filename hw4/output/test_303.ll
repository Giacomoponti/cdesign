; generated from: oatprograms/run27.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i481 = alloca i64
  store i64 %argc, i64* %_argc476
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv478
  %_argv478 = alloca { i64, [0 x i8*] }*
  %_argc476 = alloca i64
  store i64 99, i64* %_i481
  %_i483 = load i64, i64* %_i481
  ret i64 %_i483
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
