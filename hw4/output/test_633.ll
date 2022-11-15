; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1058 = alloca { i64, [0 x i64] }*
  %_str1062 = alloca i8*
  %_raw_array1050 = call i64* @oat_alloc_array(i64 3)
  %_array1051 = bitcast i64* %_raw_array1050 to { i64, [0 x i64] }*
  %_gep1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep1052
  %_gep1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep1054
  %_gep1056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep1056
  store { i64, [0 x i64] }* %_array1051, { i64, [0 x i64] }** %_a1058
  %_a1060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1058
  %_id1061 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1060)
  store i8* %_id1061, i8** %_str1062
  %_str1064 = load i8*, i8** %_str1062
  call void @print_string(i8* %_str1064)
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
