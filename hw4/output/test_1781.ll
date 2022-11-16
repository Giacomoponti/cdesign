; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1558
  %_arr1558 = alloca { i64, [0 x i64] }*
  %_arr1560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1559
  ret { i64, [0 x i64] }* %_arr1560
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1546 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1552 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1519
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1521
  %_argv1521 = alloca { i64, [0 x i8*] }*
  %_argc1519 = alloca i64
  %_raw_array1524 = call i64* @oat_alloc_array(i64 3)
  %_array1525 = bitcast i64* %_raw_array1524 to { i64, [0 x i64] }*
  %_gep1526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1526
  %_gep1528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1528
  %_gep1530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1525, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1530
  %_raw_array1532 = call i64* @oat_alloc_array(i64 3)
  %_array1533 = bitcast i64* %_raw_array1532 to { i64, [0 x i64] }*
  %_gep1534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep1534
  %_gep1536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep1536
  %_gep1538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep1538
  %_raw_array1540 = call i64* @oat_alloc_array(i64 2)
  %_array1541 = bitcast i64* %_raw_array1540 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1542 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1541, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1525, { i64, [0 x i64] }** %_gep1542
  %_gep1544 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1541, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1533, { i64, [0 x i64] }** %_gep1544
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1541, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1546
  %_garr1550 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1546
  %_ptr1548 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1550, i32 0, i32 1, i32 1
  %_resPtr1549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1548
  %_id1551 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_resPtr1549)
  store { i64, [0 x i64] }* %_id1551, { i64, [0 x i64] }** %_arr1552
  %_arr1556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1552
  %_ptr1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1556, i32 0, i32 1, i32 1
  %_resPtr1555 = load i64, i64* %_ptr1554
  ret i64 %_resPtr1555
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
