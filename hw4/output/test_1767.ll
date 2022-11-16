; generated from: oatprograms/run49.oat
target triple = "x86_64-unknown-linux"
@_s1128 = global [4 x i8] c"abc\00"
@_s1129 = global i8* bitcast ([4 x i8]* @_s1128 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc1123
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1125
  %_argv1125 = alloca { i64, [0 x i8*] }*
  %_argc1123 = alloca i64
  %_tmp1130 = load i8*, i8** @_s1129
  call void @print_string(i8* %_tmp1130)
  ret i64 0
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
