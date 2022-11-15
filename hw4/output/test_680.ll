; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str1474 = alloca i8*
  %_raw_array1465 = call i64* @oat_alloc_array(i64 3)
  %_array1466 = bitcast i64* %_raw_array1465 to { i64, [0 x i64] }*
  %_gep1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1466, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep1467
  %_gep1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1466, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep1469
  %_gep1471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1466, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep1471
  %_id1473 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1466)
  store i8* %_id1473, i8** %_str1474
  %_str1476 = load i8*, i8** %_str1474
  call void @print_string(i8* %_str1476)
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
