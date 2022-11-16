; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1405 = alloca i64
  %_argv1407 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1407
  store i64 %argc, i64* %_argc1405
  %_raw_array1410 = call i64* @oat_alloc_array(i64 2)
  %_array1411 = bitcast i64* %_raw_array1410 to { i64, [0 x i64] }*
  %_gep1412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1412
  %_gep1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1414
  %_raw_array1416 = call i64* @oat_alloc_array(i64 2)
  %_array1417 = bitcast i64* %_raw_array1416 to { i64, [0 x i64] }*
  %_gep1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1417, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1418
  %_gep1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1417, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1420
  %_raw_array1422 = call i64* @oat_alloc_array(i64 2)
  %_array1423 = bitcast i64* %_raw_array1422 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1424 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1423, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1411, { i64, [0 x i64] }** %_gep1424
  %_gep1426 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1423, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1417, { i64, [0 x i64] }** %_gep1426
  %_raw_array1428 = call i64* @oat_alloc_array(i64 1)
  %_array1429 = bitcast i64* %_raw_array1428 to { i64, [0 x i64] }*
  %_gep1430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1429, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1430
  %_raw_array1432 = call i64* @oat_alloc_array(i64 1)
  %_array1433 = bitcast i64* %_raw_array1432 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1434 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1433, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1429, { i64, [0 x i64] }** %_gep1434
  %_raw_array1436 = call i64* @oat_alloc_array(i64 2)
  %_array1437 = bitcast i64* %_raw_array1436 to { i64, [0 x i64] }*
  %_gep1438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1437, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep1438
  %_gep1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1437, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep1440
  %_raw_array1442 = call i64* @oat_alloc_array(i64 2)
  %_array1443 = bitcast i64* %_raw_array1442 to { i64, [0 x i64] }*
  %_gep1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1443, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep1444
  %_gep1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1443, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep1446
  %_raw_array1448 = call i64* @oat_alloc_array(i64 2)
  %_array1449 = bitcast i64* %_raw_array1448 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1449, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1437, { i64, [0 x i64] }** %_gep1450
  %_gep1452 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1449, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1443, { i64, [0 x i64] }** %_gep1452
  %_raw_array1454 = call i64* @oat_alloc_array(i64 3)
  %_array1455 = bitcast i64* %_raw_array1454 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep1456 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1455, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1423, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1456
  %_gep1458 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1455, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1433, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1458
  %_gep1460 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1455, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1449, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1460
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1455, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1469 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr1467 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1469, i32 0, i32 1, i32 2
  %_resPtr1468 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1467
  %_ptr1465 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr1468, i32 0, i32 1, i32 0
  %_resPtr1466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1465
  %_ptr1463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1466, i32 0, i32 1, i32 1
  %_resPtr1464 = load i64, i64* %_ptr1463
  ret i64 %_resPtr1464
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
