; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1503 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1503
  %_arr1507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1504
  %_ptr1505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1507, i32 0, i32 1, i32 3
  %_resPtr1506 = load i64, i64* %_ptr1505
  ret i64 %_resPtr1506
}

define { i64, [0 x i64] }* @g() {
  %_arr1499 = alloca { i64, [0 x i64] }*
  %_raw_array1489 = call i64* @oat_alloc_array(i64 4)
  %_array1490 = bitcast i64* %_raw_array1489 to { i64, [0 x i64] }*
  %_gep1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1491
  %_gep1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1493
  %_gep1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1495
  %_gep1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1497
  store { i64, [0 x i64] }* %_array1490, { i64, [0 x i64] }** %_arr1499
  %_arr1501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1499
  ret { i64, [0 x i64] }* %_arr1501
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr11400 = alloca { i64, [0 x i64] }*
  %_arr21434 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1436 = alloca i64
  %_arr41439 = alloca { i64, [0 x i64] }*
  %_arr31451 = alloca { i64, [0 x i64] }*
  %_argc1387 = alloca i64
  %_argv1389 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1389
  store i64 %argc, i64* %_argc1387
  %_raw_array1392 = call i64* @oat_alloc_array(i64 3)
  %_array1393 = bitcast i64* %_raw_array1392 to { i64, [0 x i64] }*
  %_gep1394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1393, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1394
  %_gep1396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1393, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1396
  %_gep1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1393, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1398
  store { i64, [0 x i64] }* %_array1393, { i64, [0 x i64] }** %_arr11400
  %_raw_array1402 = call i64* @oat_alloc_array(i64 3)
  %_array1403 = bitcast i64* %_raw_array1402 to { i64, [0 x i64] }*
  %_gep1404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1403, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1404
  %_gep1406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1403, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1406
  %_gep1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1403, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1408
  %_raw_array1410 = call i64* @oat_alloc_array(i64 3)
  %_array1411 = bitcast i64* %_raw_array1410 to { i64, [0 x i64] }*
  %_gep1412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1412
  %_gep1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1414
  %_gep1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1411, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1416
  %_raw_array1418 = call i64* @oat_alloc_array(i64 3)
  %_array1419 = bitcast i64* %_raw_array1418 to { i64, [0 x i64] }*
  %_gep1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1420
  %_gep1422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1422
  %_gep1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1419, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1424
  %_raw_array1426 = call i64* @oat_alloc_array(i64 3)
  %_array1427 = bitcast i64* %_raw_array1426 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1428 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1427, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1403, { i64, [0 x i64] }** %_gep1428
  %_gep1430 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1427, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1411, { i64, [0 x i64] }** %_gep1430
  %_gep1432 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1427, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1419, { i64, [0 x i64] }** %_gep1432
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1427, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21434
  store i64 1, i64* %_c1436
  %_id1438 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_id1438, { i64, [0 x i64] }** %_arr41439
  %_raw_array1441 = call i64* @oat_alloc_array(i64 4)
  %_array1442 = bitcast i64* %_raw_array1441 to { i64, [0 x i64] }*
  %_gep1443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1443
  %_gep1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1445
  %_gep1447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1447
  %_gep1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep1449
  store { i64, [0 x i64] }* %_array1442, { i64, [0 x i64] }** %_arr31451
  %_c1453 = load i64, i64* %_c1436
  %_i1454 = load i64, i64* @i
  %_bop1455 = add i64 %_c1453, %_i1454
  store i64 %_bop1455, i64* %_c1436
  %_c1457 = load i64, i64* %_c1436
  %_arr11460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11400
  %_ptr1458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11460, i32 0, i32 1, i32 1
  %_resPtr1459 = load i64, i64* %_ptr1458
  %_bop1461 = add i64 %_c1457, %_resPtr1459
  store i64 %_bop1461, i64* %_c1436
  %_c1463 = load i64, i64* %_c1436
  %_arr21468 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21434
  %_ptr1466 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21468, i32 0, i32 1, i32 1
  %_resPtr1467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1466
  %_ptr1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1467, i32 0, i32 1, i32 1
  %_resPtr1465 = load i64, i64* %_ptr1464
  %_bop1469 = add i64 %_c1463, %_resPtr1465
  store i64 %_bop1469, i64* %_c1436
  %_c1471 = load i64, i64* %_c1436
  %_arr31474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31451
  %_ptr1472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31474, i32 0, i32 1, i32 3
  %_resPtr1473 = load i64, i64* %_ptr1472
  %_bop1475 = add i64 %_c1471, %_resPtr1473
  store i64 %_bop1475, i64* %_c1436
  %_c1477 = load i64, i64* %_c1436
  %_arr31478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31451
  %_id1479 = call i64 @f({ i64, [0 x i64] }* %_arr31478)
  %_bop1480 = add i64 %_c1477, %_id1479
  store i64 %_bop1480, i64* %_c1436
  %_c1482 = load i64, i64* %_c1436
  %_arr41485 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41439
  %_ptr1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41485, i32 0, i32 1, i32 1
  %_resPtr1484 = load i64, i64* %_ptr1483
  %_bop1486 = add i64 %_c1482, %_resPtr1484
  store i64 %_bop1486, i64* %_c1436
  %_c1488 = load i64, i64* %_c1436
  ret i64 %_c1488
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
