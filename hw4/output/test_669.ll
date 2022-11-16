; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1476 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1453 = alloca i64
  %_argv1455 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1455
  store i64 %argc, i64* %_argc1453
  %_raw_array1458 = call i64* @oat_alloc_array(i64 2)
  %_array1459 = bitcast i64* %_raw_array1458 to { i64, [0 x i64] }*
  %_gep1460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1459, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1460
  %_gep1462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1459, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1462
  %_raw_array1464 = call i64* @oat_alloc_array(i64 2)
  %_array1465 = bitcast i64* %_raw_array1464 to { i64, [0 x i64] }*
  %_gep1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1466
  %_gep1468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1468
  %_raw_array1470 = call i64* @oat_alloc_array(i64 2)
  %_array1471 = bitcast i64* %_raw_array1470 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1471, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1459, { i64, [0 x i64] }** %_gep1472
  %_gep1474 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1471, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1465, { i64, [0 x i64] }** %_gep1474
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1471, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1476
  %_arr1482 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1476
  %_ptr1480 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1482, i32 0, i32 1, i32 1
  %_resPtr1481 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1480
  %_ptr1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1481, i32 0, i32 1, i32 1
  %_resPtr1479 = load i64, i64* %_ptr1478
  ret i64 %_resPtr1479
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
