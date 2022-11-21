; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x296 = alloca i64
  %_y298 = alloca i64
  %_argc293 = alloca i64
  store i64 %argc, i64* %_argc293
  %_argv295 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv295
  store i64 17, i64* %_x296
  store i64 18, i64* %_y298
  %_x300 = load i64, i64* %_x296
  %_y301 = load i64, i64* %_y298
  %_bop302 = add i64 %_x300, %_y301
  ret i64 %_bop302
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
