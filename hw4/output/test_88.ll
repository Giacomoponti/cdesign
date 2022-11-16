; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a1477 = load i64, i64* @a
  %_bop1478 = add i64 %_a1477, 1
  store i64 %_bop1478, i64* @a
  %_a1480 = load i64, i64* @a
  ret i64 %_a1480
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1460 = alloca { i64, [0 x i64] }*
  %_id1457 = call i64 @f()
  %_raw_array1458 = call i64* @oat_alloc_array(i64 %_id1457)
  %_array1459 = bitcast i64* %_raw_array1458 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1459, { i64, [0 x i64] }** %_b1460
  %_b1462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1460
  %_ptr1463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1462, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr1463
  %_b1465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1460
  %_ptr1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1465, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr1466
  %_a1468 = load i64, i64* @a
  %_b1471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1460
  %_ptr1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1471, i32 0, i32 1, i32 0
  %_resPtr1470 = load i64, i64* %_ptr1469
  %_bop1472 = add i64 %_a1468, %_resPtr1470
  %_b1475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1460
  %_ptr1473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1475, i32 0, i32 1, i32 1
  %_resPtr1474 = load i64, i64* %_ptr1473
  %_bop1476 = add i64 %_bop1472, %_resPtr1474
  ret i64 %_bop1476
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
