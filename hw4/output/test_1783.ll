; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1791
  %_a1791 = alloca { i64, [0 x i64] }*
  %_a1795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1792
  %_ptr1793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1795, i32 0, i32 1, i32 1
  %_resPtr1794 = load i64, i64* %_ptr1793
  ret i64 %_resPtr1794
}

define i64 @g(i64 %x) {
  %_arr1769 = alloca { i64, [0 x i64] }*
  %_i1771 = alloca i64
  store i64 %x, i64* %_x1765
  %_x1765 = alloca i64
  %_raw_array1767 = call i64* @oat_alloc_array(i64 3)
  %_array1768 = bitcast i64* %_raw_array1767 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1768, { i64, [0 x i64] }** %_arr1769
  store i64 0, i64* %_i1771
  br label %_pre1776
_pre1776:
  %_i1773 = load i64, i64* %_i1771
  %_bop1774 = icmp slt i64 %_i1773, 3
  %_cnd1778 = icmp eq i1 %_bop1774, 0
  br i1 %_cnd1778, label %_post1775, label %_body1777
_body1777:
  %_x1779 = load i64, i64* %_x1766
  %_arr1780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1769
  %_i1781 = load i64, i64* %_i1771
  %_ptr1782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1780, i32 0, i32 1, i64 %_i1781
  store i64 %_x1779, i64* %_ptr1782
  %_i1784 = load i64, i64* %_i1771
  %_bop1785 = add i64 %_i1784, 1
  store i64 %_bop1785, i64* %_i1771
  br label %_pre1776
_post1775:
  %_arr1789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1769
  %_ptr1787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1789, i32 0, i32 1, i32 1
  %_resPtr1788 = load i64, i64* %_ptr1787
  ret i64 %_resPtr1788
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1691 = alloca { i64, [0 x i64] }*
  %_i1693 = alloca i64
  %_arr1711 = alloca { i64, [0 x i64] }*
  %_i1713 = alloca i64
  %_arr01733 = alloca { i64, [0 x i64] }*
  %_i1735 = alloca i64
  store i64 %argc, i64* %_argc1684
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1686
  %_argv1686 = alloca { i64, [0 x i8*] }*
  %_argc1684 = alloca i64
  %_raw_array1689 = call i64* @oat_alloc_array(i64 3)
  %_array1690 = bitcast i64* %_raw_array1689 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1690, { i64, [0 x i64] }** %_a1691
  store i64 0, i64* %_i1693
  br label %_pre1698
_pre1698:
  %_i1695 = load i64, i64* %_i1693
  %_bop1696 = icmp slt i64 %_i1695, 3
  %_cnd1700 = icmp eq i1 %_bop1696, 0
  br i1 %_cnd1700, label %_post1697, label %_body1699
_body1699:
  %_i1701 = load i64, i64* %_i1693
  %_a1702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1691
  %_i1703 = load i64, i64* %_i1693
  %_ptr1704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1702, i32 0, i32 1, i64 %_i1703
  store i64 %_i1701, i64* %_ptr1704
  %_i1706 = load i64, i64* %_i1693
  %_bop1707 = add i64 %_i1706, 1
  store i64 %_bop1707, i64* %_i1693
  br label %_pre1698
_post1697:
  %_raw_array1709 = call i64* @oat_alloc_array(i64 4)
  %_array1710 = bitcast i64* %_raw_array1709 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1710, { i64, [0 x i64] }** %_arr1711
  store i64 0, i64* %_i1713
  br label %_pre1718
_pre1718:
  %_i1715 = load i64, i64* %_i1713
  %_bop1716 = icmp slt i64 %_i1715, 4
  %_cnd1720 = icmp eq i1 %_bop1716, 0
  br i1 %_cnd1720, label %_post1717, label %_body1719
_body1719:
  %_i1721 = load i64, i64* %_i1713
  %_i1722 = load i64, i64* %_i1713
  %_bop1723 = mul i64 %_i1721, %_i1722
  %_arr1724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1711
  %_i1725 = load i64, i64* %_i1713
  %_ptr1726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1724, i32 0, i32 1, i64 %_i1725
  store i64 %_bop1723, i64* %_ptr1726
  %_i1728 = load i64, i64* %_i1713
  %_bop1729 = add i64 %_i1728, 1
  store i64 %_bop1729, i64* %_i1713
  br label %_pre1718
_post1717:
  %_raw_array1731 = call i64* @oat_alloc_array(i64 3)
  %_array1732 = bitcast i64* %_raw_array1731 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1732, { i64, [0 x i64] }** %_arr01733
  store i64 0, i64* %_i1735
  br label %_pre1740
_pre1740:
  %_i1737 = load i64, i64* %_i1735
  %_bop1738 = icmp slt i64 %_i1737, 3
  %_cnd1742 = icmp eq i1 %_bop1738, 0
  br i1 %_cnd1742, label %_post1739, label %_body1741
_body1741:
  %_i1743 = load i64, i64* %_i1735
  %_bop1744 = mul i64 2, %_i1743
  %_arr01745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01733
  %_i1746 = load i64, i64* %_i1735
  %_ptr1747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01745, i32 0, i32 1, i64 %_i1746
  store i64 %_bop1744, i64* %_ptr1747
  %_i1749 = load i64, i64* %_i1735
  %_bop1750 = add i64 %_i1749, 1
  store i64 %_bop1750, i64* %_i1735
  br label %_pre1740
_post1739:
  %_arr1754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1711
  %_ptr1752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1754, i32 0, i32 1, i32 3
  %_resPtr1753 = load i64, i64* %_ptr1752
  %_a1757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1691
  %_ptr1755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1757, i32 0, i32 1, i32 1
  %_resPtr1756 = load i64, i64* %_ptr1755
  %_bop1758 = add i64 %_resPtr1753, %_resPtr1756
  %_arr01759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01733
  %_id1760 = call i64 @f({ i64, [0 x i64] }* %_arr01759)
  %_bop1761 = add i64 %_bop1758, %_id1760
  %_id1762 = call i64 @g(i64 4)
  %_bop1763 = add i64 %_bop1761, %_id1762
  ret i64 %_bop1763
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
