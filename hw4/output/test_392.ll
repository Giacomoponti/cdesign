; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1771 = alloca i64
  %_a1832 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1835 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1766 = alloca i64
  %_argv1768 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1768
  store i64 %argc, i64* %_argc1766
  store i64 10, i64* %_x1771
  %_x1773 = load i64, i64* %_x1771
  %_bop1774 = add i64 %_x1773, 0
  %_bop1775 = add i64 %_bop1774, 0
  %_x1776 = load i64, i64* %_x1771
  %_bop1777 = add i64 %_x1776, 0
  %_bop1778 = add i64 %_bop1777, 1
  %_x1779 = load i64, i64* %_x1771
  %_bop1780 = add i64 %_x1779, 0
  %_bop1781 = add i64 %_bop1780, 2
  %_raw_array1782 = call i64* @oat_alloc_array(i64 3)
  %_array1783 = bitcast i64* %_raw_array1782 to { i64, [0 x i64] }*
  %_gep1784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1783, i32 0, i32 1, i32 0
  store i64 %_bop1775, i64* %_gep1784
  %_gep1786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1783, i32 0, i32 1, i32 1
  store i64 %_bop1778, i64* %_gep1786
  %_gep1788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1783, i32 0, i32 1, i32 2
  store i64 %_bop1781, i64* %_gep1788
  %_x1790 = load i64, i64* %_x1771
  %_bop1791 = add i64 %_x1790, 1
  %_bop1792 = add i64 %_bop1791, 0
  %_x1793 = load i64, i64* %_x1771
  %_bop1794 = add i64 %_x1793, 1
  %_bop1795 = add i64 %_bop1794, 1
  %_x1796 = load i64, i64* %_x1771
  %_bop1797 = add i64 %_x1796, 1
  %_bop1798 = add i64 %_bop1797, 2
  %_raw_array1799 = call i64* @oat_alloc_array(i64 3)
  %_array1800 = bitcast i64* %_raw_array1799 to { i64, [0 x i64] }*
  %_gep1801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1800, i32 0, i32 1, i32 0
  store i64 %_bop1792, i64* %_gep1801
  %_gep1803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1800, i32 0, i32 1, i32 1
  store i64 %_bop1795, i64* %_gep1803
  %_gep1805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1800, i32 0, i32 1, i32 2
  store i64 %_bop1798, i64* %_gep1805
  %_x1807 = load i64, i64* %_x1771
  %_bop1808 = add i64 %_x1807, 2
  %_bop1809 = add i64 %_bop1808, 0
  %_x1810 = load i64, i64* %_x1771
  %_bop1811 = add i64 %_x1810, 2
  %_bop1812 = add i64 %_bop1811, 1
  %_x1813 = load i64, i64* %_x1771
  %_bop1814 = add i64 %_x1813, 2
  %_bop1815 = add i64 %_bop1814, 2
  %_raw_array1816 = call i64* @oat_alloc_array(i64 3)
  %_array1817 = bitcast i64* %_raw_array1816 to { i64, [0 x i64] }*
  %_gep1818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1817, i32 0, i32 1, i32 0
  store i64 %_bop1809, i64* %_gep1818
  %_gep1820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1817, i32 0, i32 1, i32 1
  store i64 %_bop1812, i64* %_gep1820
  %_gep1822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1817, i32 0, i32 1, i32 2
  store i64 %_bop1815, i64* %_gep1822
  %_raw_array1824 = call i64* @oat_alloc_array(i64 3)
  %_array1825 = bitcast i64* %_raw_array1824 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1826 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1825, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1783, { i64, [0 x i64] }** %_gep1826
  %_gep1828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1825, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1800, { i64, [0 x i64] }** %_gep1828
  %_gep1830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1825, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1817, { i64, [0 x i64] }** %_gep1830
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1825, { i64, [0 x { i64, [0 x i64] }*] }** %_a1832
  %_a1834 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1832
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1834, { i64, [0 x { i64, [0 x i64] }*] }** %_b1835
  %_b1841 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1835
  %_ptr1839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1841, i32 0, i32 1, i32 2
  %_resPtr1840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1839
  %_ptr1837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1840, i32 0, i32 1, i32 1
  %_resPtr1838 = load i64, i64* %_ptr1837
  ret i64 %_resPtr1838
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
