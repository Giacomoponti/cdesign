; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i495 = alloca { i64, [0 x i64] }*
  %_argc486 = alloca i64
  store i64 %argc, i64* %_argc486
  %_argv488 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv488
  %_raw_array489 = call i64* @oat_alloc_array(i64 2)
  %_array490 = bitcast i64* %_raw_array489 to { i64, [0 x i64] }*
  %_gep491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep491
  %_gep493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep493
  store { i64, [0 x i64] }* %_array490, { i64, [0 x i64] }** %_i495
  %_i499 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i495
  %_ptr497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i499, i32 0, i32 1, i32 0
  %_resPtr498 = load i64, i64* %_ptr497
  ret i64 %_resPtr498
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
