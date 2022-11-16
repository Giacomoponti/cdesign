; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1758 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1758
  %_a1764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1759
  %_ptr1762 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1764, i32 0, i32 1, i32 1
  %_resPtr1763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1762
  %_ptr1760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1763, i32 0, i32 1, i32 1
  %_resPtr1761 = load i64, i64* %_ptr1760
  ret i64 %_resPtr1761
}

define i64 @g(i64 %x) {
  %_arr1750 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1707 = alloca i64
  store i64 %x, i64* %_x1707
  %_x1709 = load i64, i64* %_x1708
  %_x1710 = load i64, i64* %_x1708
  %_x1711 = load i64, i64* %_x1708
  %_raw_array1712 = call i64* @oat_alloc_array(i64 3)
  %_array1713 = bitcast i64* %_raw_array1712 to { i64, [0 x i64] }*
  %_gep1714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1713, i32 0, i32 1, i32 0
  store i64 %_x1709, i64* %_gep1714
  %_gep1716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1713, i32 0, i32 1, i32 1
  store i64 %_x1710, i64* %_gep1716
  %_gep1718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1713, i32 0, i32 1, i32 2
  store i64 %_x1711, i64* %_gep1718
  %_x1720 = load i64, i64* %_x1708
  %_x1721 = load i64, i64* %_x1708
  %_x1722 = load i64, i64* %_x1708
  %_raw_array1723 = call i64* @oat_alloc_array(i64 3)
  %_array1724 = bitcast i64* %_raw_array1723 to { i64, [0 x i64] }*
  %_gep1725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1724, i32 0, i32 1, i32 0
  store i64 %_x1720, i64* %_gep1725
  %_gep1727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1724, i32 0, i32 1, i32 1
  store i64 %_x1721, i64* %_gep1727
  %_gep1729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1724, i32 0, i32 1, i32 2
  store i64 %_x1722, i64* %_gep1729
  %_x1731 = load i64, i64* %_x1708
  %_x1732 = load i64, i64* %_x1708
  %_x1733 = load i64, i64* %_x1708
  %_raw_array1734 = call i64* @oat_alloc_array(i64 3)
  %_array1735 = bitcast i64* %_raw_array1734 to { i64, [0 x i64] }*
  %_gep1736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1735, i32 0, i32 1, i32 0
  store i64 %_x1731, i64* %_gep1736
  %_gep1738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1735, i32 0, i32 1, i32 1
  store i64 %_x1732, i64* %_gep1738
  %_gep1740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1735, i32 0, i32 1, i32 2
  store i64 %_x1733, i64* %_gep1740
  %_raw_array1742 = call i64* @oat_alloc_array(i64 3)
  %_array1743 = bitcast i64* %_raw_array1742 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1744 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1713, { i64, [0 x i64] }** %_gep1744
  %_gep1746 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1724, { i64, [0 x i64] }** %_gep1746
  %_gep1748 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1735, { i64, [0 x i64] }** %_gep1748
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1750
  %_arr1756 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1750
  %_ptr1754 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1756, i32 0, i32 1, i32 1
  %_resPtr1755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1754
  %_ptr1752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1755, i32 0, i32 1, i32 1
  %_resPtr1753 = load i64, i64* %_ptr1752
  ret i64 %_resPtr1753
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1565 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1645 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01688 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1528 = alloca i64
  %_argv1530 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1530
  store i64 %argc, i64* %_argc1528
  %_raw_array1533 = call i64* @oat_alloc_array(i64 3)
  %_array1534 = bitcast i64* %_raw_array1533 to { i64, [0 x i64] }*
  %_gep1535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1534, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1535
  %_gep1537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1534, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1537
  %_gep1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1534, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1539
  %_raw_array1541 = call i64* @oat_alloc_array(i64 3)
  %_array1542 = bitcast i64* %_raw_array1541 to { i64, [0 x i64] }*
  %_gep1543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1542, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1543
  %_gep1545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1542, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1545
  %_gep1547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1542, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1547
  %_raw_array1549 = call i64* @oat_alloc_array(i64 3)
  %_array1550 = bitcast i64* %_raw_array1549 to { i64, [0 x i64] }*
  %_gep1551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1550, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1551
  %_gep1553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1550, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1553
  %_gep1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1550, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1555
  %_raw_array1557 = call i64* @oat_alloc_array(i64 3)
  %_array1558 = bitcast i64* %_raw_array1557 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1559 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1558, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1534, { i64, [0 x i64] }** %_gep1559
  %_gep1561 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1558, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1542, { i64, [0 x i64] }** %_gep1561
  %_gep1563 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1558, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1550, { i64, [0 x i64] }** %_gep1563
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1558, { i64, [0 x { i64, [0 x i64] }*] }** %_a1565
  %_bop1567 = mul i64 0, 0
  %_bop1568 = mul i64 0, 1
  %_bop1569 = mul i64 0, 2
  %_bop1570 = mul i64 0, 3
  %_bop1571 = mul i64 0, 4
  %_raw_array1572 = call i64* @oat_alloc_array(i64 5)
  %_array1573 = bitcast i64* %_raw_array1572 to { i64, [0 x i64] }*
  %_gep1574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1573, i32 0, i32 1, i32 0
  store i64 %_bop1567, i64* %_gep1574
  %_gep1576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1573, i32 0, i32 1, i32 1
  store i64 %_bop1568, i64* %_gep1576
  %_gep1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1573, i32 0, i32 1, i32 2
  store i64 %_bop1569, i64* %_gep1578
  %_gep1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1573, i32 0, i32 1, i32 3
  store i64 %_bop1570, i64* %_gep1580
  %_gep1582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1573, i32 0, i32 1, i32 4
  store i64 %_bop1571, i64* %_gep1582
  %_bop1584 = mul i64 1, 0
  %_bop1585 = mul i64 1, 1
  %_bop1586 = mul i64 1, 2
  %_bop1587 = mul i64 1, 3
  %_bop1588 = mul i64 1, 4
  %_raw_array1589 = call i64* @oat_alloc_array(i64 5)
  %_array1590 = bitcast i64* %_raw_array1589 to { i64, [0 x i64] }*
  %_gep1591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 0
  store i64 %_bop1584, i64* %_gep1591
  %_gep1593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 1
  store i64 %_bop1585, i64* %_gep1593
  %_gep1595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 2
  store i64 %_bop1586, i64* %_gep1595
  %_gep1597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 3
  store i64 %_bop1587, i64* %_gep1597
  %_gep1599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 4
  store i64 %_bop1588, i64* %_gep1599
  %_bop1601 = mul i64 2, 0
  %_bop1602 = mul i64 2, 1
  %_bop1603 = mul i64 2, 2
  %_bop1604 = mul i64 2, 3
  %_bop1605 = mul i64 2, 4
  %_raw_array1606 = call i64* @oat_alloc_array(i64 5)
  %_array1607 = bitcast i64* %_raw_array1606 to { i64, [0 x i64] }*
  %_gep1608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 0
  store i64 %_bop1601, i64* %_gep1608
  %_gep1610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 1
  store i64 %_bop1602, i64* %_gep1610
  %_gep1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 2
  store i64 %_bop1603, i64* %_gep1612
  %_gep1614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 3
  store i64 %_bop1604, i64* %_gep1614
  %_gep1616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1607, i32 0, i32 1, i32 4
  store i64 %_bop1605, i64* %_gep1616
  %_bop1618 = mul i64 3, 0
  %_bop1619 = mul i64 3, 1
  %_bop1620 = mul i64 3, 2
  %_bop1621 = mul i64 3, 3
  %_bop1622 = mul i64 3, 4
  %_raw_array1623 = call i64* @oat_alloc_array(i64 5)
  %_array1624 = bitcast i64* %_raw_array1623 to { i64, [0 x i64] }*
  %_gep1625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 0
  store i64 %_bop1618, i64* %_gep1625
  %_gep1627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 1
  store i64 %_bop1619, i64* %_gep1627
  %_gep1629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 2
  store i64 %_bop1620, i64* %_gep1629
  %_gep1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 3
  store i64 %_bop1621, i64* %_gep1631
  %_gep1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 4
  store i64 %_bop1622, i64* %_gep1633
  %_raw_array1635 = call i64* @oat_alloc_array(i64 4)
  %_array1636 = bitcast i64* %_raw_array1635 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1637 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1636, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1573, { i64, [0 x i64] }** %_gep1637
  %_gep1639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1636, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1590, { i64, [0 x i64] }** %_gep1639
  %_gep1641 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1636, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1607, { i64, [0 x i64] }** %_gep1641
  %_gep1643 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1636, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1624, { i64, [0 x i64] }** %_gep1643
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1636, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1645
  %_bop1647 = mul i64 0, 0
  %_bop1648 = mul i64 0, 1
  %_bop1649 = mul i64 0, 2
  %_raw_array1650 = call i64* @oat_alloc_array(i64 3)
  %_array1651 = bitcast i64* %_raw_array1650 to { i64, [0 x i64] }*
  %_gep1652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1651, i32 0, i32 1, i32 0
  store i64 %_bop1647, i64* %_gep1652
  %_gep1654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1651, i32 0, i32 1, i32 1
  store i64 %_bop1648, i64* %_gep1654
  %_gep1656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1651, i32 0, i32 1, i32 2
  store i64 %_bop1649, i64* %_gep1656
  %_bop1658 = mul i64 1, 0
  %_bop1659 = mul i64 1, 1
  %_bop1660 = mul i64 1, 2
  %_raw_array1661 = call i64* @oat_alloc_array(i64 3)
  %_array1662 = bitcast i64* %_raw_array1661 to { i64, [0 x i64] }*
  %_gep1663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1662, i32 0, i32 1, i32 0
  store i64 %_bop1658, i64* %_gep1663
  %_gep1665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1662, i32 0, i32 1, i32 1
  store i64 %_bop1659, i64* %_gep1665
  %_gep1667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1662, i32 0, i32 1, i32 2
  store i64 %_bop1660, i64* %_gep1667
  %_bop1669 = mul i64 2, 0
  %_bop1670 = mul i64 2, 1
  %_bop1671 = mul i64 2, 2
  %_raw_array1672 = call i64* @oat_alloc_array(i64 3)
  %_array1673 = bitcast i64* %_raw_array1672 to { i64, [0 x i64] }*
  %_gep1674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1673, i32 0, i32 1, i32 0
  store i64 %_bop1669, i64* %_gep1674
  %_gep1676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1673, i32 0, i32 1, i32 1
  store i64 %_bop1670, i64* %_gep1676
  %_gep1678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1673, i32 0, i32 1, i32 2
  store i64 %_bop1671, i64* %_gep1678
  %_raw_array1680 = call i64* @oat_alloc_array(i64 3)
  %_array1681 = bitcast i64* %_raw_array1680 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1682 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1681, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1651, { i64, [0 x i64] }** %_gep1682
  %_gep1684 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1681, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1662, { i64, [0 x i64] }** %_gep1684
  %_gep1686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1681, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1673, { i64, [0 x i64] }** %_gep1686
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1681, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01688
  %_arr1694 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1645
  %_ptr1692 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1694, i32 0, i32 1, i32 3
  %_resPtr1693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1692
  %_ptr1690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1693, i32 0, i32 1, i32 4
  %_resPtr1691 = load i64, i64* %_ptr1690
  %_a1699 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1565
  %_ptr1697 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1699, i32 0, i32 1, i32 1
  %_resPtr1698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1697
  %_ptr1695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1698, i32 0, i32 1, i32 2
  %_resPtr1696 = load i64, i64* %_ptr1695
  %_bop1700 = add i64 %_resPtr1691, %_resPtr1696
  %_arr01701 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01688
  %_id1702 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01701)
  %_bop1703 = add i64 %_bop1700, %_id1702
  %_id1704 = call i64 @g(i64 4)
  %_bop1705 = add i64 %_bop1703, %_id1704
  ret i64 %_bop1705
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
