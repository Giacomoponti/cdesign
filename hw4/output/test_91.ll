; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1623 = alloca { i64, [0 x i64] }*
  %_raw_array1601 = call i64* @oat_alloc_array(i64 10)
  %_array1602 = bitcast i64* %_raw_array1601 to { i64, [0 x i64] }*
  %_gep1603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep1603
  %_gep1605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep1605
  %_gep1607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep1607
  %_gep1609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep1609
  %_gep1611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep1611
  %_gep1613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep1613
  %_gep1615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep1615
  %_gep1617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep1617
  %_gep1619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep1619
  %_gep1621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1602, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep1621
  store { i64, [0 x i64] }* %_array1602, { i64, [0 x i64] }** %_a1623
  %_a1625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1623
  %_id1626 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1625)
  call void @print_string(i8* %_id1626)
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
