; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1678 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1678
  %_arr1682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1679
  %_ptr1680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1682, i32 0, i32 1, i32 3
  %_resPtr1681 = load i64, i64* %_ptr1680
  ret i64 %_resPtr1681
}

define { i64, [0 x i64] }* @g() {
  %_arr1674 = alloca { i64, [0 x i64] }*
  %_raw_array1664 = call i64* @oat_alloc_array(i64 4)
  %_array1665 = bitcast i64* %_raw_array1664 to { i64, [0 x i64] }*
  %_gep1666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1665, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1666
  %_gep1668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1665, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1668
  %_gep1670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1665, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep1670
  %_gep1672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1665, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1672
  store { i64, [0 x i64] }* %_array1665, { i64, [0 x i64] }** %_arr1674
  %_arr1676 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1674
  ret { i64, [0 x i64] }* %_arr1676
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr11575 = alloca { i64, [0 x i64] }*
  %_arr21609 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1611 = alloca i64
  %_arr41614 = alloca { i64, [0 x i64] }*
  %_arr31626 = alloca { i64, [0 x i64] }*
  %_argc1562 = alloca i64
  %_argv1564 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1564
  store i64 %argc, i64* %_argc1562
  %_raw_array1567 = call i64* @oat_alloc_array(i64 3)
  %_array1568 = bitcast i64* %_raw_array1567 to { i64, [0 x i64] }*
  %_gep1569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1568, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1569
  %_gep1571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1568, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1571
  %_gep1573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1568, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1573
  store { i64, [0 x i64] }* %_array1568, { i64, [0 x i64] }** %_arr11575
  %_raw_array1577 = call i64* @oat_alloc_array(i64 3)
  %_array1578 = bitcast i64* %_raw_array1577 to { i64, [0 x i64] }*
  %_gep1579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1578, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1579
  %_gep1581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1578, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1581
  %_gep1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1578, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1583
  %_raw_array1585 = call i64* @oat_alloc_array(i64 3)
  %_array1586 = bitcast i64* %_raw_array1585 to { i64, [0 x i64] }*
  %_gep1587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1586, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1587
  %_gep1589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1586, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1589
  %_gep1591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1586, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1591
  %_raw_array1593 = call i64* @oat_alloc_array(i64 3)
  %_array1594 = bitcast i64* %_raw_array1593 to { i64, [0 x i64] }*
  %_gep1595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep1595
  %_gep1597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1597
  %_gep1599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1599
  %_raw_array1601 = call i64* @oat_alloc_array(i64 3)
  %_array1602 = bitcast i64* %_raw_array1601 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1603 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1602, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1594, { i64, [0 x i64] }** %_gep1603
  %_gep1605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1602, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1586, { i64, [0 x i64] }** %_gep1605
  %_gep1607 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1602, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1578, { i64, [0 x i64] }** %_gep1607
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1602, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21609
  store i64 1, i64* %_c1611
  %_id1613 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_id1613, { i64, [0 x i64] }** %_arr41614
  %_raw_array1616 = call i64* @oat_alloc_array(i64 4)
  %_array1617 = bitcast i64* %_raw_array1616 to { i64, [0 x i64] }*
  %_gep1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1617, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1618
  %_gep1620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1617, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep1620
  %_gep1622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1617, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep1622
  %_gep1624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1617, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep1624
  store { i64, [0 x i64] }* %_array1617, { i64, [0 x i64] }** %_arr31626
  %_c1628 = load i64, i64* %_c1611
  %_i1629 = load i64, i64* @i
  %_bop1630 = add i64 %_c1628, %_i1629
  store i64 %_bop1630, i64* %_c1611
  %_c1632 = load i64, i64* %_c1611
  %_arr11635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11575
  %_ptr1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11635, i32 0, i32 1, i32 1
  %_resPtr1634 = load i64, i64* %_ptr1633
  %_bop1636 = add i64 %_c1632, %_resPtr1634
  store i64 %_bop1636, i64* %_c1611
  %_c1638 = load i64, i64* %_c1611
  %_arr21643 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21609
  %_ptr1641 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21643, i32 0, i32 1, i32 1
  %_resPtr1642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1641
  %_ptr1639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1642, i32 0, i32 1, i32 1
  %_resPtr1640 = load i64, i64* %_ptr1639
  %_bop1644 = add i64 %_c1638, %_resPtr1640
  store i64 %_bop1644, i64* %_c1611
  %_c1646 = load i64, i64* %_c1611
  %_arr31649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31626
  %_ptr1647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31649, i32 0, i32 1, i32 3
  %_resPtr1648 = load i64, i64* %_ptr1647
  %_bop1650 = add i64 %_c1646, %_resPtr1648
  store i64 %_bop1650, i64* %_c1611
  %_c1652 = load i64, i64* %_c1611
  %_arr31653 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31626
  %_id1654 = call i64 @f({ i64, [0 x i64] }* %_arr31653)
  %_bop1655 = add i64 %_c1652, %_id1654
  store i64 %_bop1655, i64* %_c1611
  %_c1657 = load i64, i64* %_c1611
  %_arr41660 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41614
  %_ptr1658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41660, i32 0, i32 1, i32 1
  %_resPtr1659 = load i64, i64* %_ptr1658
  %_bop1661 = add i64 %_c1657, %_resPtr1659
  store i64 %_bop1661, i64* %_c1611
  %_c1663 = load i64, i64* %_c1611
  ret i64 %_c1663
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
