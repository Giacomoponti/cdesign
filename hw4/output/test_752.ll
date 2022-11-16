; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1669 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1669
  %_arr1673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1670
  %_ptr1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1673, i32 0, i32 1, i32 3
  %_resPtr1672 = load i64, i64* %_ptr1671
  ret i64 %_resPtr1672
}

define { i64, [0 x i64] }* @g() {
  %_arr1665 = alloca { i64, [0 x i64] }*
  %_raw_array1655 = call i64* @oat_alloc_array(i64 4)
  %_array1656 = bitcast i64* %_raw_array1655 to { i64, [0 x i64] }*
  %_gep1657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1656, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1657
  %_gep1659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1656, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1659
  %_gep1661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1656, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1661
  %_gep1663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1656, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1663
  store { i64, [0 x i64] }* %_array1656, { i64, [0 x i64] }** %_arr1665
  %_arr1667 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1665
  ret { i64, [0 x i64] }* %_arr1667
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr11566 = alloca { i64, [0 x i64] }*
  %_arr21600 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1602 = alloca i64
  %_arr41605 = alloca { i64, [0 x i64] }*
  %_arr31617 = alloca { i64, [0 x i64] }*
  %_argc1553 = alloca i64
  %_argv1555 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1555
  store i64 %argc, i64* %_argc1553
  %_raw_array1558 = call i64* @oat_alloc_array(i64 3)
  %_array1559 = bitcast i64* %_raw_array1558 to { i64, [0 x i64] }*
  %_gep1560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1559, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1560
  %_gep1562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1559, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1562
  %_gep1564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1559, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1564
  store { i64, [0 x i64] }* %_array1559, { i64, [0 x i64] }** %_arr11566
  %_raw_array1568 = call i64* @oat_alloc_array(i64 3)
  %_array1569 = bitcast i64* %_raw_array1568 to { i64, [0 x i64] }*
  %_gep1570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1570
  %_gep1572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1572
  %_gep1574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1569, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1574
  %_raw_array1576 = call i64* @oat_alloc_array(i64 3)
  %_array1577 = bitcast i64* %_raw_array1576 to { i64, [0 x i64] }*
  %_gep1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1578
  %_gep1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1580
  %_gep1582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1582
  %_raw_array1584 = call i64* @oat_alloc_array(i64 3)
  %_array1585 = bitcast i64* %_raw_array1584 to { i64, [0 x i64] }*
  %_gep1586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1585, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1586
  %_gep1588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1585, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1588
  %_gep1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1585, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1590
  %_raw_array1592 = call i64* @oat_alloc_array(i64 3)
  %_array1593 = bitcast i64* %_raw_array1592 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1593, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1569, { i64, [0 x i64] }** %_gep1594
  %_gep1596 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1593, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1577, { i64, [0 x i64] }** %_gep1596
  %_gep1598 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1593, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1585, { i64, [0 x i64] }** %_gep1598
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1593, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21600
  store i64 1, i64* %_c1602
  %_id1604 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_id1604, { i64, [0 x i64] }** %_arr41605
  %_raw_array1607 = call i64* @oat_alloc_array(i64 4)
  %_array1608 = bitcast i64* %_raw_array1607 to { i64, [0 x i64] }*
  %_gep1609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1608, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1609
  %_gep1611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1608, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1611
  %_gep1613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1608, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1613
  %_gep1615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1608, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep1615
  store { i64, [0 x i64] }* %_array1608, { i64, [0 x i64] }** %_arr31617
  %_c1619 = load i64, i64* %_c1602
  %_i1620 = load i64, i64* @i
  %_bop1621 = add i64 %_c1619, %_i1620
  store i64 %_bop1621, i64* %_c1602
  %_c1623 = load i64, i64* %_c1602
  %_arr11626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11566
  %_ptr1624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11626, i32 0, i32 1, i32 1
  %_resPtr1625 = load i64, i64* %_ptr1624
  %_bop1627 = add i64 %_c1623, %_resPtr1625
  store i64 %_bop1627, i64* %_c1602
  %_c1629 = load i64, i64* %_c1602
  %_arr21634 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21600
  %_ptr1632 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21634, i32 0, i32 1, i32 1
  %_resPtr1633 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1632
  %_ptr1630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1633, i32 0, i32 1, i32 1
  %_resPtr1631 = load i64, i64* %_ptr1630
  %_bop1635 = add i64 %_c1629, %_resPtr1631
  store i64 %_bop1635, i64* %_c1602
  %_c1637 = load i64, i64* %_c1602
  %_arr31640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31617
  %_ptr1638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31640, i32 0, i32 1, i32 3
  %_resPtr1639 = load i64, i64* %_ptr1638
  %_bop1641 = add i64 %_c1637, %_resPtr1639
  store i64 %_bop1641, i64* %_c1602
  %_c1643 = load i64, i64* %_c1602
  %_arr31644 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31617
  %_id1645 = call i64 @f({ i64, [0 x i64] }* %_arr31644)
  %_bop1646 = add i64 %_c1643, %_id1645
  store i64 %_bop1646, i64* %_c1602
  %_c1648 = load i64, i64* %_c1602
  %_arr41651 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41605
  %_ptr1649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41651, i32 0, i32 1, i32 1
  %_resPtr1650 = load i64, i64* %_ptr1649
  %_bop1652 = add i64 %_c1648, %_resPtr1650
  store i64 %_bop1652, i64* %_c1602
  %_c1654 = load i64, i64* %_c1602
  ret i64 %_c1654
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
