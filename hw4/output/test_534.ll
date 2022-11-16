; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs1947 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc1924 = alloca i64
  %_argv1926 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1926
  store i64 %argc, i64* %_argc1924
  %_raw_array1929 = call i64* @oat_alloc_array(i64 2)
  %_array1930 = bitcast i64* %_raw_array1929 to { i64, [0 x i8*] }*
  %_gep1931 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1930, i32 0, i32 1, i32 0
  store void null, void* %_gep1931
  %_gep1933 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1930, i32 0, i32 1, i32 1
  store void null, void* %_gep1933
  %_raw_array1935 = call i64* @oat_alloc_array(i64 2)
  %_array1936 = bitcast i64* %_raw_array1935 to { i64, [0 x i8*] }*
  %_gep1937 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1936, i32 0, i32 1, i32 0
  store void null, void* %_gep1937
  %_gep1939 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1936, i32 0, i32 1, i32 1
  store void null, void* %_gep1939
  %_raw_array1941 = call i64* @oat_alloc_array(i64 2)
  %_array1942 = bitcast i64* %_raw_array1941 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_gep1943 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1942, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1930, { i64, [0 x i8*] }** %_gep1943
  %_gep1945 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1942, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1936, { i64, [0 x i8*] }** %_gep1945
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1942, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1947
  %_strs1953 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1947
  %_ptr1951 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1953, i32 0, i32 1, i32 1
  %_resPtr1952 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr1951
  %_ptr1949 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_resPtr1952, i32 0, i32 1, i32 1
  %_resPtr1950 = load i8*, i8** %_ptr1949
  call void @print_string(i8* %_resPtr1950)
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
