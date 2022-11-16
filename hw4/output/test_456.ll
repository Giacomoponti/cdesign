; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1762 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1762
  %_a1768 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1763
  %_ptr1766 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1768, i32 0, i32 1, i32 1
  %_resPtr1767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1766
  %_ptr1764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1767, i32 0, i32 1, i32 1
  %_resPtr1765 = load i64, i64* %_ptr1764
  ret i64 %_resPtr1765
}

define i64 @g(i64 %x) {
  %_arr1754 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1711 = alloca i64
  store i64 %x, i64* %_x1711
  %_x1713 = load i64, i64* %_x1712
  %_x1714 = load i64, i64* %_x1712
  %_x1715 = load i64, i64* %_x1712
  %_raw_array1716 = call i64* @oat_alloc_array(i64 3)
  %_array1717 = bitcast i64* %_raw_array1716 to { i64, [0 x i64] }*
  %_gep1718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1717, i32 0, i32 1, i32 0
  store i64 %_x1713, i64* %_gep1718
  %_gep1720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1717, i32 0, i32 1, i32 1
  store i64 %_x1714, i64* %_gep1720
  %_gep1722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1717, i32 0, i32 1, i32 2
  store i64 %_x1715, i64* %_gep1722
  %_x1724 = load i64, i64* %_x1712
  %_x1725 = load i64, i64* %_x1712
  %_x1726 = load i64, i64* %_x1712
  %_raw_array1727 = call i64* @oat_alloc_array(i64 3)
  %_array1728 = bitcast i64* %_raw_array1727 to { i64, [0 x i64] }*
  %_gep1729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1728, i32 0, i32 1, i32 0
  store i64 %_x1724, i64* %_gep1729
  %_gep1731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1728, i32 0, i32 1, i32 1
  store i64 %_x1725, i64* %_gep1731
  %_gep1733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1728, i32 0, i32 1, i32 2
  store i64 %_x1726, i64* %_gep1733
  %_x1735 = load i64, i64* %_x1712
  %_x1736 = load i64, i64* %_x1712
  %_x1737 = load i64, i64* %_x1712
  %_raw_array1738 = call i64* @oat_alloc_array(i64 3)
  %_array1739 = bitcast i64* %_raw_array1738 to { i64, [0 x i64] }*
  %_gep1740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1739, i32 0, i32 1, i32 0
  store i64 %_x1735, i64* %_gep1740
  %_gep1742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1739, i32 0, i32 1, i32 1
  store i64 %_x1736, i64* %_gep1742
  %_gep1744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1739, i32 0, i32 1, i32 2
  store i64 %_x1737, i64* %_gep1744
  %_raw_array1746 = call i64* @oat_alloc_array(i64 3)
  %_array1747 = bitcast i64* %_raw_array1746 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1748 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1747, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1717, { i64, [0 x i64] }** %_gep1748
  %_gep1750 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1747, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1728, { i64, [0 x i64] }** %_gep1750
  %_gep1752 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1747, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1739, { i64, [0 x i64] }** %_gep1752
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1747, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1754
  %_arr1760 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1754
  %_ptr1758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1760, i32 0, i32 1, i32 1
  %_resPtr1759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1758
  %_ptr1756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1759, i32 0, i32 1, i32 1
  %_resPtr1757 = load i64, i64* %_ptr1756
  ret i64 %_resPtr1757
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1569 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1649 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01692 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1532 = alloca i64
  %_argv1534 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1534
  store i64 %argc, i64* %_argc1532
  %_raw_array1537 = call i64* @oat_alloc_array(i64 3)
  %_array1538 = bitcast i64* %_raw_array1537 to { i64, [0 x i64] }*
  %_gep1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1539
  %_gep1541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1541
  %_gep1543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1543
  %_raw_array1545 = call i64* @oat_alloc_array(i64 3)
  %_array1546 = bitcast i64* %_raw_array1545 to { i64, [0 x i64] }*
  %_gep1547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1546, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1547
  %_gep1549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1546, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1549
  %_gep1551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1546, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1551
  %_raw_array1553 = call i64* @oat_alloc_array(i64 3)
  %_array1554 = bitcast i64* %_raw_array1553 to { i64, [0 x i64] }*
  %_gep1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1554, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1555
  %_gep1557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1554, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1557
  %_gep1559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1554, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1559
  %_raw_array1561 = call i64* @oat_alloc_array(i64 3)
  %_array1562 = bitcast i64* %_raw_array1561 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1563 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1562, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1538, { i64, [0 x i64] }** %_gep1563
  %_gep1565 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1562, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1546, { i64, [0 x i64] }** %_gep1565
  %_gep1567 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1562, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1554, { i64, [0 x i64] }** %_gep1567
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1562, { i64, [0 x { i64, [0 x i64] }*] }** %_a1569
  %_bop1571 = mul i64 0, 0
  %_bop1572 = mul i64 0, 1
  %_bop1573 = mul i64 0, 2
  %_bop1574 = mul i64 0, 3
  %_bop1575 = mul i64 0, 4
  %_raw_array1576 = call i64* @oat_alloc_array(i64 5)
  %_array1577 = bitcast i64* %_raw_array1576 to { i64, [0 x i64] }*
  %_gep1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 0
  store i64 %_bop1571, i64* %_gep1578
  %_gep1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 1
  store i64 %_bop1572, i64* %_gep1580
  %_gep1582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 2
  store i64 %_bop1573, i64* %_gep1582
  %_gep1584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 3
  store i64 %_bop1574, i64* %_gep1584
  %_gep1586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1577, i32 0, i32 1, i32 4
  store i64 %_bop1575, i64* %_gep1586
  %_bop1588 = mul i64 1, 0
  %_bop1589 = mul i64 1, 1
  %_bop1590 = mul i64 1, 2
  %_bop1591 = mul i64 1, 3
  %_bop1592 = mul i64 1, 4
  %_raw_array1593 = call i64* @oat_alloc_array(i64 5)
  %_array1594 = bitcast i64* %_raw_array1593 to { i64, [0 x i64] }*
  %_gep1595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 0
  store i64 %_bop1588, i64* %_gep1595
  %_gep1597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 1
  store i64 %_bop1589, i64* %_gep1597
  %_gep1599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 2
  store i64 %_bop1590, i64* %_gep1599
  %_gep1601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 3
  store i64 %_bop1591, i64* %_gep1601
  %_gep1603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1594, i32 0, i32 1, i32 4
  store i64 %_bop1592, i64* %_gep1603
  %_bop1605 = mul i64 2, 0
  %_bop1606 = mul i64 2, 1
  %_bop1607 = mul i64 2, 2
  %_bop1608 = mul i64 2, 3
  %_bop1609 = mul i64 2, 4
  %_raw_array1610 = call i64* @oat_alloc_array(i64 5)
  %_array1611 = bitcast i64* %_raw_array1610 to { i64, [0 x i64] }*
  %_gep1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 0
  store i64 %_bop1605, i64* %_gep1612
  %_gep1614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 1
  store i64 %_bop1606, i64* %_gep1614
  %_gep1616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 2
  store i64 %_bop1607, i64* %_gep1616
  %_gep1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 3
  store i64 %_bop1608, i64* %_gep1618
  %_gep1620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 4
  store i64 %_bop1609, i64* %_gep1620
  %_bop1622 = mul i64 3, 0
  %_bop1623 = mul i64 3, 1
  %_bop1624 = mul i64 3, 2
  %_bop1625 = mul i64 3, 3
  %_bop1626 = mul i64 3, 4
  %_raw_array1627 = call i64* @oat_alloc_array(i64 5)
  %_array1628 = bitcast i64* %_raw_array1627 to { i64, [0 x i64] }*
  %_gep1629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 0
  store i64 %_bop1622, i64* %_gep1629
  %_gep1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 1
  store i64 %_bop1623, i64* %_gep1631
  %_gep1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 2
  store i64 %_bop1624, i64* %_gep1633
  %_gep1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 3
  store i64 %_bop1625, i64* %_gep1635
  %_gep1637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1628, i32 0, i32 1, i32 4
  store i64 %_bop1626, i64* %_gep1637
  %_raw_array1639 = call i64* @oat_alloc_array(i64 4)
  %_array1640 = bitcast i64* %_raw_array1639 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1641 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1640, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1577, { i64, [0 x i64] }** %_gep1641
  %_gep1643 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1640, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1594, { i64, [0 x i64] }** %_gep1643
  %_gep1645 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1640, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1611, { i64, [0 x i64] }** %_gep1645
  %_gep1647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1640, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1628, { i64, [0 x i64] }** %_gep1647
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1640, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1649
  %_bop1651 = mul i64 0, 0
  %_bop1652 = mul i64 0, 1
  %_bop1653 = mul i64 0, 2
  %_raw_array1654 = call i64* @oat_alloc_array(i64 3)
  %_array1655 = bitcast i64* %_raw_array1654 to { i64, [0 x i64] }*
  %_gep1656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1655, i32 0, i32 1, i32 0
  store i64 %_bop1651, i64* %_gep1656
  %_gep1658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1655, i32 0, i32 1, i32 1
  store i64 %_bop1652, i64* %_gep1658
  %_gep1660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1655, i32 0, i32 1, i32 2
  store i64 %_bop1653, i64* %_gep1660
  %_bop1662 = mul i64 1, 0
  %_bop1663 = mul i64 1, 1
  %_bop1664 = mul i64 1, 2
  %_raw_array1665 = call i64* @oat_alloc_array(i64 3)
  %_array1666 = bitcast i64* %_raw_array1665 to { i64, [0 x i64] }*
  %_gep1667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1666, i32 0, i32 1, i32 0
  store i64 %_bop1662, i64* %_gep1667
  %_gep1669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1666, i32 0, i32 1, i32 1
  store i64 %_bop1663, i64* %_gep1669
  %_gep1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1666, i32 0, i32 1, i32 2
  store i64 %_bop1664, i64* %_gep1671
  %_bop1673 = mul i64 2, 0
  %_bop1674 = mul i64 2, 1
  %_bop1675 = mul i64 2, 2
  %_raw_array1676 = call i64* @oat_alloc_array(i64 3)
  %_array1677 = bitcast i64* %_raw_array1676 to { i64, [0 x i64] }*
  %_gep1678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1677, i32 0, i32 1, i32 0
  store i64 %_bop1673, i64* %_gep1678
  %_gep1680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1677, i32 0, i32 1, i32 1
  store i64 %_bop1674, i64* %_gep1680
  %_gep1682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1677, i32 0, i32 1, i32 2
  store i64 %_bop1675, i64* %_gep1682
  %_raw_array1684 = call i64* @oat_alloc_array(i64 3)
  %_array1685 = bitcast i64* %_raw_array1684 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1685, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1655, { i64, [0 x i64] }** %_gep1686
  %_gep1688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1685, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1666, { i64, [0 x i64] }** %_gep1688
  %_gep1690 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1685, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1677, { i64, [0 x i64] }** %_gep1690
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1685, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01692
  %_arr1698 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1649
  %_ptr1696 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1698, i32 0, i32 1, i32 3
  %_resPtr1697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1696
  %_ptr1694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1697, i32 0, i32 1, i32 4
  %_resPtr1695 = load i64, i64* %_ptr1694
  %_a1703 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1569
  %_ptr1701 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1703, i32 0, i32 1, i32 1
  %_resPtr1702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1701
  %_ptr1699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1702, i32 0, i32 1, i32 2
  %_resPtr1700 = load i64, i64* %_ptr1699
  %_bop1704 = add i64 %_resPtr1695, %_resPtr1700
  %_arr01705 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01692
  %_id1706 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01705)
  %_bop1707 = add i64 %_bop1704, %_id1706
  %_id1708 = call i64 @g(i64 4)
  %_bop1709 = add i64 %_bop1707, %_id1708
  ret i64 %_bop1709
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
