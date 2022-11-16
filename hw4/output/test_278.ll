; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a1486 = load i64, i64* @a
  %_bop1487 = add i64 %_a1486, 1
  store i64 %_bop1487, i64* @a
  %_a1489 = load i64, i64* @a
  ret i64 %_a1489
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1469 = alloca { i64, [0 x i64] }*
  %_id1466 = call i64 @f()
  %_raw_array1467 = call i64* @oat_alloc_array(i64 %_id1466)
  %_array1468 = bitcast i64* %_raw_array1467 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1468, { i64, [0 x i64] }** %_b1469
  %_b1471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1469
  %_ptr1472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1471, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr1472
  %_b1474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1469
  %_ptr1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1474, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr1475
  %_a1477 = load i64, i64* @a
  %_b1480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1469
  %_ptr1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1480, i32 0, i32 1, i32 0
  %_resPtr1479 = load i64, i64* %_ptr1478
  %_bop1481 = add i64 %_a1477, %_resPtr1479
  %_b1484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1469
  %_ptr1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1484, i32 0, i32 1, i32 1
  %_resPtr1483 = load i64, i64* %_ptr1482
  %_bop1485 = add i64 %_bop1481, %_resPtr1483
  ret i64 %_bop1485
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
