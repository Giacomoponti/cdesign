; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x2040 = alloca i64
  %_a2101 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b2104 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc2035 = alloca i64
  %_argv2037 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2037
  store i64 %argc, i64* %_argc2035
  store i64 10, i64* %_x2040
  %_x2042 = load i64, i64* %_x2040
  %_bop2043 = add i64 %_x2042, 0
  %_bop2044 = add i64 %_bop2043, 0
  %_x2045 = load i64, i64* %_x2040
  %_bop2046 = add i64 %_x2045, 0
  %_bop2047 = add i64 %_bop2046, 1
  %_x2048 = load i64, i64* %_x2040
  %_bop2049 = add i64 %_x2048, 0
  %_bop2050 = add i64 %_bop2049, 2
  %_raw_array2051 = call i64* @oat_alloc_array(i64 3)
  %_array2052 = bitcast i64* %_raw_array2051 to { i64, [0 x i64] }*
  %_gep2053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2052, i32 0, i32 1, i32 0
  store i64 %_bop2050, i64* %_gep2053
  %_gep2055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2052, i32 0, i32 1, i32 1
  store i64 %_bop2047, i64* %_gep2055
  %_gep2057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2052, i32 0, i32 1, i32 2
  store i64 %_bop2044, i64* %_gep2057
  %_x2059 = load i64, i64* %_x2040
  %_bop2060 = add i64 %_x2059, 1
  %_bop2061 = add i64 %_bop2060, 0
  %_x2062 = load i64, i64* %_x2040
  %_bop2063 = add i64 %_x2062, 1
  %_bop2064 = add i64 %_bop2063, 1
  %_x2065 = load i64, i64* %_x2040
  %_bop2066 = add i64 %_x2065, 1
  %_bop2067 = add i64 %_bop2066, 2
  %_raw_array2068 = call i64* @oat_alloc_array(i64 3)
  %_array2069 = bitcast i64* %_raw_array2068 to { i64, [0 x i64] }*
  %_gep2070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2069, i32 0, i32 1, i32 0
  store i64 %_bop2067, i64* %_gep2070
  %_gep2072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2069, i32 0, i32 1, i32 1
  store i64 %_bop2064, i64* %_gep2072
  %_gep2074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2069, i32 0, i32 1, i32 2
  store i64 %_bop2061, i64* %_gep2074
  %_x2076 = load i64, i64* %_x2040
  %_bop2077 = add i64 %_x2076, 2
  %_bop2078 = add i64 %_bop2077, 0
  %_x2079 = load i64, i64* %_x2040
  %_bop2080 = add i64 %_x2079, 2
  %_bop2081 = add i64 %_bop2080, 1
  %_x2082 = load i64, i64* %_x2040
  %_bop2083 = add i64 %_x2082, 2
  %_bop2084 = add i64 %_bop2083, 2
  %_raw_array2085 = call i64* @oat_alloc_array(i64 3)
  %_array2086 = bitcast i64* %_raw_array2085 to { i64, [0 x i64] }*
  %_gep2087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2086, i32 0, i32 1, i32 0
  store i64 %_bop2084, i64* %_gep2087
  %_gep2089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2086, i32 0, i32 1, i32 1
  store i64 %_bop2081, i64* %_gep2089
  %_gep2091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2086, i32 0, i32 1, i32 2
  store i64 %_bop2078, i64* %_gep2091
  %_raw_array2093 = call i64* @oat_alloc_array(i64 3)
  %_array2094 = bitcast i64* %_raw_array2093 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep2095 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2094, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2086, { i64, [0 x i64] }** %_gep2095
  %_gep2097 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2094, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2069, { i64, [0 x i64] }** %_gep2097
  %_gep2099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2094, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2052, { i64, [0 x i64] }** %_gep2099
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2094, { i64, [0 x { i64, [0 x i64] }*] }** %_a2101
  %_a2103 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2101
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2103, { i64, [0 x { i64, [0 x i64] }*] }** %_b2104
  %_b2110 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b2104
  %_ptr2108 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b2110, i32 0, i32 1, i32 2
  %_resPtr2109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2108
  %_ptr2106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2109, i32 0, i32 1, i32 1
  %_resPtr2107 = load i64, i64* %_ptr2106
  ret i64 %_resPtr2107
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
