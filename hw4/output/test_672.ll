; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1960 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1960
  %_a1966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1961
  %_ptr1964 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1966, i32 0, i32 1, i32 1
  %_resPtr1965 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1964
  %_ptr1962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1965, i32 0, i32 1, i32 1
  %_resPtr1963 = load i64, i64* %_ptr1962
  ret i64 %_resPtr1963
}

define i64 @g(i64 %x) {
  %_arr1952 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1909 = alloca i64
  store i64 %x, i64* %_x1909
  %_x1911 = load i64, i64* %_x1910
  %_x1912 = load i64, i64* %_x1910
  %_x1913 = load i64, i64* %_x1910
  %_raw_array1914 = call i64* @oat_alloc_array(i64 3)
  %_array1915 = bitcast i64* %_raw_array1914 to { i64, [0 x i64] }*
  %_gep1916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1915, i32 0, i32 1, i32 0
  store i64 %_x1911, i64* %_gep1916
  %_gep1918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1915, i32 0, i32 1, i32 1
  store i64 %_x1912, i64* %_gep1918
  %_gep1920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1915, i32 0, i32 1, i32 2
  store i64 %_x1913, i64* %_gep1920
  %_x1922 = load i64, i64* %_x1910
  %_x1923 = load i64, i64* %_x1910
  %_x1924 = load i64, i64* %_x1910
  %_raw_array1925 = call i64* @oat_alloc_array(i64 3)
  %_array1926 = bitcast i64* %_raw_array1925 to { i64, [0 x i64] }*
  %_gep1927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1926, i32 0, i32 1, i32 0
  store i64 %_x1922, i64* %_gep1927
  %_gep1929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1926, i32 0, i32 1, i32 1
  store i64 %_x1923, i64* %_gep1929
  %_gep1931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1926, i32 0, i32 1, i32 2
  store i64 %_x1924, i64* %_gep1931
  %_x1933 = load i64, i64* %_x1910
  %_x1934 = load i64, i64* %_x1910
  %_x1935 = load i64, i64* %_x1910
  %_raw_array1936 = call i64* @oat_alloc_array(i64 3)
  %_array1937 = bitcast i64* %_raw_array1936 to { i64, [0 x i64] }*
  %_gep1938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1937, i32 0, i32 1, i32 0
  store i64 %_x1933, i64* %_gep1938
  %_gep1940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1937, i32 0, i32 1, i32 1
  store i64 %_x1934, i64* %_gep1940
  %_gep1942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1937, i32 0, i32 1, i32 2
  store i64 %_x1935, i64* %_gep1942
  %_raw_array1944 = call i64* @oat_alloc_array(i64 3)
  %_array1945 = bitcast i64* %_raw_array1944 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1946 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1945, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1915, { i64, [0 x i64] }** %_gep1946
  %_gep1948 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1945, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1926, { i64, [0 x i64] }** %_gep1948
  %_gep1950 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1945, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1937, { i64, [0 x i64] }** %_gep1950
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1945, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1952
  %_arr1958 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1952
  %_ptr1956 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1958, i32 0, i32 1, i32 1
  %_resPtr1957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1956
  %_ptr1954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1957, i32 0, i32 1, i32 1
  %_resPtr1955 = load i64, i64* %_ptr1954
  ret i64 %_resPtr1955
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1767 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1847 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01890 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1730 = alloca i64
  %_argv1732 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1732
  store i64 %argc, i64* %_argc1730
  %_raw_array1735 = call i64* @oat_alloc_array(i64 3)
  %_array1736 = bitcast i64* %_raw_array1735 to { i64, [0 x i64] }*
  %_gep1737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1736, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1737
  %_gep1739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1736, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1739
  %_gep1741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1736, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1741
  %_raw_array1743 = call i64* @oat_alloc_array(i64 3)
  %_array1744 = bitcast i64* %_raw_array1743 to { i64, [0 x i64] }*
  %_gep1745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1744, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1745
  %_gep1747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1744, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1747
  %_gep1749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1744, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1749
  %_raw_array1751 = call i64* @oat_alloc_array(i64 3)
  %_array1752 = bitcast i64* %_raw_array1751 to { i64, [0 x i64] }*
  %_gep1753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1752, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1753
  %_gep1755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1752, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1755
  %_gep1757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1752, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1757
  %_raw_array1759 = call i64* @oat_alloc_array(i64 3)
  %_array1760 = bitcast i64* %_raw_array1759 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1761 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1760, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1736, { i64, [0 x i64] }** %_gep1761
  %_gep1763 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1760, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1744, { i64, [0 x i64] }** %_gep1763
  %_gep1765 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1760, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1752, { i64, [0 x i64] }** %_gep1765
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1760, { i64, [0 x { i64, [0 x i64] }*] }** %_a1767
  %_bop1769 = mul i64 0, 0
  %_bop1770 = mul i64 0, 1
  %_bop1771 = mul i64 0, 2
  %_bop1772 = mul i64 0, 3
  %_bop1773 = mul i64 0, 4
  %_raw_array1774 = call i64* @oat_alloc_array(i64 5)
  %_array1775 = bitcast i64* %_raw_array1774 to { i64, [0 x i64] }*
  %_gep1776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1775, i32 0, i32 1, i32 0
  store i64 %_bop1769, i64* %_gep1776
  %_gep1778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1775, i32 0, i32 1, i32 1
  store i64 %_bop1770, i64* %_gep1778
  %_gep1780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1775, i32 0, i32 1, i32 2
  store i64 %_bop1771, i64* %_gep1780
  %_gep1782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1775, i32 0, i32 1, i32 3
  store i64 %_bop1772, i64* %_gep1782
  %_gep1784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1775, i32 0, i32 1, i32 4
  store i64 %_bop1773, i64* %_gep1784
  %_bop1786 = mul i64 1, 0
  %_bop1787 = mul i64 1, 1
  %_bop1788 = mul i64 1, 2
  %_bop1789 = mul i64 1, 3
  %_bop1790 = mul i64 1, 4
  %_raw_array1791 = call i64* @oat_alloc_array(i64 5)
  %_array1792 = bitcast i64* %_raw_array1791 to { i64, [0 x i64] }*
  %_gep1793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 0
  store i64 %_bop1786, i64* %_gep1793
  %_gep1795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 1
  store i64 %_bop1787, i64* %_gep1795
  %_gep1797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 2
  store i64 %_bop1788, i64* %_gep1797
  %_gep1799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 3
  store i64 %_bop1789, i64* %_gep1799
  %_gep1801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 4
  store i64 %_bop1790, i64* %_gep1801
  %_bop1803 = mul i64 2, 0
  %_bop1804 = mul i64 2, 1
  %_bop1805 = mul i64 2, 2
  %_bop1806 = mul i64 2, 3
  %_bop1807 = mul i64 2, 4
  %_raw_array1808 = call i64* @oat_alloc_array(i64 5)
  %_array1809 = bitcast i64* %_raw_array1808 to { i64, [0 x i64] }*
  %_gep1810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1809, i32 0, i32 1, i32 0
  store i64 %_bop1803, i64* %_gep1810
  %_gep1812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1809, i32 0, i32 1, i32 1
  store i64 %_bop1804, i64* %_gep1812
  %_gep1814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1809, i32 0, i32 1, i32 2
  store i64 %_bop1805, i64* %_gep1814
  %_gep1816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1809, i32 0, i32 1, i32 3
  store i64 %_bop1806, i64* %_gep1816
  %_gep1818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1809, i32 0, i32 1, i32 4
  store i64 %_bop1807, i64* %_gep1818
  %_bop1820 = mul i64 3, 0
  %_bop1821 = mul i64 3, 1
  %_bop1822 = mul i64 3, 2
  %_bop1823 = mul i64 3, 3
  %_bop1824 = mul i64 3, 4
  %_raw_array1825 = call i64* @oat_alloc_array(i64 5)
  %_array1826 = bitcast i64* %_raw_array1825 to { i64, [0 x i64] }*
  %_gep1827 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1826, i32 0, i32 1, i32 0
  store i64 %_bop1820, i64* %_gep1827
  %_gep1829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1826, i32 0, i32 1, i32 1
  store i64 %_bop1821, i64* %_gep1829
  %_gep1831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1826, i32 0, i32 1, i32 2
  store i64 %_bop1822, i64* %_gep1831
  %_gep1833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1826, i32 0, i32 1, i32 3
  store i64 %_bop1823, i64* %_gep1833
  %_gep1835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1826, i32 0, i32 1, i32 4
  store i64 %_bop1824, i64* %_gep1835
  %_raw_array1837 = call i64* @oat_alloc_array(i64 4)
  %_array1838 = bitcast i64* %_raw_array1837 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1838, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1775, { i64, [0 x i64] }** %_gep1839
  %_gep1841 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1838, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1792, { i64, [0 x i64] }** %_gep1841
  %_gep1843 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1838, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1809, { i64, [0 x i64] }** %_gep1843
  %_gep1845 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1838, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1826, { i64, [0 x i64] }** %_gep1845
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1838, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1847
  %_bop1849 = mul i64 0, 0
  %_bop1850 = mul i64 0, 1
  %_bop1851 = mul i64 0, 2
  %_raw_array1852 = call i64* @oat_alloc_array(i64 3)
  %_array1853 = bitcast i64* %_raw_array1852 to { i64, [0 x i64] }*
  %_gep1854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1853, i32 0, i32 1, i32 0
  store i64 %_bop1849, i64* %_gep1854
  %_gep1856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1853, i32 0, i32 1, i32 1
  store i64 %_bop1850, i64* %_gep1856
  %_gep1858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1853, i32 0, i32 1, i32 2
  store i64 %_bop1851, i64* %_gep1858
  %_bop1860 = mul i64 1, 0
  %_bop1861 = mul i64 1, 1
  %_bop1862 = mul i64 1, 2
  %_raw_array1863 = call i64* @oat_alloc_array(i64 3)
  %_array1864 = bitcast i64* %_raw_array1863 to { i64, [0 x i64] }*
  %_gep1865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1864, i32 0, i32 1, i32 0
  store i64 %_bop1860, i64* %_gep1865
  %_gep1867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1864, i32 0, i32 1, i32 1
  store i64 %_bop1861, i64* %_gep1867
  %_gep1869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1864, i32 0, i32 1, i32 2
  store i64 %_bop1862, i64* %_gep1869
  %_bop1871 = mul i64 2, 0
  %_bop1872 = mul i64 2, 1
  %_bop1873 = mul i64 2, 2
  %_raw_array1874 = call i64* @oat_alloc_array(i64 3)
  %_array1875 = bitcast i64* %_raw_array1874 to { i64, [0 x i64] }*
  %_gep1876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1875, i32 0, i32 1, i32 0
  store i64 %_bop1871, i64* %_gep1876
  %_gep1878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1875, i32 0, i32 1, i32 1
  store i64 %_bop1872, i64* %_gep1878
  %_gep1880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1875, i32 0, i32 1, i32 2
  store i64 %_bop1873, i64* %_gep1880
  %_raw_array1882 = call i64* @oat_alloc_array(i64 3)
  %_array1883 = bitcast i64* %_raw_array1882 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1884 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1883, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1853, { i64, [0 x i64] }** %_gep1884
  %_gep1886 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1883, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1864, { i64, [0 x i64] }** %_gep1886
  %_gep1888 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1883, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1875, { i64, [0 x i64] }** %_gep1888
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1883, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01890
  %_arr1896 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1847
  %_ptr1894 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1896, i32 0, i32 1, i32 3
  %_resPtr1895 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1894
  %_ptr1892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1895, i32 0, i32 1, i32 4
  %_resPtr1893 = load i64, i64* %_ptr1892
  %_a1901 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1767
  %_ptr1899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1901, i32 0, i32 1, i32 1
  %_resPtr1900 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1899
  %_ptr1897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1900, i32 0, i32 1, i32 2
  %_resPtr1898 = load i64, i64* %_ptr1897
  %_bop1902 = add i64 %_resPtr1893, %_resPtr1898
  %_arr01903 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01890
  %_id1904 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01903)
  %_bop1905 = add i64 %_bop1902, %_id1904
  %_id1906 = call i64 @g(i64 4)
  %_bop1907 = add i64 %_bop1905, %_id1906
  ret i64 %_bop1907
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
