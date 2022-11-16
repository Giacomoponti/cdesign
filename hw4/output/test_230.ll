; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a1512 = load i64, i64* @a
  %_bop1513 = add i64 %_a1512, 1
  store i64 %_bop1513, i64* @a
  %_a1515 = load i64, i64* @a
  ret i64 %_a1515
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1493 = alloca { i64, [0 x i64] }*
  %_id1490 = call i64 @f()
  %_raw_array1491 = call i64* @oat_alloc_array(i64 %_id1490)
  %_array1492 = bitcast i64* %_raw_array1491 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1492, { i64, [0 x i64] }** %_b1493
  %_id1495 = call i64 @f()
  %_b1496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1493
  %_ptr1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1496, i32 0, i32 1, i32 0
  store i64 %_id1495, i64* %_ptr1497
  %_id1499 = call i64 @f()
  %_b1500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1493
  %_ptr1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1500, i32 0, i32 1, i32 1
  store i64 %_id1499, i64* %_ptr1501
  %_a1503 = load i64, i64* @a
  %_b1506 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1493
  %_ptr1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1506, i32 0, i32 1, i32 0
  %_resPtr1505 = load i64, i64* %_ptr1504
  %_bop1507 = add i64 %_a1503, %_resPtr1505
  %_b1510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1493
  %_ptr1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1510, i32 0, i32 1, i32 1
  %_resPtr1509 = load i64, i64* %_ptr1508
  %_bop1511 = add i64 %_bop1507, %_resPtr1509
  ret i64 %_bop1511
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
