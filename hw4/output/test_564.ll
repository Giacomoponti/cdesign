; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x291 = alloca i64
  %_y293 = alloca i64
  %_argc286 = alloca i64
  %_argv288 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv288
  store i64 %argc, i64* %_argc286
  store i64 17, i64* %_x291
  store i64 18, i64* %_y293
  %_x295 = load i64, i64* %_x291
  %_y296 = load i64, i64* %_y293
  %_bop297 = add i64 %_x295, %_y296
  ret i64 %_bop297
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
