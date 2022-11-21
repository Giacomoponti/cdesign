; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1957 = alloca { i64, [0 x i64] }*
  %_argc1946 = alloca i64
  store i64 %argc, i64* %_argc1946
  %_argv1948 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1948
  %_raw_array1949 = call i64* @oat_alloc_array(i64 3)
  %_array1950 = bitcast i64* %_raw_array1949 to { i64, [0 x i64] }*
  %_gep1951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1950, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1951
  %_gep1953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1950, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1953
  %_gep1955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1950, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1955
  store { i64, [0 x i64] }* %_array1950, { i64, [0 x i64] }** %_a1957
  %_a1961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1957
  %_ptr1959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1961, i32 0, i32 1, i32 2
  %_resPtr1960 = load i64, i64* %_ptr1959
  ret i64 %_resPtr1960
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
