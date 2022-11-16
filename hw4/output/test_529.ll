; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1775 = alloca i64
  %_a1836 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1839 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1770 = alloca i64
  %_argv1772 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1772
  store i64 %argc, i64* %_argc1770
  store i64 10, i64* %_x1775
  %_x1777 = load i64, i64* %_x1775
  %_bop1778 = add i64 %_x1777, 0
  %_bop1779 = add i64 %_bop1778, 0
  %_x1780 = load i64, i64* %_x1775
  %_bop1781 = add i64 %_x1780, 0
  %_bop1782 = add i64 %_bop1781, 1
  %_x1783 = load i64, i64* %_x1775
  %_bop1784 = add i64 %_x1783, 0
  %_bop1785 = add i64 %_bop1784, 2
  %_raw_array1786 = call i64* @oat_alloc_array(i64 3)
  %_array1787 = bitcast i64* %_raw_array1786 to { i64, [0 x i64] }*
  %_gep1788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1787, i32 0, i32 1, i32 0
  store i64 %_bop1779, i64* %_gep1788
  %_gep1790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1787, i32 0, i32 1, i32 1
  store i64 %_bop1782, i64* %_gep1790
  %_gep1792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1787, i32 0, i32 1, i32 2
  store i64 %_bop1785, i64* %_gep1792
  %_x1794 = load i64, i64* %_x1775
  %_bop1795 = add i64 %_x1794, 1
  %_bop1796 = add i64 %_bop1795, 0
  %_x1797 = load i64, i64* %_x1775
  %_bop1798 = add i64 %_x1797, 1
  %_bop1799 = add i64 %_bop1798, 1
  %_x1800 = load i64, i64* %_x1775
  %_bop1801 = add i64 %_x1800, 1
  %_bop1802 = add i64 %_bop1801, 2
  %_raw_array1803 = call i64* @oat_alloc_array(i64 3)
  %_array1804 = bitcast i64* %_raw_array1803 to { i64, [0 x i64] }*
  %_gep1805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1804, i32 0, i32 1, i32 0
  store i64 %_bop1796, i64* %_gep1805
  %_gep1807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1804, i32 0, i32 1, i32 1
  store i64 %_bop1799, i64* %_gep1807
  %_gep1809 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1804, i32 0, i32 1, i32 2
  store i64 %_bop1802, i64* %_gep1809
  %_x1811 = load i64, i64* %_x1775
  %_bop1812 = add i64 %_x1811, 2
  %_bop1813 = add i64 %_bop1812, 0
  %_x1814 = load i64, i64* %_x1775
  %_bop1815 = add i64 %_x1814, 2
  %_bop1816 = add i64 %_bop1815, 1
  %_x1817 = load i64, i64* %_x1775
  %_bop1818 = add i64 %_x1817, 2
  %_bop1819 = add i64 %_bop1818, 2
  %_raw_array1820 = call i64* @oat_alloc_array(i64 3)
  %_array1821 = bitcast i64* %_raw_array1820 to { i64, [0 x i64] }*
  %_gep1822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1821, i32 0, i32 1, i32 0
  store i64 %_bop1813, i64* %_gep1822
  %_gep1824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1821, i32 0, i32 1, i32 1
  store i64 %_bop1816, i64* %_gep1824
  %_gep1826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1821, i32 0, i32 1, i32 2
  store i64 %_bop1819, i64* %_gep1826
  %_raw_array1828 = call i64* @oat_alloc_array(i64 3)
  %_array1829 = bitcast i64* %_raw_array1828 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1829, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1787, { i64, [0 x i64] }** %_gep1830
  %_gep1832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1829, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1804, { i64, [0 x i64] }** %_gep1832
  %_gep1834 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1829, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1821, { i64, [0 x i64] }** %_gep1834
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1829, { i64, [0 x { i64, [0 x i64] }*] }** %_a1836
  %_a1838 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1836
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1838, { i64, [0 x { i64, [0 x i64] }*] }** %_b1839
  %_b1845 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1839
  %_ptr1843 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1845, i32 0, i32 1, i32 2
  %_resPtr1844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1843
  %_ptr1841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1844, i32 0, i32 1, i32 1
  %_resPtr1842 = load i64, i64* %_ptr1841
  ret i64 %_resPtr1842
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
