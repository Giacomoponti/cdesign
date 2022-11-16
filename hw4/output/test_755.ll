; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x2031 = alloca i64
  %_a2092 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b2095 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc2026 = alloca i64
  %_argv2028 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2028
  store i64 %argc, i64* %_argc2026
  store i64 10, i64* %_x2031
  %_x2033 = load i64, i64* %_x2031
  %_bop2034 = add i64 %_x2033, 0
  %_bop2035 = add i64 %_bop2034, 0
  %_x2036 = load i64, i64* %_x2031
  %_bop2037 = add i64 %_x2036, 0
  %_bop2038 = add i64 %_bop2037, 1
  %_x2039 = load i64, i64* %_x2031
  %_bop2040 = add i64 %_x2039, 0
  %_bop2041 = add i64 %_bop2040, 2
  %_raw_array2042 = call i64* @oat_alloc_array(i64 3)
  %_array2043 = bitcast i64* %_raw_array2042 to { i64, [0 x i64] }*
  %_gep2044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2043, i32 0, i32 1, i32 0
  store i64 %_bop2035, i64* %_gep2044
  %_gep2046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2043, i32 0, i32 1, i32 1
  store i64 %_bop2038, i64* %_gep2046
  %_gep2048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2043, i32 0, i32 1, i32 2
  store i64 %_bop2041, i64* %_gep2048
  %_x2050 = load i64, i64* %_x2031
  %_bop2051 = add i64 %_x2050, 1
  %_bop2052 = add i64 %_bop2051, 0
  %_x2053 = load i64, i64* %_x2031
  %_bop2054 = add i64 %_x2053, 1
  %_bop2055 = add i64 %_bop2054, 1
  %_x2056 = load i64, i64* %_x2031
  %_bop2057 = add i64 %_x2056, 1
  %_bop2058 = add i64 %_bop2057, 2
  %_raw_array2059 = call i64* @oat_alloc_array(i64 3)
  %_array2060 = bitcast i64* %_raw_array2059 to { i64, [0 x i64] }*
  %_gep2061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2060, i32 0, i32 1, i32 0
  store i64 %_bop2052, i64* %_gep2061
  %_gep2063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2060, i32 0, i32 1, i32 1
  store i64 %_bop2055, i64* %_gep2063
  %_gep2065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2060, i32 0, i32 1, i32 2
  store i64 %_bop2058, i64* %_gep2065
  %_x2067 = load i64, i64* %_x2031
  %_bop2068 = add i64 %_x2067, 2
  %_bop2069 = add i64 %_bop2068, 0
  %_x2070 = load i64, i64* %_x2031
  %_bop2071 = add i64 %_x2070, 2
  %_bop2072 = add i64 %_bop2071, 1
  %_x2073 = load i64, i64* %_x2031
  %_bop2074 = add i64 %_x2073, 2
  %_bop2075 = add i64 %_bop2074, 2
  %_raw_array2076 = call i64* @oat_alloc_array(i64 3)
  %_array2077 = bitcast i64* %_raw_array2076 to { i64, [0 x i64] }*
  %_gep2078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2077, i32 0, i32 1, i32 0
  store i64 %_bop2069, i64* %_gep2078
  %_gep2080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2077, i32 0, i32 1, i32 1
  store i64 %_bop2072, i64* %_gep2080
  %_gep2082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2077, i32 0, i32 1, i32 2
  store i64 %_bop2075, i64* %_gep2082
  %_raw_array2084 = call i64* @oat_alloc_array(i64 3)
  %_array2085 = bitcast i64* %_raw_array2084 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep2086 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2085, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2043, { i64, [0 x i64] }** %_gep2086
  %_gep2088 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2085, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2060, { i64, [0 x i64] }** %_gep2088
  %_gep2090 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2085, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2077, { i64, [0 x i64] }** %_gep2090
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2085, { i64, [0 x { i64, [0 x i64] }*] }** %_a2092
  %_a2094 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2092
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2094, { i64, [0 x { i64, [0 x i64] }*] }** %_b2095
  %_b2101 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b2095
  %_ptr2099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b2101, i32 0, i32 1, i32 2
  %_resPtr2100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2099
  %_ptr2097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2100, i32 0, i32 1, i32 1
  %_resPtr2098 = load i64, i64* %_ptr2097
  ret i64 %_resPtr2098
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
