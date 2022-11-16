; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1979 = alloca { i64, [0 x i64] }*
  %_str1983 = alloca i8*
  %_argc1966 = alloca i64
  %_argv1968 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1968
  store i64 %argc, i64* %_argc1966
  %_raw_array1971 = call i64* @oat_alloc_array(i64 3)
  %_array1972 = bitcast i64* %_raw_array1971 to { i64, [0 x i64] }*
  %_gep1973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1972, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep1973
  %_gep1975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1972, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep1975
  %_gep1977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1972, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep1977
  store { i64, [0 x i64] }* %_array1972, { i64, [0 x i64] }** %_a1979
  %_a1981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1979
  %_id1982 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1981)
  store i8* %_id1982, i8** %_str1983
  %_str1985 = load i8*, i8** %_str1983
  call void @print_string(i8* %_str1985)
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
