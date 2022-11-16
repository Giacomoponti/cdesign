; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a2027 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a2027
  %_a2033 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2028
  %_ptr2031 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2033, i32 0, i32 1, i32 1
  %_resPtr2032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2031
  %_ptr2029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2032, i32 0, i32 1, i32 1
  %_resPtr2030 = load i64, i64* %_ptr2029
  ret i64 %_resPtr2030
}

define i64 @g(i64 %x) {
  %_arr2019 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1976 = alloca i64
  store i64 %x, i64* %_x1976
  %_x1978 = load i64, i64* %_x1977
  %_x1979 = load i64, i64* %_x1977
  %_x1980 = load i64, i64* %_x1977
  %_raw_array1981 = call i64* @oat_alloc_array(i64 3)
  %_array1982 = bitcast i64* %_raw_array1981 to { i64, [0 x i64] }*
  %_gep1983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1982, i32 0, i32 1, i32 0
  store i64 %_x1978, i64* %_gep1983
  %_gep1985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1982, i32 0, i32 1, i32 1
  store i64 %_x1979, i64* %_gep1985
  %_gep1987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1982, i32 0, i32 1, i32 2
  store i64 %_x1980, i64* %_gep1987
  %_x1989 = load i64, i64* %_x1977
  %_x1990 = load i64, i64* %_x1977
  %_x1991 = load i64, i64* %_x1977
  %_raw_array1992 = call i64* @oat_alloc_array(i64 3)
  %_array1993 = bitcast i64* %_raw_array1992 to { i64, [0 x i64] }*
  %_gep1994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1993, i32 0, i32 1, i32 0
  store i64 %_x1989, i64* %_gep1994
  %_gep1996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1993, i32 0, i32 1, i32 1
  store i64 %_x1990, i64* %_gep1996
  %_gep1998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1993, i32 0, i32 1, i32 2
  store i64 %_x1991, i64* %_gep1998
  %_x2000 = load i64, i64* %_x1977
  %_x2001 = load i64, i64* %_x1977
  %_x2002 = load i64, i64* %_x1977
  %_raw_array2003 = call i64* @oat_alloc_array(i64 3)
  %_array2004 = bitcast i64* %_raw_array2003 to { i64, [0 x i64] }*
  %_gep2005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 0
  store i64 %_x2000, i64* %_gep2005
  %_gep2007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 1
  store i64 %_x2001, i64* %_gep2007
  %_gep2009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 2
  store i64 %_x2002, i64* %_gep2009
  %_raw_array2011 = call i64* @oat_alloc_array(i64 3)
  %_array2012 = bitcast i64* %_raw_array2011 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep2013 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2012, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1982, { i64, [0 x i64] }** %_gep2013
  %_gep2015 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2012, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1993, { i64, [0 x i64] }** %_gep2015
  %_gep2017 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2012, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2004, { i64, [0 x i64] }** %_gep2017
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2012, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2019
  %_arr2025 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2019
  %_ptr2023 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr2025, i32 0, i32 1, i32 1
  %_resPtr2024 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2023
  %_ptr2021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2024, i32 0, i32 1, i32 1
  %_resPtr2022 = load i64, i64* %_ptr2021
  ret i64 %_resPtr2022
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1834 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1914 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01957 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1797 = alloca i64
  %_argv1799 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1799
  store i64 %argc, i64* %_argc1797
  %_raw_array1802 = call i64* @oat_alloc_array(i64 3)
  %_array1803 = bitcast i64* %_raw_array1802 to { i64, [0 x i64] }*
  %_gep1804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1803, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1804
  %_gep1806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1803, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1806
  %_gep1808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1803, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1808
  %_raw_array1810 = call i64* @oat_alloc_array(i64 3)
  %_array1811 = bitcast i64* %_raw_array1810 to { i64, [0 x i64] }*
  %_gep1812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1812
  %_gep1814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1814
  %_gep1816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1816
  %_raw_array1818 = call i64* @oat_alloc_array(i64 3)
  %_array1819 = bitcast i64* %_raw_array1818 to { i64, [0 x i64] }*
  %_gep1820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1819, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1820
  %_gep1822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1819, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1822
  %_gep1824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1819, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1824
  %_raw_array1826 = call i64* @oat_alloc_array(i64 3)
  %_array1827 = bitcast i64* %_raw_array1826 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1827, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1803, { i64, [0 x i64] }** %_gep1828
  %_gep1830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1827, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1811, { i64, [0 x i64] }** %_gep1830
  %_gep1832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1827, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1819, { i64, [0 x i64] }** %_gep1832
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1827, { i64, [0 x { i64, [0 x i64] }*] }** %_a1834
  %_bop1836 = mul i64 0, 0
  %_bop1837 = mul i64 0, 1
  %_bop1838 = mul i64 0, 2
  %_bop1839 = mul i64 0, 3
  %_bop1840 = mul i64 0, 4
  %_raw_array1841 = call i64* @oat_alloc_array(i64 5)
  %_array1842 = bitcast i64* %_raw_array1841 to { i64, [0 x i64] }*
  %_gep1843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1842, i32 0, i32 1, i32 0
  store i64 %_bop1836, i64* %_gep1843
  %_gep1845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1842, i32 0, i32 1, i32 1
  store i64 %_bop1837, i64* %_gep1845
  %_gep1847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1842, i32 0, i32 1, i32 2
  store i64 %_bop1838, i64* %_gep1847
  %_gep1849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1842, i32 0, i32 1, i32 3
  store i64 %_bop1839, i64* %_gep1849
  %_gep1851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1842, i32 0, i32 1, i32 4
  store i64 %_bop1840, i64* %_gep1851
  %_bop1853 = mul i64 1, 0
  %_bop1854 = mul i64 1, 1
  %_bop1855 = mul i64 1, 2
  %_bop1856 = mul i64 1, 3
  %_bop1857 = mul i64 1, 4
  %_raw_array1858 = call i64* @oat_alloc_array(i64 5)
  %_array1859 = bitcast i64* %_raw_array1858 to { i64, [0 x i64] }*
  %_gep1860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 0
  store i64 %_bop1853, i64* %_gep1860
  %_gep1862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 1
  store i64 %_bop1854, i64* %_gep1862
  %_gep1864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 2
  store i64 %_bop1855, i64* %_gep1864
  %_gep1866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 3
  store i64 %_bop1856, i64* %_gep1866
  %_gep1868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1859, i32 0, i32 1, i32 4
  store i64 %_bop1857, i64* %_gep1868
  %_bop1870 = mul i64 2, 0
  %_bop1871 = mul i64 2, 1
  %_bop1872 = mul i64 2, 2
  %_bop1873 = mul i64 2, 3
  %_bop1874 = mul i64 2, 4
  %_raw_array1875 = call i64* @oat_alloc_array(i64 5)
  %_array1876 = bitcast i64* %_raw_array1875 to { i64, [0 x i64] }*
  %_gep1877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1876, i32 0, i32 1, i32 0
  store i64 %_bop1870, i64* %_gep1877
  %_gep1879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1876, i32 0, i32 1, i32 1
  store i64 %_bop1871, i64* %_gep1879
  %_gep1881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1876, i32 0, i32 1, i32 2
  store i64 %_bop1872, i64* %_gep1881
  %_gep1883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1876, i32 0, i32 1, i32 3
  store i64 %_bop1873, i64* %_gep1883
  %_gep1885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1876, i32 0, i32 1, i32 4
  store i64 %_bop1874, i64* %_gep1885
  %_bop1887 = mul i64 3, 0
  %_bop1888 = mul i64 3, 1
  %_bop1889 = mul i64 3, 2
  %_bop1890 = mul i64 3, 3
  %_bop1891 = mul i64 3, 4
  %_raw_array1892 = call i64* @oat_alloc_array(i64 5)
  %_array1893 = bitcast i64* %_raw_array1892 to { i64, [0 x i64] }*
  %_gep1894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1893, i32 0, i32 1, i32 0
  store i64 %_bop1887, i64* %_gep1894
  %_gep1896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1893, i32 0, i32 1, i32 1
  store i64 %_bop1888, i64* %_gep1896
  %_gep1898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1893, i32 0, i32 1, i32 2
  store i64 %_bop1889, i64* %_gep1898
  %_gep1900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1893, i32 0, i32 1, i32 3
  store i64 %_bop1890, i64* %_gep1900
  %_gep1902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1893, i32 0, i32 1, i32 4
  store i64 %_bop1891, i64* %_gep1902
  %_raw_array1904 = call i64* @oat_alloc_array(i64 4)
  %_array1905 = bitcast i64* %_raw_array1904 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1906 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1905, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1842, { i64, [0 x i64] }** %_gep1906
  %_gep1908 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1905, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1859, { i64, [0 x i64] }** %_gep1908
  %_gep1910 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1905, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1876, { i64, [0 x i64] }** %_gep1910
  %_gep1912 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1905, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1893, { i64, [0 x i64] }** %_gep1912
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1905, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1914
  %_bop1916 = mul i64 0, 0
  %_bop1917 = mul i64 0, 1
  %_bop1918 = mul i64 0, 2
  %_raw_array1919 = call i64* @oat_alloc_array(i64 3)
  %_array1920 = bitcast i64* %_raw_array1919 to { i64, [0 x i64] }*
  %_gep1921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1920, i32 0, i32 1, i32 0
  store i64 %_bop1916, i64* %_gep1921
  %_gep1923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1920, i32 0, i32 1, i32 1
  store i64 %_bop1917, i64* %_gep1923
  %_gep1925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1920, i32 0, i32 1, i32 2
  store i64 %_bop1918, i64* %_gep1925
  %_bop1927 = mul i64 1, 0
  %_bop1928 = mul i64 1, 1
  %_bop1929 = mul i64 1, 2
  %_raw_array1930 = call i64* @oat_alloc_array(i64 3)
  %_array1931 = bitcast i64* %_raw_array1930 to { i64, [0 x i64] }*
  %_gep1932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1931, i32 0, i32 1, i32 0
  store i64 %_bop1927, i64* %_gep1932
  %_gep1934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1931, i32 0, i32 1, i32 1
  store i64 %_bop1928, i64* %_gep1934
  %_gep1936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1931, i32 0, i32 1, i32 2
  store i64 %_bop1929, i64* %_gep1936
  %_bop1938 = mul i64 2, 0
  %_bop1939 = mul i64 2, 1
  %_bop1940 = mul i64 2, 2
  %_raw_array1941 = call i64* @oat_alloc_array(i64 3)
  %_array1942 = bitcast i64* %_raw_array1941 to { i64, [0 x i64] }*
  %_gep1943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1942, i32 0, i32 1, i32 0
  store i64 %_bop1938, i64* %_gep1943
  %_gep1945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1942, i32 0, i32 1, i32 1
  store i64 %_bop1939, i64* %_gep1945
  %_gep1947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1942, i32 0, i32 1, i32 2
  store i64 %_bop1940, i64* %_gep1947
  %_raw_array1949 = call i64* @oat_alloc_array(i64 3)
  %_array1950 = bitcast i64* %_raw_array1949 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1951 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1950, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1920, { i64, [0 x i64] }** %_gep1951
  %_gep1953 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1950, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1931, { i64, [0 x i64] }** %_gep1953
  %_gep1955 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1950, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1942, { i64, [0 x i64] }** %_gep1955
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1950, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01957
  %_arr1963 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1914
  %_ptr1961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1963, i32 0, i32 1, i32 3
  %_resPtr1962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1961
  %_ptr1959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1962, i32 0, i32 1, i32 4
  %_resPtr1960 = load i64, i64* %_ptr1959
  %_a1968 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1834
  %_ptr1966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1968, i32 0, i32 1, i32 1
  %_resPtr1967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1966
  %_ptr1964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1967, i32 0, i32 1, i32 2
  %_resPtr1965 = load i64, i64* %_ptr1964
  %_bop1969 = add i64 %_resPtr1960, %_resPtr1965
  %_arr01970 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01957
  %_id1971 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01970)
  %_bop1972 = add i64 %_bop1969, %_id1971
  %_id1973 = call i64 @g(i64 4)
  %_bop1974 = add i64 %_bop1972, %_id1973
  ret i64 %_bop1974
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
