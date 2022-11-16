; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1632 = alloca { i64, [0 x i64] }*
  %_raw_array1610 = call i64* @oat_alloc_array(i64 10)
  %_array1611 = bitcast i64* %_raw_array1610 to { i64, [0 x i64] }*
  %_gep1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep1612
  %_gep1614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep1614
  %_gep1616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep1616
  %_gep1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep1618
  %_gep1620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep1620
  %_gep1622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep1622
  %_gep1624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep1624
  %_gep1626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep1626
  %_gep1628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep1628
  %_gep1630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1611, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep1630
  store { i64, [0 x i64] }* %_array1611, { i64, [0 x i64] }** %_a1632
  %_a1634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1632
  %_id1635 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1634)
  call void @print_string(i8* %_id1635)
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
