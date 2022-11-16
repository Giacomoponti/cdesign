; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x331 = alloca i64
  %_y333 = alloca i64
  %_argc326 = alloca i64
  %_argv328 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv328
  store i64 %argc, i64* %_argc326
  store i64 17, i64* %_x331
  store i64 18, i64* %_y333
  %_x335 = load i64, i64* %_x331
  %_y336 = load i64, i64* %_y333
  %_bop337 = add i64 %_x335, %_y336
  ret i64 %_bop337
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
