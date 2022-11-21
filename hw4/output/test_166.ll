; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1632 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1632
  %_a1635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1632
  %_ptr1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1635, i32 0, i32 1, i32 1
  %_resPtr1634 = load i64, i64* %_ptr1633
  ret i64 %_resPtr1634
}

define i64 @g(i64 %x) {
  %_arr1610 = alloca { i64, [0 x i64] }*
  %_i1612 = alloca i64
  %_x1607 = alloca i64
  store i64 %x, i64* %_x1607
  %_raw_array1608 = call i64* @oat_alloc_array(i64 3)
  %_array1609 = bitcast i64* %_raw_array1608 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1609, { i64, [0 x i64] }** %_arr1610
  store i64 0, i64* %_i1612
  br label %_pre1617
_pre1617:
  %_i1614 = load i64, i64* %_i1612
  %_bop1615 = icmp slt i64 %_i1614, 3
  %_cnd1619 = icmp eq i1 %_bop1615, 0
  br i1 %_cnd1619, label %_post1616, label %_body1618
_body1618:
  %_x1620 = load i64, i64* %_x1607
  %_arr1621 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1610
  %_i1622 = load i64, i64* %_i1612
  %_ptr1623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1621, i32 0, i32 1, i64 %_i1622
  store i64 %_x1620, i64* %_ptr1623
  %_i1625 = load i64, i64* %_i1612
  %_bop1626 = add i64 %_i1625, 1
  store i64 %_bop1626, i64* %_i1612
  br label %_pre1617
_post1616:
  %_arr1630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1610
  %_ptr1628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1630, i32 0, i32 1, i32 1
  %_resPtr1629 = load i64, i64* %_ptr1628
  ret i64 %_resPtr1629
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1533 = alloca { i64, [0 x i64] }*
  %_i1535 = alloca i64
  %_arr1553 = alloca { i64, [0 x i64] }*
  %_i1555 = alloca i64
  %_arr01575 = alloca { i64, [0 x i64] }*
  %_i1577 = alloca i64
  %_argc1528 = alloca i64
  store i64 %argc, i64* %_argc1528
  %_argv1530 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1530
  %_raw_array1531 = call i64* @oat_alloc_array(i64 3)
  %_array1532 = bitcast i64* %_raw_array1531 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1532, { i64, [0 x i64] }** %_a1533
  store i64 0, i64* %_i1535
  br label %_pre1540
_pre1540:
  %_i1537 = load i64, i64* %_i1535
  %_bop1538 = icmp slt i64 %_i1537, 3
  %_cnd1542 = icmp eq i1 %_bop1538, 0
  br i1 %_cnd1542, label %_post1539, label %_body1541
_body1541:
  %_i1543 = load i64, i64* %_i1535
  %_a1544 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1533
  %_i1545 = load i64, i64* %_i1535
  %_ptr1546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1544, i32 0, i32 1, i64 %_i1545
  store i64 %_i1543, i64* %_ptr1546
  %_i1548 = load i64, i64* %_i1535
  %_bop1549 = add i64 %_i1548, 1
  store i64 %_bop1549, i64* %_i1535
  br label %_pre1540
_post1539:
  %_raw_array1551 = call i64* @oat_alloc_array(i64 4)
  %_array1552 = bitcast i64* %_raw_array1551 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1552, { i64, [0 x i64] }** %_arr1553
  store i64 0, i64* %_i1555
  br label %_pre1560
_pre1560:
  %_i1557 = load i64, i64* %_i1555
  %_bop1558 = icmp slt i64 %_i1557, 4
  %_cnd1562 = icmp eq i1 %_bop1558, 0
  br i1 %_cnd1562, label %_post1559, label %_body1561
_body1561:
  %_i1563 = load i64, i64* %_i1555
  %_i1564 = load i64, i64* %_i1555
  %_bop1565 = mul i64 %_i1563, %_i1564
  %_arr1566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1553
  %_i1567 = load i64, i64* %_i1555
  %_ptr1568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1566, i32 0, i32 1, i64 %_i1567
  store i64 %_bop1565, i64* %_ptr1568
  %_i1570 = load i64, i64* %_i1555
  %_bop1571 = add i64 %_i1570, 1
  store i64 %_bop1571, i64* %_i1555
  br label %_pre1560
_post1559:
  %_raw_array1573 = call i64* @oat_alloc_array(i64 3)
  %_array1574 = bitcast i64* %_raw_array1573 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1574, { i64, [0 x i64] }** %_arr01575
  store i64 0, i64* %_i1577
  br label %_pre1582
_pre1582:
  %_i1579 = load i64, i64* %_i1577
  %_bop1580 = icmp slt i64 %_i1579, 3
  %_cnd1584 = icmp eq i1 %_bop1580, 0
  br i1 %_cnd1584, label %_post1581, label %_body1583
_body1583:
  %_i1585 = load i64, i64* %_i1577
  %_bop1586 = mul i64 2, %_i1585
  %_arr01587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01575
  %_i1588 = load i64, i64* %_i1577
  %_ptr1589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01587, i32 0, i32 1, i64 %_i1588
  store i64 %_bop1586, i64* %_ptr1589
  %_i1591 = load i64, i64* %_i1577
  %_bop1592 = add i64 %_i1591, 1
  store i64 %_bop1592, i64* %_i1577
  br label %_pre1582
_post1581:
  %_arr1596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1553
  %_ptr1594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1596, i32 0, i32 1, i32 3
  %_resPtr1595 = load i64, i64* %_ptr1594
  %_a1599 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1533
  %_ptr1597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1599, i32 0, i32 1, i32 1
  %_resPtr1598 = load i64, i64* %_ptr1597
  %_bop1600 = add i64 %_resPtr1595, %_resPtr1598
  %_arr01601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01575
  %_1602 = call i64 @f({ i64, [0 x i64] }* %_arr01601)
  %_bop1603 = add i64 %_bop1600, %_1602
  %_1604 = call i64 @g(i64 4)
  %_bop1605 = add i64 %_bop1603, %_1604
  ret i64 %_bop1605
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
