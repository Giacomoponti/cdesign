; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1937 = alloca { i64, [0 x i64] }*
  %_str1941 = alloca i8*
  %_argc1924 = alloca i64
  %_argv1926 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1926
  store i64 %argc, i64* %_argc1924
  %_raw_array1929 = call i64* @oat_alloc_array(i64 3)
  %_array1930 = bitcast i64* %_raw_array1929 to { i64, [0 x i64] }*
  %_gep1931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1930, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep1931
  %_gep1933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1930, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep1933
  %_gep1935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1930, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep1935
  store { i64, [0 x i64] }* %_array1930, { i64, [0 x i64] }** %_a1937
  %_a1939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1937
  %_id1940 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1939)
  store i8* %_id1940, i8** %_str1941
  %_str1943 = load i8*, i8** %_str1941
  call void @print_string(i8* %_str1943)
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
