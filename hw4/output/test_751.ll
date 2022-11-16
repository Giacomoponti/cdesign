; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1549 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1549
  %_arr1551 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1550
  ret { i64, [0 x i64] }* %_arr1551
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1537 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1543 = alloca { i64, [0 x i64] }*
  %_argc1510 = alloca i64
  %_argv1512 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1512
  store i64 %argc, i64* %_argc1510
  %_raw_array1515 = call i64* @oat_alloc_array(i64 3)
  %_array1516 = bitcast i64* %_raw_array1515 to { i64, [0 x i64] }*
  %_gep1517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1516, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1517
  %_gep1519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1516, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1519
  %_gep1521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1516, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1521
  %_raw_array1523 = call i64* @oat_alloc_array(i64 3)
  %_array1524 = bitcast i64* %_raw_array1523 to { i64, [0 x i64] }*
  %_gep1525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep1525
  %_gep1527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep1527
  %_gep1529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep1529
  %_raw_array1531 = call i64* @oat_alloc_array(i64 2)
  %_array1532 = bitcast i64* %_raw_array1531 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1516, { i64, [0 x i64] }** %_gep1533
  %_gep1535 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1524, { i64, [0 x i64] }** %_gep1535
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1532, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1537
  %_garr1541 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1537
  %_ptr1539 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1541, i32 0, i32 1, i32 1
  %_resPtr1540 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1539
  %_id1542 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_resPtr1540)
  store { i64, [0 x i64] }* %_id1542, { i64, [0 x i64] }** %_arr1543
  %_arr1547 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1543
  %_ptr1545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1547, i32 0, i32 1, i32 1
  %_resPtr1546 = load i64, i64* %_ptr1545
  ret i64 %_resPtr1546
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
