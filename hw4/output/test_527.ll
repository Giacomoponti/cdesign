; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1507 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1507
  %_arr1511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1508
  %_ptr1509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1511, i32 0, i32 1, i32 3
  %_resPtr1510 = load i64, i64* %_ptr1509
  ret i64 %_resPtr1510
}

define { i64, [0 x i64] }* @g() {
  %_arr1503 = alloca { i64, [0 x i64] }*
  %_raw_array1493 = call i64* @oat_alloc_array(i64 4)
  %_array1494 = bitcast i64* %_raw_array1493 to { i64, [0 x i64] }*
  %_gep1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1495
  %_gep1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1497
  %_gep1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1499
  %_gep1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1494, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1501
  store { i64, [0 x i64] }* %_array1494, { i64, [0 x i64] }** %_arr1503
  %_arr1505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1503
  ret { i64, [0 x i64] }* %_arr1505
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr11404 = alloca { i64, [0 x i64] }*
  %_arr21438 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1440 = alloca i64
  %_arr41443 = alloca { i64, [0 x i64] }*
  %_arr31455 = alloca { i64, [0 x i64] }*
  %_argc1391 = alloca i64
  %_argv1393 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1393
  store i64 %argc, i64* %_argc1391
  %_raw_array1396 = call i64* @oat_alloc_array(i64 3)
  %_array1397 = bitcast i64* %_raw_array1396 to { i64, [0 x i64] }*
  %_gep1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1397, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1398
  %_gep1400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1397, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1400
  %_gep1402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1397, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1402
  store { i64, [0 x i64] }* %_array1397, { i64, [0 x i64] }** %_arr11404
  %_raw_array1406 = call i64* @oat_alloc_array(i64 3)
  %_array1407 = bitcast i64* %_raw_array1406 to { i64, [0 x i64] }*
  %_gep1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1407, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1408
  %_gep1410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1407, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1410
  %_gep1412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1407, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1412
  %_raw_array1414 = call i64* @oat_alloc_array(i64 3)
  %_array1415 = bitcast i64* %_raw_array1414 to { i64, [0 x i64] }*
  %_gep1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1415, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1416
  %_gep1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1415, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1418
  %_gep1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1415, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1420
  %_raw_array1422 = call i64* @oat_alloc_array(i64 3)
  %_array1423 = bitcast i64* %_raw_array1422 to { i64, [0 x i64] }*
  %_gep1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1424
  %_gep1426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1426
  %_gep1428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1423, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1428
  %_raw_array1430 = call i64* @oat_alloc_array(i64 3)
  %_array1431 = bitcast i64* %_raw_array1430 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1432 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1431, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1407, { i64, [0 x i64] }** %_gep1432
  %_gep1434 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1431, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1415, { i64, [0 x i64] }** %_gep1434
  %_gep1436 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1431, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1423, { i64, [0 x i64] }** %_gep1436
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1431, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21438
  store i64 1, i64* %_c1440
  %_id1442 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_id1442, { i64, [0 x i64] }** %_arr41443
  %_raw_array1445 = call i64* @oat_alloc_array(i64 4)
  %_array1446 = bitcast i64* %_raw_array1445 to { i64, [0 x i64] }*
  %_gep1447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1446, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1447
  %_gep1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1446, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1449
  %_gep1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1446, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1451
  %_gep1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1446, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep1453
  store { i64, [0 x i64] }* %_array1446, { i64, [0 x i64] }** %_arr31455
  %_c1457 = load i64, i64* %_c1440
  %_i1458 = load i64, i64* @i
  %_bop1459 = add i64 %_c1457, %_i1458
  store i64 %_bop1459, i64* %_c1440
  %_c1461 = load i64, i64* %_c1440
  %_arr11464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11404
  %_ptr1462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11464, i32 0, i32 1, i32 1
  %_resPtr1463 = load i64, i64* %_ptr1462
  %_bop1465 = add i64 %_c1461, %_resPtr1463
  store i64 %_bop1465, i64* %_c1440
  %_c1467 = load i64, i64* %_c1440
  %_arr21472 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21438
  %_ptr1470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21472, i32 0, i32 1, i32 1
  %_resPtr1471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1470
  %_ptr1468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1471, i32 0, i32 1, i32 1
  %_resPtr1469 = load i64, i64* %_ptr1468
  %_bop1473 = add i64 %_c1467, %_resPtr1469
  store i64 %_bop1473, i64* %_c1440
  %_c1475 = load i64, i64* %_c1440
  %_arr31478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31455
  %_ptr1476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31478, i32 0, i32 1, i32 3
  %_resPtr1477 = load i64, i64* %_ptr1476
  %_bop1479 = add i64 %_c1475, %_resPtr1477
  store i64 %_bop1479, i64* %_c1440
  %_c1481 = load i64, i64* %_c1440
  %_arr31482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31455
  %_id1483 = call i64 @f({ i64, [0 x i64] }* %_arr31482)
  %_bop1484 = add i64 %_c1481, %_id1483
  store i64 %_bop1484, i64* %_c1440
  %_c1486 = load i64, i64* %_c1440
  %_arr41489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41443
  %_ptr1487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41489, i32 0, i32 1, i32 1
  %_resPtr1488 = load i64, i64* %_ptr1487
  %_bop1490 = add i64 %_c1486, %_resPtr1488
  store i64 %_bop1490, i64* %_c1440
  %_c1492 = load i64, i64* %_c1440
  ret i64 %_c1492
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
