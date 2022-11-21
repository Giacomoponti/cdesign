; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_s2024 = global [4 x i8] c"abc\00"
@_s2025 = global i8* bitcast ([4 x i8]* @_s2024 to i8*)
@_s2027 = global [4 x i8] c"def\00"
@_s2028 = global i8* bitcast ([4 x i8]* @_s2027 to i8*)
@_s2036 = global [4 x i8] c"789\00"
@_s2037 = global i8* bitcast ([4 x i8]* @_s2036 to i8*)
@_s2039 = global [4 x i8] c"123\00"
@_s2040 = global i8* bitcast ([4 x i8]* @_s2039 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2054 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc2021 = alloca i64
  store i64 %argc, i64* %_argc2021
  %_argv2023 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2023
  %_tmp2026 = load i8*, i8** @_s2025
  %_tmp2029 = load i8*, i8** @_s2028
  %_raw_array2030 = call i64* @oat_alloc_array(i64 2)
  %_array2031 = bitcast i64* %_raw_array2030 to { i64, [0 x i8*] }*
  %_gep2032 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2031, i32 0, i32 1, i32 0
  store i8* %_tmp2026, i8** %_gep2032
  %_gep2034 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2031, i32 0, i32 1, i32 1
  store i8* %_tmp2029, i8** %_gep2034
  %_tmp2038 = load i8*, i8** @_s2037
  %_tmp2041 = load i8*, i8** @_s2040
  %_raw_array2042 = call i64* @oat_alloc_array(i64 2)
  %_array2043 = bitcast i64* %_raw_array2042 to { i64, [0 x i8*] }*
  %_gep2044 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2043, i32 0, i32 1, i32 0
  store i8* %_tmp2038, i8** %_gep2044
  %_gep2046 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2043, i32 0, i32 1, i32 1
  store i8* %_tmp2041, i8** %_gep2046
  %_raw_array2048 = call i64* @oat_alloc_array(i64 2)
  %_array2049 = bitcast i64* %_raw_array2048 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_gep2050 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2049, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2031, { i64, [0 x i8*] }** %_gep2050
  %_gep2052 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2049, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2043, { i64, [0 x i8*] }** %_gep2052
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2049, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2054
  %_strs2060 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2054
  %_ptr2058 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs2060, i32 0, i32 1, i32 1
  %_resPtr2059 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr2058
  %_ptr2056 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_resPtr2059, i32 0, i32 1, i32 1
  %_resPtr2057 = load i8*, i8** %_ptr2056
  call void @print_string(i8* %_resPtr2057)
  ret i64 0
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
