; generated from: oatprograms/run61.oat
target triple = "x86_64-unknown-linux"
@s = global i8* bitcast ([3 x i8]* @_str1158 to i8*)
@_str1158 = global [3 x i8] c"42\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc1151
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1153
  %_argv1153 = alloca { i64, [0 x i8*] }*
  %_argc1151 = alloca i64
  %_s1156 = load i8*, i8** @s
  call void @print_string(i8* %_s1156)
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
