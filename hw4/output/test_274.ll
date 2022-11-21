; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1864 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1864
  %_a1869 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1864
  %_ptr1867 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1869, i32 0, i32 1, i32 1
  %_resPtr1868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1867
  %_ptr1865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1868, i32 0, i32 1, i32 1
  %_resPtr1866 = load i64, i64* %_ptr1865
  ret i64 %_resPtr1866
}

define i64 @g(i64 %x) {
  %_arr1856 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1814 = alloca i64
  store i64 %x, i64* %_x1814
  %_x1815 = load i64, i64* %_x1814
  %_x1816 = load i64, i64* %_x1814
  %_x1817 = load i64, i64* %_x1814
  %_raw_array1818 = call i64* @oat_alloc_array(i64 3)
  %_array1819 = bitcast i64* %_raw_array1818 to { i64, [0 x i64] }*
  %_gep1820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1819, i32 0, i32 1, i32 0
  store i64 %_x1815, i64* %_gep1820
  %_gep1822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1819, i32 0, i32 1, i32 1
  store i64 %_x1816, i64* %_gep1822
  %_gep1824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1819, i32 0, i32 1, i32 2
  store i64 %_x1817, i64* %_gep1824
  %_x1826 = load i64, i64* %_x1814
  %_x1827 = load i64, i64* %_x1814
  %_x1828 = load i64, i64* %_x1814
  %_raw_array1829 = call i64* @oat_alloc_array(i64 3)
  %_array1830 = bitcast i64* %_raw_array1829 to { i64, [0 x i64] }*
  %_gep1831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1830, i32 0, i32 1, i32 0
  store i64 %_x1826, i64* %_gep1831
  %_gep1833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1830, i32 0, i32 1, i32 1
  store i64 %_x1827, i64* %_gep1833
  %_gep1835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1830, i32 0, i32 1, i32 2
  store i64 %_x1828, i64* %_gep1835
  %_x1837 = load i64, i64* %_x1814
  %_x1838 = load i64, i64* %_x1814
  %_x1839 = load i64, i64* %_x1814
  %_raw_array1840 = call i64* @oat_alloc_array(i64 3)
  %_array1841 = bitcast i64* %_raw_array1840 to { i64, [0 x i64] }*
  %_gep1842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1841, i32 0, i32 1, i32 0
  store i64 %_x1837, i64* %_gep1842
  %_gep1844 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1841, i32 0, i32 1, i32 1
  store i64 %_x1838, i64* %_gep1844
  %_gep1846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1841, i32 0, i32 1, i32 2
  store i64 %_x1839, i64* %_gep1846
  %_raw_array1848 = call i64* @oat_alloc_array(i64 3)
  %_array1849 = bitcast i64* %_raw_array1848 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1850 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1819, { i64, [0 x i64] }** %_gep1850
  %_gep1852 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1830, { i64, [0 x i64] }** %_gep1852
  %_gep1854 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1841, { i64, [0 x i64] }** %_gep1854
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1849, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1856
  %_arr1862 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1856
  %_ptr1860 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1862, i32 0, i32 1, i32 1
  %_resPtr1861 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1860
  %_ptr1858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1861, i32 0, i32 1, i32 1
  %_resPtr1859 = load i64, i64* %_ptr1858
  ret i64 %_resPtr1859
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1672 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1752 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01795 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1637 = alloca i64
  store i64 %argc, i64* %_argc1637
  %_argv1639 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1639
  %_raw_array1640 = call i64* @oat_alloc_array(i64 3)
  %_array1641 = bitcast i64* %_raw_array1640 to { i64, [0 x i64] }*
  %_gep1642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1641, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1642
  %_gep1644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1641, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1644
  %_gep1646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1641, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1646
  %_raw_array1648 = call i64* @oat_alloc_array(i64 3)
  %_array1649 = bitcast i64* %_raw_array1648 to { i64, [0 x i64] }*
  %_gep1650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1649, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1650
  %_gep1652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1649, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1652
  %_gep1654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1649, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1654
  %_raw_array1656 = call i64* @oat_alloc_array(i64 3)
  %_array1657 = bitcast i64* %_raw_array1656 to { i64, [0 x i64] }*
  %_gep1658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1657, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1658
  %_gep1660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1657, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1660
  %_gep1662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1657, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1662
  %_raw_array1664 = call i64* @oat_alloc_array(i64 3)
  %_array1665 = bitcast i64* %_raw_array1664 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1666 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1665, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1641, { i64, [0 x i64] }** %_gep1666
  %_gep1668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1665, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1649, { i64, [0 x i64] }** %_gep1668
  %_gep1670 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1665, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1657, { i64, [0 x i64] }** %_gep1670
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1665, { i64, [0 x { i64, [0 x i64] }*] }** %_a1672
  %_bop1674 = mul i64 0, 0
  %_bop1675 = mul i64 0, 1
  %_bop1676 = mul i64 0, 2
  %_bop1677 = mul i64 0, 3
  %_bop1678 = mul i64 0, 4
  %_raw_array1679 = call i64* @oat_alloc_array(i64 5)
  %_array1680 = bitcast i64* %_raw_array1679 to { i64, [0 x i64] }*
  %_gep1681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 0
  store i64 %_bop1674, i64* %_gep1681
  %_gep1683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 1
  store i64 %_bop1675, i64* %_gep1683
  %_gep1685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 2
  store i64 %_bop1676, i64* %_gep1685
  %_gep1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 3
  store i64 %_bop1677, i64* %_gep1687
  %_gep1689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 4
  store i64 %_bop1678, i64* %_gep1689
  %_bop1691 = mul i64 1, 0
  %_bop1692 = mul i64 1, 1
  %_bop1693 = mul i64 1, 2
  %_bop1694 = mul i64 1, 3
  %_bop1695 = mul i64 1, 4
  %_raw_array1696 = call i64* @oat_alloc_array(i64 5)
  %_array1697 = bitcast i64* %_raw_array1696 to { i64, [0 x i64] }*
  %_gep1698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 0
  store i64 %_bop1691, i64* %_gep1698
  %_gep1700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 1
  store i64 %_bop1692, i64* %_gep1700
  %_gep1702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 2
  store i64 %_bop1693, i64* %_gep1702
  %_gep1704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 3
  store i64 %_bop1694, i64* %_gep1704
  %_gep1706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 4
  store i64 %_bop1695, i64* %_gep1706
  %_bop1708 = mul i64 2, 0
  %_bop1709 = mul i64 2, 1
  %_bop1710 = mul i64 2, 2
  %_bop1711 = mul i64 2, 3
  %_bop1712 = mul i64 2, 4
  %_raw_array1713 = call i64* @oat_alloc_array(i64 5)
  %_array1714 = bitcast i64* %_raw_array1713 to { i64, [0 x i64] }*
  %_gep1715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1714, i32 0, i32 1, i32 0
  store i64 %_bop1708, i64* %_gep1715
  %_gep1717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1714, i32 0, i32 1, i32 1
  store i64 %_bop1709, i64* %_gep1717
  %_gep1719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1714, i32 0, i32 1, i32 2
  store i64 %_bop1710, i64* %_gep1719
  %_gep1721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1714, i32 0, i32 1, i32 3
  store i64 %_bop1711, i64* %_gep1721
  %_gep1723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1714, i32 0, i32 1, i32 4
  store i64 %_bop1712, i64* %_gep1723
  %_bop1725 = mul i64 3, 0
  %_bop1726 = mul i64 3, 1
  %_bop1727 = mul i64 3, 2
  %_bop1728 = mul i64 3, 3
  %_bop1729 = mul i64 3, 4
  %_raw_array1730 = call i64* @oat_alloc_array(i64 5)
  %_array1731 = bitcast i64* %_raw_array1730 to { i64, [0 x i64] }*
  %_gep1732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 0
  store i64 %_bop1725, i64* %_gep1732
  %_gep1734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 1
  store i64 %_bop1726, i64* %_gep1734
  %_gep1736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 2
  store i64 %_bop1727, i64* %_gep1736
  %_gep1738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 3
  store i64 %_bop1728, i64* %_gep1738
  %_gep1740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 4
  store i64 %_bop1729, i64* %_gep1740
  %_raw_array1742 = call i64* @oat_alloc_array(i64 4)
  %_array1743 = bitcast i64* %_raw_array1742 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1744 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1680, { i64, [0 x i64] }** %_gep1744
  %_gep1746 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1697, { i64, [0 x i64] }** %_gep1746
  %_gep1748 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1714, { i64, [0 x i64] }** %_gep1748
  %_gep1750 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1731, { i64, [0 x i64] }** %_gep1750
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1743, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1752
  %_bop1754 = mul i64 0, 0
  %_bop1755 = mul i64 0, 1
  %_bop1756 = mul i64 0, 2
  %_raw_array1757 = call i64* @oat_alloc_array(i64 3)
  %_array1758 = bitcast i64* %_raw_array1757 to { i64, [0 x i64] }*
  %_gep1759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1758, i32 0, i32 1, i32 0
  store i64 %_bop1754, i64* %_gep1759
  %_gep1761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1758, i32 0, i32 1, i32 1
  store i64 %_bop1755, i64* %_gep1761
  %_gep1763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1758, i32 0, i32 1, i32 2
  store i64 %_bop1756, i64* %_gep1763
  %_bop1765 = mul i64 1, 0
  %_bop1766 = mul i64 1, 1
  %_bop1767 = mul i64 1, 2
  %_raw_array1768 = call i64* @oat_alloc_array(i64 3)
  %_array1769 = bitcast i64* %_raw_array1768 to { i64, [0 x i64] }*
  %_gep1770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1769, i32 0, i32 1, i32 0
  store i64 %_bop1765, i64* %_gep1770
  %_gep1772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1769, i32 0, i32 1, i32 1
  store i64 %_bop1766, i64* %_gep1772
  %_gep1774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1769, i32 0, i32 1, i32 2
  store i64 %_bop1767, i64* %_gep1774
  %_bop1776 = mul i64 2, 0
  %_bop1777 = mul i64 2, 1
  %_bop1778 = mul i64 2, 2
  %_raw_array1779 = call i64* @oat_alloc_array(i64 3)
  %_array1780 = bitcast i64* %_raw_array1779 to { i64, [0 x i64] }*
  %_gep1781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1780, i32 0, i32 1, i32 0
  store i64 %_bop1776, i64* %_gep1781
  %_gep1783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1780, i32 0, i32 1, i32 1
  store i64 %_bop1777, i64* %_gep1783
  %_gep1785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1780, i32 0, i32 1, i32 2
  store i64 %_bop1778, i64* %_gep1785
  %_raw_array1787 = call i64* @oat_alloc_array(i64 3)
  %_array1788 = bitcast i64* %_raw_array1787 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1789 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1788, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1758, { i64, [0 x i64] }** %_gep1789
  %_gep1791 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1788, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1769, { i64, [0 x i64] }** %_gep1791
  %_gep1793 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1788, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1780, { i64, [0 x i64] }** %_gep1793
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1788, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01795
  %_arr1801 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1752
  %_ptr1799 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1801, i32 0, i32 1, i32 3
  %_resPtr1800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1799
  %_ptr1797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1800, i32 0, i32 1, i32 4
  %_resPtr1798 = load i64, i64* %_ptr1797
  %_a1806 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1672
  %_ptr1804 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1806, i32 0, i32 1, i32 1
  %_resPtr1805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1804
  %_ptr1802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1805, i32 0, i32 1, i32 2
  %_resPtr1803 = load i64, i64* %_ptr1802
  %_bop1807 = add i64 %_resPtr1798, %_resPtr1803
  %_arr01808 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01795
  %_1809 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01808)
  %_bop1810 = add i64 %_bop1807, %_1809
  %_1811 = call i64 @g(i64 4)
  %_bop1812 = add i64 %_bop1810, %_1811
  ret i64 %_bop1812
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
