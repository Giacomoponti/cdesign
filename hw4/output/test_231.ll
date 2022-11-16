; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str1525 = alloca i8*
  %_raw_array1516 = call i64* @oat_alloc_array(i64 3)
  %_array1517 = bitcast i64* %_raw_array1516 to { i64, [0 x i64] }*
  %_gep1518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1517, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep1518
  %_gep1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1517, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep1520
  %_gep1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1517, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep1522
  %_id1524 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1517)
  store i8* %_id1524, i8** %_str1525
  %_str1527 = load i8*, i8** %_str1525
  call void @print_string(i8* %_str1527)
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
