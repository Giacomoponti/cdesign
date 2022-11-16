; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a2018 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a2018
  %_a2024 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2019
  %_ptr2022 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2024, i32 0, i32 1, i32 1
  %_resPtr2023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2022
  %_ptr2020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2023, i32 0, i32 1, i32 1
  %_resPtr2021 = load i64, i64* %_ptr2020
  ret i64 %_resPtr2021
}

define i64 @g(i64 %x) {
  %_arr2010 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1967 = alloca i64
  store i64 %x, i64* %_x1967
  %_x1969 = load i64, i64* %_x1968
  %_x1970 = load i64, i64* %_x1968
  %_x1971 = load i64, i64* %_x1968
  %_raw_array1972 = call i64* @oat_alloc_array(i64 3)
  %_array1973 = bitcast i64* %_raw_array1972 to { i64, [0 x i64] }*
  %_gep1974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1973, i32 0, i32 1, i32 0
  store i64 %_x1969, i64* %_gep1974
  %_gep1976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1973, i32 0, i32 1, i32 1
  store i64 %_x1970, i64* %_gep1976
  %_gep1978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1973, i32 0, i32 1, i32 2
  store i64 %_x1971, i64* %_gep1978
  %_x1980 = load i64, i64* %_x1968
  %_x1981 = load i64, i64* %_x1968
  %_x1982 = load i64, i64* %_x1968
  %_raw_array1983 = call i64* @oat_alloc_array(i64 3)
  %_array1984 = bitcast i64* %_raw_array1983 to { i64, [0 x i64] }*
  %_gep1985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1984, i32 0, i32 1, i32 0
  store i64 %_x1980, i64* %_gep1985
  %_gep1987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1984, i32 0, i32 1, i32 1
  store i64 %_x1981, i64* %_gep1987
  %_gep1989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1984, i32 0, i32 1, i32 2
  store i64 %_x1982, i64* %_gep1989
  %_x1991 = load i64, i64* %_x1968
  %_x1992 = load i64, i64* %_x1968
  %_x1993 = load i64, i64* %_x1968
  %_raw_array1994 = call i64* @oat_alloc_array(i64 3)
  %_array1995 = bitcast i64* %_raw_array1994 to { i64, [0 x i64] }*
  %_gep1996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1995, i32 0, i32 1, i32 0
  store i64 %_x1991, i64* %_gep1996
  %_gep1998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1995, i32 0, i32 1, i32 1
  store i64 %_x1992, i64* %_gep1998
  %_gep2000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1995, i32 0, i32 1, i32 2
  store i64 %_x1993, i64* %_gep2000
  %_raw_array2002 = call i64* @oat_alloc_array(i64 3)
  %_array2003 = bitcast i64* %_raw_array2002 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep2004 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2003, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1973, { i64, [0 x i64] }** %_gep2004
  %_gep2006 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2003, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1984, { i64, [0 x i64] }** %_gep2006
  %_gep2008 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2003, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1995, { i64, [0 x i64] }** %_gep2008
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2003, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2010
  %_arr2016 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2010
  %_ptr2014 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr2016, i32 0, i32 1, i32 1
  %_resPtr2015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2014
  %_ptr2012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2015, i32 0, i32 1, i32 1
  %_resPtr2013 = load i64, i64* %_ptr2012
  ret i64 %_resPtr2013
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1825 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1905 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01948 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1788 = alloca i64
  %_argv1790 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1790
  store i64 %argc, i64* %_argc1788
  %_raw_array1793 = call i64* @oat_alloc_array(i64 3)
  %_array1794 = bitcast i64* %_raw_array1793 to { i64, [0 x i64] }*
  %_gep1795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1794, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1795
  %_gep1797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1794, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1797
  %_gep1799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1794, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1799
  %_raw_array1801 = call i64* @oat_alloc_array(i64 3)
  %_array1802 = bitcast i64* %_raw_array1801 to { i64, [0 x i64] }*
  %_gep1803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1802, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1803
  %_gep1805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1802, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1805
  %_gep1807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1802, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1807
  %_raw_array1809 = call i64* @oat_alloc_array(i64 3)
  %_array1810 = bitcast i64* %_raw_array1809 to { i64, [0 x i64] }*
  %_gep1811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1810, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1811
  %_gep1813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1810, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1813
  %_gep1815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1810, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1815
  %_raw_array1817 = call i64* @oat_alloc_array(i64 3)
  %_array1818 = bitcast i64* %_raw_array1817 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1819 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1818, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1794, { i64, [0 x i64] }** %_gep1819
  %_gep1821 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1818, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1802, { i64, [0 x i64] }** %_gep1821
  %_gep1823 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1818, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1810, { i64, [0 x i64] }** %_gep1823
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1818, { i64, [0 x { i64, [0 x i64] }*] }** %_a1825
  %_bop1827 = mul i64 0, 0
  %_bop1828 = mul i64 0, 1
  %_bop1829 = mul i64 0, 2
  %_bop1830 = mul i64 0, 3
  %_bop1831 = mul i64 0, 4
  %_raw_array1832 = call i64* @oat_alloc_array(i64 5)
  %_array1833 = bitcast i64* %_raw_array1832 to { i64, [0 x i64] }*
  %_gep1834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 0
  store i64 %_bop1827, i64* %_gep1834
  %_gep1836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 1
  store i64 %_bop1828, i64* %_gep1836
  %_gep1838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 2
  store i64 %_bop1829, i64* %_gep1838
  %_gep1840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 3
  store i64 %_bop1830, i64* %_gep1840
  %_gep1842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 4
  store i64 %_bop1831, i64* %_gep1842
  %_bop1844 = mul i64 1, 0
  %_bop1845 = mul i64 1, 1
  %_bop1846 = mul i64 1, 2
  %_bop1847 = mul i64 1, 3
  %_bop1848 = mul i64 1, 4
  %_raw_array1849 = call i64* @oat_alloc_array(i64 5)
  %_array1850 = bitcast i64* %_raw_array1849 to { i64, [0 x i64] }*
  %_gep1851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1850, i32 0, i32 1, i32 0
  store i64 %_bop1844, i64* %_gep1851
  %_gep1853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1850, i32 0, i32 1, i32 1
  store i64 %_bop1845, i64* %_gep1853
  %_gep1855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1850, i32 0, i32 1, i32 2
  store i64 %_bop1846, i64* %_gep1855
  %_gep1857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1850, i32 0, i32 1, i32 3
  store i64 %_bop1847, i64* %_gep1857
  %_gep1859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1850, i32 0, i32 1, i32 4
  store i64 %_bop1848, i64* %_gep1859
  %_bop1861 = mul i64 2, 0
  %_bop1862 = mul i64 2, 1
  %_bop1863 = mul i64 2, 2
  %_bop1864 = mul i64 2, 3
  %_bop1865 = mul i64 2, 4
  %_raw_array1866 = call i64* @oat_alloc_array(i64 5)
  %_array1867 = bitcast i64* %_raw_array1866 to { i64, [0 x i64] }*
  %_gep1868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1867, i32 0, i32 1, i32 0
  store i64 %_bop1861, i64* %_gep1868
  %_gep1870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1867, i32 0, i32 1, i32 1
  store i64 %_bop1862, i64* %_gep1870
  %_gep1872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1867, i32 0, i32 1, i32 2
  store i64 %_bop1863, i64* %_gep1872
  %_gep1874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1867, i32 0, i32 1, i32 3
  store i64 %_bop1864, i64* %_gep1874
  %_gep1876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1867, i32 0, i32 1, i32 4
  store i64 %_bop1865, i64* %_gep1876
  %_bop1878 = mul i64 3, 0
  %_bop1879 = mul i64 3, 1
  %_bop1880 = mul i64 3, 2
  %_bop1881 = mul i64 3, 3
  %_bop1882 = mul i64 3, 4
  %_raw_array1883 = call i64* @oat_alloc_array(i64 5)
  %_array1884 = bitcast i64* %_raw_array1883 to { i64, [0 x i64] }*
  %_gep1885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 0
  store i64 %_bop1878, i64* %_gep1885
  %_gep1887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 1
  store i64 %_bop1879, i64* %_gep1887
  %_gep1889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 2
  store i64 %_bop1880, i64* %_gep1889
  %_gep1891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 3
  store i64 %_bop1881, i64* %_gep1891
  %_gep1893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 4
  store i64 %_bop1882, i64* %_gep1893
  %_raw_array1895 = call i64* @oat_alloc_array(i64 4)
  %_array1896 = bitcast i64* %_raw_array1895 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1897 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1896, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1833, { i64, [0 x i64] }** %_gep1897
  %_gep1899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1896, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1850, { i64, [0 x i64] }** %_gep1899
  %_gep1901 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1896, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1867, { i64, [0 x i64] }** %_gep1901
  %_gep1903 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1896, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1884, { i64, [0 x i64] }** %_gep1903
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1896, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1905
  %_bop1907 = mul i64 0, 0
  %_bop1908 = mul i64 0, 1
  %_bop1909 = mul i64 0, 2
  %_raw_array1910 = call i64* @oat_alloc_array(i64 3)
  %_array1911 = bitcast i64* %_raw_array1910 to { i64, [0 x i64] }*
  %_gep1912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1911, i32 0, i32 1, i32 0
  store i64 %_bop1907, i64* %_gep1912
  %_gep1914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1911, i32 0, i32 1, i32 1
  store i64 %_bop1908, i64* %_gep1914
  %_gep1916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1911, i32 0, i32 1, i32 2
  store i64 %_bop1909, i64* %_gep1916
  %_bop1918 = mul i64 1, 0
  %_bop1919 = mul i64 1, 1
  %_bop1920 = mul i64 1, 2
  %_raw_array1921 = call i64* @oat_alloc_array(i64 3)
  %_array1922 = bitcast i64* %_raw_array1921 to { i64, [0 x i64] }*
  %_gep1923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1922, i32 0, i32 1, i32 0
  store i64 %_bop1918, i64* %_gep1923
  %_gep1925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1922, i32 0, i32 1, i32 1
  store i64 %_bop1919, i64* %_gep1925
  %_gep1927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1922, i32 0, i32 1, i32 2
  store i64 %_bop1920, i64* %_gep1927
  %_bop1929 = mul i64 2, 0
  %_bop1930 = mul i64 2, 1
  %_bop1931 = mul i64 2, 2
  %_raw_array1932 = call i64* @oat_alloc_array(i64 3)
  %_array1933 = bitcast i64* %_raw_array1932 to { i64, [0 x i64] }*
  %_gep1934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1933, i32 0, i32 1, i32 0
  store i64 %_bop1929, i64* %_gep1934
  %_gep1936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1933, i32 0, i32 1, i32 1
  store i64 %_bop1930, i64* %_gep1936
  %_gep1938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1933, i32 0, i32 1, i32 2
  store i64 %_bop1931, i64* %_gep1938
  %_raw_array1940 = call i64* @oat_alloc_array(i64 3)
  %_array1941 = bitcast i64* %_raw_array1940 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1941, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1911, { i64, [0 x i64] }** %_gep1942
  %_gep1944 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1941, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1922, { i64, [0 x i64] }** %_gep1944
  %_gep1946 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1941, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1933, { i64, [0 x i64] }** %_gep1946
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1941, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01948
  %_arr1954 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1905
  %_ptr1952 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1954, i32 0, i32 1, i32 3
  %_resPtr1953 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1952
  %_ptr1950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1953, i32 0, i32 1, i32 4
  %_resPtr1951 = load i64, i64* %_ptr1950
  %_a1959 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1825
  %_ptr1957 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1959, i32 0, i32 1, i32 1
  %_resPtr1958 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1957
  %_ptr1955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1958, i32 0, i32 1, i32 2
  %_resPtr1956 = load i64, i64* %_ptr1955
  %_bop1960 = add i64 %_resPtr1951, %_resPtr1956
  %_arr01961 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01948
  %_id1962 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01961)
  %_bop1963 = add i64 %_bop1960, %_id1962
  %_id1964 = call i64 @g(i64 4)
  %_bop1965 = add i64 %_bop1963, %_id1964
  ret i64 %_bop1965
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
