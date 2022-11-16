; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i558 = alloca { i64, [0 x i64] }*
  %_argc547 = alloca i64
  %_argv549 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv549
  store i64 %argc, i64* %_argc547
  %_raw_array552 = call i64* @oat_alloc_array(i64 2)
  %_array553 = bitcast i64* %_raw_array552 to { i64, [0 x i64] }*
  %_gep554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array553, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep554
  %_gep556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array553, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep556
  store { i64, [0 x i64] }* %_array553, { i64, [0 x i64] }** %_i558
  %_i562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i558
  %_ptr560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i562, i32 0, i32 1, i32 0
  %_resPtr561 = load i64, i64* %_ptr560
  ret i64 %_resPtr561
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
