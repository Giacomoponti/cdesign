; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1782 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1782
  %_a1786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1783
  %_ptr1784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1786, i32 0, i32 1, i32 1
  %_resPtr1785 = load i64, i64* %_ptr1784
  ret i64 %_resPtr1785
}

define i64 @g(i64 %x) {
  %_arr1760 = alloca { i64, [0 x i64] }*
  %_i1762 = alloca i64
  %_x1756 = alloca i64
  store i64 %x, i64* %_x1756
  %_raw_array1758 = call i64* @oat_alloc_array(i64 3)
  %_array1759 = bitcast i64* %_raw_array1758 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1759, { i64, [0 x i64] }** %_arr1760
  store i64 0, i64* %_i1762
  br label %_pre1767
_pre1767:
  %_cnd1769 = icmp eq i1 %_bop1765, 0
  br i1 %_cnd1769, label %_post1766, label %_body1768
_body1768:
  %_i1764 = load i64, i64* %_i1762
  %_bop1765 = icmp slt i64 %_i1764, 3
  %_x1770 = load i64, i64* %_x1757
  %_arr1771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1760
  %_i1772 = load i64, i64* %_i1762
  %_ptr1773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1771, i32 0, i32 1, i64 %_i1772
  store i64 %_x1770, i64* %_ptr1773
  %_i1775 = load i64, i64* %_i1762
  %_bop1776 = add i64 %_i1775, 1
  store i64 %_bop1776, i64* %_i1762
  br label %_pre1767
_post1766:
  %_arr1780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1760
  %_ptr1778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1780, i32 0, i32 1, i32 1
  %_resPtr1779 = load i64, i64* %_ptr1778
  ret i64 %_resPtr1779
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1682 = alloca { i64, [0 x i64] }*
  %_i1684 = alloca i64
  %_arr1702 = alloca { i64, [0 x i64] }*
  %_i1704 = alloca i64
  %_arr01724 = alloca { i64, [0 x i64] }*
  %_i1726 = alloca i64
  %_argc1675 = alloca i64
  %_argv1677 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1677
  store i64 %argc, i64* %_argc1675
  %_raw_array1680 = call i64* @oat_alloc_array(i64 3)
  %_array1681 = bitcast i64* %_raw_array1680 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1681, { i64, [0 x i64] }** %_a1682
  store i64 0, i64* %_i1684
  br label %_pre1689
_pre1689:
  %_cnd1691 = icmp eq i1 %_bop1687, 0
  br i1 %_cnd1691, label %_post1688, label %_body1690
_body1690:
  %_i1686 = load i64, i64* %_i1684
  %_bop1687 = icmp slt i64 %_i1686, 3
  %_i1692 = load i64, i64* %_i1684
  %_a1693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1682
  %_i1694 = load i64, i64* %_i1684
  %_ptr1695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1693, i32 0, i32 1, i64 %_i1694
  store i64 %_i1692, i64* %_ptr1695
  %_i1697 = load i64, i64* %_i1684
  %_bop1698 = add i64 %_i1697, 1
  store i64 %_bop1698, i64* %_i1684
  br label %_pre1689
_post1688:
  %_raw_array1700 = call i64* @oat_alloc_array(i64 4)
  %_array1701 = bitcast i64* %_raw_array1700 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1701, { i64, [0 x i64] }** %_arr1702
  store i64 0, i64* %_i1704
  br label %_pre1709
_pre1709:
  %_cnd1711 = icmp eq i1 %_bop1707, 0
  br i1 %_cnd1711, label %_post1708, label %_body1710
_body1710:
  %_i1706 = load i64, i64* %_i1704
  %_bop1707 = icmp slt i64 %_i1706, 4
  %_i1712 = load i64, i64* %_i1704
  %_i1713 = load i64, i64* %_i1704
  %_bop1714 = mul i64 %_i1712, %_i1713
  %_arr1715 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1702
  %_i1716 = load i64, i64* %_i1704
  %_ptr1717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1715, i32 0, i32 1, i64 %_i1716
  store i64 %_bop1714, i64* %_ptr1717
  %_i1719 = load i64, i64* %_i1704
  %_bop1720 = add i64 %_i1719, 1
  store i64 %_bop1720, i64* %_i1704
  br label %_pre1709
_post1708:
  %_raw_array1722 = call i64* @oat_alloc_array(i64 3)
  %_array1723 = bitcast i64* %_raw_array1722 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1723, { i64, [0 x i64] }** %_arr01724
  store i64 0, i64* %_i1726
  br label %_pre1731
_pre1731:
  %_cnd1733 = icmp eq i1 %_bop1729, 0
  br i1 %_cnd1733, label %_post1730, label %_body1732
_body1732:
  %_i1728 = load i64, i64* %_i1726
  %_bop1729 = icmp slt i64 %_i1728, 3
  %_i1734 = load i64, i64* %_i1726
  %_bop1735 = mul i64 2, %_i1734
  %_arr01736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01724
  %_i1737 = load i64, i64* %_i1726
  %_ptr1738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01736, i32 0, i32 1, i64 %_i1737
  store i64 %_bop1735, i64* %_ptr1738
  %_i1740 = load i64, i64* %_i1726
  %_bop1741 = add i64 %_i1740, 1
  store i64 %_bop1741, i64* %_i1726
  br label %_pre1731
_post1730:
  %_arr1745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1702
  %_ptr1743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1745, i32 0, i32 1, i32 3
  %_resPtr1744 = load i64, i64* %_ptr1743
  %_a1748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1682
  %_ptr1746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1748, i32 0, i32 1, i32 1
  %_resPtr1747 = load i64, i64* %_ptr1746
  %_bop1749 = add i64 %_resPtr1744, %_resPtr1747
  %_arr01750 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01724
  %_id1751 = call i64 @f({ i64, [0 x i64] }* %_arr01750)
  %_bop1752 = add i64 %_bop1749, %_id1751
  %_id1753 = call i64 @g(i64 4)
  %_bop1754 = add i64 %_bop1752, %_id1753
  ret i64 %_bop1754
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
