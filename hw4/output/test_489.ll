; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1874 = alloca i64
  %_a1935 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1938 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1871 = alloca i64
  store i64 %argc, i64* %_argc1871
  %_argv1873 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1873
  store i64 10, i64* %_x1874
  %_x1876 = load i64, i64* %_x1874
  %_bop1877 = add i64 %_x1876, 0
  %_bop1878 = add i64 %_bop1877, 0
  %_x1879 = load i64, i64* %_x1874
  %_bop1880 = add i64 %_x1879, 0
  %_bop1881 = add i64 %_bop1880, 1
  %_x1882 = load i64, i64* %_x1874
  %_bop1883 = add i64 %_x1882, 0
  %_bop1884 = add i64 %_bop1883, 2
  %_raw_array1885 = call i64* @oat_alloc_array(i64 3)
  %_array1886 = bitcast i64* %_raw_array1885 to { i64, [0 x i64] }*
  %_gep1887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1886, i32 0, i32 1, i32 0
  store i64 %_bop1878, i64* %_gep1887
  %_gep1889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1886, i32 0, i32 1, i32 1
  store i64 %_bop1881, i64* %_gep1889
  %_gep1891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1886, i32 0, i32 1, i32 2
  store i64 %_bop1884, i64* %_gep1891
  %_x1893 = load i64, i64* %_x1874
  %_bop1894 = add i64 %_x1893, 1
  %_bop1895 = add i64 %_bop1894, 0
  %_x1896 = load i64, i64* %_x1874
  %_bop1897 = add i64 %_x1896, 1
  %_bop1898 = add i64 %_bop1897, 1
  %_x1899 = load i64, i64* %_x1874
  %_bop1900 = add i64 %_x1899, 1
  %_bop1901 = add i64 %_bop1900, 2
  %_raw_array1902 = call i64* @oat_alloc_array(i64 3)
  %_array1903 = bitcast i64* %_raw_array1902 to { i64, [0 x i64] }*
  %_gep1904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1903, i32 0, i32 1, i32 0
  store i64 %_bop1895, i64* %_gep1904
  %_gep1906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1903, i32 0, i32 1, i32 1
  store i64 %_bop1898, i64* %_gep1906
  %_gep1908 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1903, i32 0, i32 1, i32 2
  store i64 %_bop1901, i64* %_gep1908
  %_x1910 = load i64, i64* %_x1874
  %_bop1911 = add i64 %_x1910, 2
  %_bop1912 = add i64 %_bop1911, 0
  %_x1913 = load i64, i64* %_x1874
  %_bop1914 = add i64 %_x1913, 2
  %_bop1915 = add i64 %_bop1914, 1
  %_x1916 = load i64, i64* %_x1874
  %_bop1917 = add i64 %_x1916, 2
  %_bop1918 = add i64 %_bop1917, 2
  %_raw_array1919 = call i64* @oat_alloc_array(i64 3)
  %_array1920 = bitcast i64* %_raw_array1919 to { i64, [0 x i64] }*
  %_gep1921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1920, i32 0, i32 1, i32 0
  store i64 %_bop1912, i64* %_gep1921
  %_gep1923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1920, i32 0, i32 1, i32 1
  store i64 %_bop1915, i64* %_gep1923
  %_gep1925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1920, i32 0, i32 1, i32 2
  store i64 %_bop1918, i64* %_gep1925
  %_raw_array1927 = call i64* @oat_alloc_array(i64 3)
  %_array1928 = bitcast i64* %_raw_array1927 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1928, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1886, { i64, [0 x i64] }** %_gep1929
  %_gep1931 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1928, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1903, { i64, [0 x i64] }** %_gep1931
  %_gep1933 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1928, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1920, { i64, [0 x i64] }** %_gep1933
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1928, { i64, [0 x { i64, [0 x i64] }*] }** %_a1935
  %_a1937 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1935
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1937, { i64, [0 x { i64, [0 x i64] }*] }** %_b1938
  %_b1944 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1938
  %_ptr1942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1944, i32 0, i32 1, i32 2
  %_resPtr1943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1942
  %_ptr1940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1943, i32 0, i32 1, i32 1
  %_resPtr1941 = load i64, i64* %_ptr1940
  ret i64 %_resPtr1941
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
