; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1482 = alloca { i64, [0 x i64] }*
  %_argc1471 = alloca i64
  %_argv1473 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1473
  store i64 %argc, i64* %_argc1471
  %_raw_array1476 = call i64* @oat_alloc_array(i64 2)
  %_array1477 = bitcast i64* %_raw_array1476 to { i64, [0 x i64] }*
  %_gep1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1477, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep1478
  %_gep1480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1477, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1480
  store { i64, [0 x i64] }* %_array1477, { i64, [0 x i64] }** %_arr1482
  %_arr1486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1482
  %_ptr1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1486, i32 0, i32 1, i32 1
  %_resPtr1485 = load i64, i64* %_ptr1484
  ret i64 %_resPtr1485
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
