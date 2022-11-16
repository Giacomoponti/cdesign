; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1643 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1643
  %_arr1647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1644
  %_ptr1645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1647, i32 0, i32 1, i32 3
  %_resPtr1646 = load i64, i64* %_ptr1645
  ret i64 %_resPtr1646
}

define { i64, [0 x i64] }* @g() {
  %_arr1639 = alloca { i64, [0 x i64] }*
  %_raw_array1629 = call i64* @oat_alloc_array(i64 4)
  %_array1630 = bitcast i64* %_raw_array1629 to { i64, [0 x i64] }*
  %_gep1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1631
  %_gep1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1633
  %_gep1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1635
  %_gep1637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1637
  store { i64, [0 x i64] }* %_array1630, { i64, [0 x i64] }** %_arr1639
  %_arr1641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1639
  ret { i64, [0 x i64] }* %_arr1641
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr11540 = alloca { i64, [0 x i64] }*
  %_arr21574 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1576 = alloca i64
  %_arr41579 = alloca { i64, [0 x i64] }*
  %_arr31591 = alloca { i64, [0 x i64] }*
  %_argc1527 = alloca i64
  %_argv1529 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1529
  store i64 %argc, i64* %_argc1527
  %_raw_array1532 = call i64* @oat_alloc_array(i64 3)
  %_array1533 = bitcast i64* %_raw_array1532 to { i64, [0 x i64] }*
  %_gep1534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1534
  %_gep1536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1536
  %_gep1538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1538
  store { i64, [0 x i64] }* %_array1533, { i64, [0 x i64] }** %_arr11540
  %_raw_array1542 = call i64* @oat_alloc_array(i64 3)
  %_array1543 = bitcast i64* %_raw_array1542 to { i64, [0 x i64] }*
  %_gep1544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1543, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1544
  %_gep1546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1543, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1546
  %_gep1548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1543, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1548
  %_raw_array1550 = call i64* @oat_alloc_array(i64 3)
  %_array1551 = bitcast i64* %_raw_array1550 to { i64, [0 x i64] }*
  %_gep1552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1552
  %_gep1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1554
  %_gep1556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1551, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1556
  %_raw_array1558 = call i64* @oat_alloc_array(i64 3)
  %_array1559 = bitcast i64* %_raw_array1558 to { i64, [0 x i64] }*
  %_gep1560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1559, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1560
  %_gep1562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1559, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1562
  %_gep1564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1559, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1564
  %_raw_array1566 = call i64* @oat_alloc_array(i64 3)
  %_array1567 = bitcast i64* %_raw_array1566 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1567, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1543, { i64, [0 x i64] }** %_gep1568
  %_gep1570 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1567, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1551, { i64, [0 x i64] }** %_gep1570
  %_gep1572 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1567, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1559, { i64, [0 x i64] }** %_gep1572
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1567, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21574
  store i64 1, i64* %_c1576
  %_id1578 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_id1578, { i64, [0 x i64] }** %_arr41579
  %_raw_array1581 = call i64* @oat_alloc_array(i64 4)
  %_array1582 = bitcast i64* %_raw_array1581 to { i64, [0 x i64] }*
  %_gep1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1583
  %_gep1585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1585
  %_gep1587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1587
  %_gep1589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep1589
  store { i64, [0 x i64] }* %_array1582, { i64, [0 x i64] }** %_arr31591
  %_c1593 = load i64, i64* %_c1576
  %_i1594 = load i64, i64* @i
  %_bop1595 = add i64 %_c1593, %_i1594
  store i64 %_bop1595, i64* %_c1576
  %_c1597 = load i64, i64* %_c1576
  %_arr11600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11540
  %_ptr1598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11600, i32 0, i32 1, i32 1
  %_resPtr1599 = load i64, i64* %_ptr1598
  %_bop1601 = add i64 %_c1597, %_resPtr1599
  store i64 %_bop1601, i64* %_c1576
  %_c1603 = load i64, i64* %_c1576
  %_arr21608 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21574
  %_ptr1606 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21608, i32 0, i32 1, i32 1
  %_resPtr1607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1606
  %_ptr1604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1607, i32 0, i32 1, i32 1
  %_resPtr1605 = load i64, i64* %_ptr1604
  %_bop1609 = add i64 %_c1603, %_resPtr1605
  store i64 %_bop1609, i64* %_c1576
  %_c1611 = load i64, i64* %_c1576
  %_arr31614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31591
  %_ptr1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31614, i32 0, i32 1, i32 3
  %_resPtr1613 = load i64, i64* %_ptr1612
  %_bop1615 = add i64 %_c1611, %_resPtr1613
  store i64 %_bop1615, i64* %_c1576
  %_c1617 = load i64, i64* %_c1576
  %_arr31618 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31591
  %_id1619 = call i64 @f({ i64, [0 x i64] }* %_arr31618)
  %_bop1620 = add i64 %_c1617, %_id1619
  store i64 %_bop1620, i64* %_c1576
  %_c1622 = load i64, i64* %_c1576
  %_arr41625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41579
  %_ptr1623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41625, i32 0, i32 1, i32 1
  %_resPtr1624 = load i64, i64* %_ptr1623
  %_bop1626 = add i64 %_c1622, %_resPtr1624
  store i64 %_bop1626, i64* %_c1576
  %_c1628 = load i64, i64* %_c1576
  ret i64 %_c1628
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
