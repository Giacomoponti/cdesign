; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a1461 = load i64, i64* @a
  %_bop1462 = add i64 %_a1461, 1
  store i64 %_bop1462, i64* @a
  %_a1464 = load i64, i64* @a
  ret i64 %_a1464
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1442 = alloca { i64, [0 x i64] }*
  %_id1439 = call i64 @f()
  %_raw_array1440 = call i64* @oat_alloc_array(i64 %_id1439)
  %_array1441 = bitcast i64* %_raw_array1440 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1441, { i64, [0 x i64] }** %_b1442
  %_id1444 = call i64 @f()
  %_b1445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1442
  %_ptr1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1445, i32 0, i32 1, i32 0
  store i64 %_id1444, i64* %_ptr1446
  %_id1448 = call i64 @f()
  %_b1449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1442
  %_ptr1450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1449, i32 0, i32 1, i32 1
  store i64 %_id1448, i64* %_ptr1450
  %_a1452 = load i64, i64* @a
  %_b1455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1442
  %_ptr1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1455, i32 0, i32 1, i32 0
  %_resPtr1454 = load i64, i64* %_ptr1453
  %_bop1456 = add i64 %_a1452, %_resPtr1454
  %_b1459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1442
  %_ptr1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1459, i32 0, i32 1, i32 1
  %_resPtr1458 = load i64, i64* %_ptr1457
  %_bop1460 = add i64 %_bop1456, %_resPtr1458
  ret i64 %_bop1460
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
