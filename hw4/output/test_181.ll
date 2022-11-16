; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a1503 = load i64, i64* @a
  %_bop1504 = add i64 %_a1503, 1
  store i64 %_bop1504, i64* @a
  %_a1506 = load i64, i64* @a
  ret i64 %_a1506
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1484 = alloca { i64, [0 x i64] }*
  %_id1481 = call i64 @f()
  %_raw_array1482 = call i64* @oat_alloc_array(i64 %_id1481)
  %_array1483 = bitcast i64* %_raw_array1482 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1483, { i64, [0 x i64] }** %_b1484
  %_id1486 = call i64 @f()
  %_b1487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1484
  %_ptr1488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1487, i32 0, i32 1, i32 0
  store i64 %_id1486, i64* %_ptr1488
  %_id1490 = call i64 @f()
  %_b1491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1484
  %_ptr1492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1491, i32 0, i32 1, i32 1
  store i64 %_id1490, i64* %_ptr1492
  %_a1494 = load i64, i64* @a
  %_b1497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1484
  %_ptr1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1497, i32 0, i32 1, i32 0
  %_resPtr1496 = load i64, i64* %_ptr1495
  %_bop1498 = add i64 %_a1494, %_resPtr1496
  %_b1501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1484
  %_ptr1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1501, i32 0, i32 1, i32 1
  %_resPtr1500 = load i64, i64* %_ptr1499
  %_bop1502 = add i64 %_bop1498, %_resPtr1500
  ret i64 %_bop1502
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
