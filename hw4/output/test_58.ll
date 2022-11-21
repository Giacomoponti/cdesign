; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1523 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1523
  %_arr1526 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1523
  %_ptr1524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1526, i32 0, i32 1, i32 3
  %_resPtr1525 = load i64, i64* %_ptr1524
  ret i64 %_resPtr1525
}

define { i64, [0 x i64] }* @g() {
  %_arr1519 = alloca { i64, [0 x i64] }*
  %_raw_array1509 = call i64* @oat_alloc_array(i64 4)
  %_array1510 = bitcast i64* %_raw_array1509 to { i64, [0 x i64] }*
  %_gep1511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1511
  %_gep1513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1513
  %_gep1515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1515
  %_gep1517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1517
  store { i64, [0 x i64] }* %_array1510, { i64, [0 x i64] }** %_arr1519
  %_arr1521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1519
  ret { i64, [0 x i64] }* %_arr1521
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr11420 = alloca { i64, [0 x i64] }*
  %_arr21454 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1456 = alloca i64
  %_arr41459 = alloca { i64, [0 x i64] }*
  %_arr31471 = alloca { i64, [0 x i64] }*
  %_argc1409 = alloca i64
  store i64 %argc, i64* %_argc1409
  %_argv1411 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1411
  %_raw_array1412 = call i64* @oat_alloc_array(i64 3)
  %_array1413 = bitcast i64* %_raw_array1412 to { i64, [0 x i64] }*
  %_gep1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1413, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1414
  %_gep1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1413, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1416
  %_gep1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1413, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1418
  store { i64, [0 x i64] }* %_array1413, { i64, [0 x i64] }** %_arr11420
  %_raw_array1422 = call i64* @oat_alloc_array(i64 3)
  %_array1423 = bitcast i64* %_raw_array1422 to { i64, [0 x i64] }*
  %_gep1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1424
  %_gep1426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1426
  %_gep1428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1428
  %_raw_array1430 = call i64* @oat_alloc_array(i64 3)
  %_array1431 = bitcast i64* %_raw_array1430 to { i64, [0 x i64] }*
  %_gep1432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1431, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1432
  %_gep1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1431, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1434
  %_gep1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1431, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1436
  %_raw_array1438 = call i64* @oat_alloc_array(i64 3)
  %_array1439 = bitcast i64* %_raw_array1438 to { i64, [0 x i64] }*
  %_gep1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1439, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1440
  %_gep1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1439, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1442
  %_gep1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1439, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1444
  %_raw_array1446 = call i64* @oat_alloc_array(i64 3)
  %_array1447 = bitcast i64* %_raw_array1446 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1448 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1447, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1423, { i64, [0 x i64] }** %_gep1448
  %_gep1450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1447, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1431, { i64, [0 x i64] }** %_gep1450
  %_gep1452 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1447, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1439, { i64, [0 x i64] }** %_gep1452
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1447, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21454
  store i64 1, i64* %_c1456
  %_1458 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_1458, { i64, [0 x i64] }** %_arr41459
  %_raw_array1461 = call i64* @oat_alloc_array(i64 4)
  %_array1462 = bitcast i64* %_raw_array1461 to { i64, [0 x i64] }*
  %_gep1463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1462, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1463
  %_gep1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1462, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1465
  %_gep1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1462, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1467
  %_gep1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1462, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep1469
  store { i64, [0 x i64] }* %_array1462, { i64, [0 x i64] }** %_arr31471
  %_c1473 = load i64, i64* %_c1456
  %_i1474 = load i64, i64* @i
  %_bop1475 = add i64 %_c1473, %_i1474
  store i64 %_bop1475, i64* %_c1456
  %_c1477 = load i64, i64* %_c1456
  %_arr11480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11420
  %_ptr1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11480, i32 0, i32 1, i32 1
  %_resPtr1479 = load i64, i64* %_ptr1478
  %_bop1481 = add i64 %_c1477, %_resPtr1479
  store i64 %_bop1481, i64* %_c1456
  %_c1483 = load i64, i64* %_c1456
  %_arr21488 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21454
  %_ptr1486 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21488, i32 0, i32 1, i32 1
  %_resPtr1487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1486
  %_ptr1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1487, i32 0, i32 1, i32 1
  %_resPtr1485 = load i64, i64* %_ptr1484
  %_bop1489 = add i64 %_c1483, %_resPtr1485
  store i64 %_bop1489, i64* %_c1456
  %_c1491 = load i64, i64* %_c1456
  %_arr31494 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31471
  %_ptr1492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31494, i32 0, i32 1, i32 3
  %_resPtr1493 = load i64, i64* %_ptr1492
  %_bop1495 = add i64 %_c1491, %_resPtr1493
  store i64 %_bop1495, i64* %_c1456
  %_c1497 = load i64, i64* %_c1456
  %_arr31498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31471
  %_1499 = call i64 @f({ i64, [0 x i64] }* %_arr31498)
  %_bop1500 = add i64 %_c1497, %_1499
  store i64 %_bop1500, i64* %_c1456
  %_c1502 = load i64, i64* %_c1456
  %_arr41505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41459
  %_ptr1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41505, i32 0, i32 1, i32 1
  %_resPtr1504 = load i64, i64* %_ptr1503
  %_bop1506 = add i64 %_c1502, %_resPtr1504
  store i64 %_bop1506, i64* %_c1456
  %_c1508 = load i64, i64* %_c1456
  ret i64 %_c1508
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
