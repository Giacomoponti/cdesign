; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1523 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1523
  %_arr1525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1524
  ret { i64, [0 x i64] }* %_arr1525
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1511 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1517 = alloca { i64, [0 x i64] }*
  %_argc1484 = alloca i64
  %_argv1486 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1486
  store i64 %argc, i64* %_argc1484
  %_raw_array1489 = call i64* @oat_alloc_array(i64 3)
  %_array1490 = bitcast i64* %_raw_array1489 to { i64, [0 x i64] }*
  %_gep1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1491
  %_gep1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1493
  %_gep1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1495
  %_raw_array1497 = call i64* @oat_alloc_array(i64 3)
  %_array1498 = bitcast i64* %_raw_array1497 to { i64, [0 x i64] }*
  %_gep1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1498, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep1499
  %_gep1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1498, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep1501
  %_gep1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1498, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep1503
  %_raw_array1505 = call i64* @oat_alloc_array(i64 2)
  %_array1506 = bitcast i64* %_raw_array1505 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1507 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1506, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1490, { i64, [0 x i64] }** %_gep1507
  %_gep1509 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1506, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1498, { i64, [0 x i64] }** %_gep1509
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1506, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1511
  %_garr1515 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1511
  %_ptr1513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1515, i32 0, i32 1, i32 1
  %_resPtr1514 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1513
  %_id1516 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_resPtr1514)
  store { i64, [0 x i64] }* %_id1516, { i64, [0 x i64] }** %_arr1517
  %_arr1521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1517
  %_ptr1519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1521, i32 0, i32 1, i32 1
  %_resPtr1520 = load i64, i64* %_ptr1519
  ret i64 %_resPtr1520
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
