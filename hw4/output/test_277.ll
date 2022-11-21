; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i1966 = alloca i64
  %_a1976 = alloca { i64, [0 x i64] }*
  %_argc1963 = alloca i64
  store i64 %argc, i64* %_argc1963
  %_argv1965 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1965
  store i64 999, i64* %_i1966
  %_raw_array1968 = call i64* @oat_alloc_array(i64 3)
  %_array1969 = bitcast i64* %_raw_array1968 to { i64, [0 x i64] }*
  %_gep1970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1969, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1970
  %_gep1972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1969, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1972
  %_gep1974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1969, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1974
  store { i64, [0 x i64] }* %_array1969, { i64, [0 x i64] }** %_a1976
  %_a1980 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1976
  %_ptr1978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1980, i32 0, i32 1, i32 2
  %_resPtr1979 = load i64, i64* %_ptr1978
  ret i64 %_resPtr1979
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
