; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x289 = alloca i64
  %_y291 = alloca i64
  store i64 %argc, i64* %_argc284
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv286
  %_argv286 = alloca { i64, [0 x i8*] }*
  %_argc284 = alloca i64
  store i64 17, i64* %_x289
  store i64 18, i64* %_y291
  %_x293 = load i64, i64* %_x289
  %_y294 = load i64, i64* %_y291
  %_bop295 = add i64 %_x293, %_y294
  ret i64 %_bop295
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
