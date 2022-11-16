; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_s3172 = global [13 x i8] c"Hello world!\00"
@_s3173 = global i8* bitcast ([13 x i8]* @_s3172 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str3175 = alloca i8*
  %_argc3167 = alloca i64
  %_argv3169 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3169
  store i64 %argc, i64* %_argc3167
  %_tmp3174 = load i8*, i8** @_s3173
  store i8* %_tmp3174, i8** %_str3175
  %_str3177 = load i8*, i8** %_str3175
  call void @print_string(i8* %_str3177)
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
