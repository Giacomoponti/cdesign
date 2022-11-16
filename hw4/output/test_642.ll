; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i542 = alloca { i64, [0 x i64] }*
  %_argc531 = alloca i64
  %_argv533 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv533
  store i64 %argc, i64* %_argc531
  %_raw_array536 = call i64* @oat_alloc_array(i64 2)
  %_array537 = bitcast i64* %_raw_array536 to { i64, [0 x i64] }*
  %_gep538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array537, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep538
  %_gep540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array537, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep540
  store { i64, [0 x i64] }* %_array537, { i64, [0 x i64] }** %_i542
  %_i546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i542
  %_ptr544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i546, i32 0, i32 1, i32 0
  %_resPtr545 = load i64, i64* %_ptr544
  ret i64 %_resPtr545
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
