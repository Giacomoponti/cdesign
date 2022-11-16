; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_arr275 to { i64, [0 x i64] }*)
@_arr275 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x265 = alloca { i64, [0 x i64] }*
  %_argc258 = alloca i64
  %_argv260 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv260
  store i64 %argc, i64* %_argc258
  %_raw_array263 = call i64* @oat_alloc_array(i64 3)
  %_array264 = bitcast i64* %_raw_array263 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array264, { i64, [0 x i64] }** %_x265
  %_x267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x265
  store { i64, [0 x i64] }* %_x267, { i64, [0 x i64] }** @arr
  %_x269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x265
  %_ptr270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x269, i32 0, i32 1, i32 2
  store i64 3, i64* %_ptr270
  %_arr274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr274, i32 0, i32 1, i32 2
  %_resPtr273 = load i64, i64* %_ptr272
  ret i64 %_resPtr273
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
