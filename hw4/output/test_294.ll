; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_s2968 = global [13 x i8] c"Hello world!\00"
@_s2969 = global i8* bitcast ([13 x i8]* @_s2968 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2971 = alloca i8*
  %_argc2965 = alloca i64
  store i64 %argc, i64* %_argc2965
  %_argv2967 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2967
  %_tmp2970 = load i8*, i8** @_s2969
  store i8* %_tmp2970, i8** %_str2971
  %_str2973 = load i8*, i8** %_str2971
  call void @print_string(i8* %_str2973)
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
