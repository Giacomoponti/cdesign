; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i464 = alloca { i64, [0 x i64] }*
  %_argc453 = alloca i64
  %_argv455 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv455
  store i64 %argc, i64* %_argc453
  %_raw_array458 = call i64* @oat_alloc_array(i64 2)
  %_array459 = bitcast i64* %_raw_array458 to { i64, [0 x i64] }*
  %_gep460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array459, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep460
  %_gep462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array459, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep462
  store { i64, [0 x i64] }* %_array459, { i64, [0 x i64] }** %_i464
  %_i468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i464
  %_ptr466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i468, i32 0, i32 1, i32 0
  %_resPtr467 = load i64, i64* %_ptr466
  ret i64 %_resPtr467
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
