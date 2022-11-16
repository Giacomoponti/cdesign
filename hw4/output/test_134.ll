; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a1435 = load i64, i64* @a
  %_bop1436 = add i64 %_a1435, 1
  store i64 %_bop1436, i64* @a
  %_a1438 = load i64, i64* @a
  ret i64 %_a1438
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1418 = alloca { i64, [0 x i64] }*
  %_id1415 = call i64 @f()
  %_raw_array1416 = call i64* @oat_alloc_array(i64 %_id1415)
  %_array1417 = bitcast i64* %_raw_array1416 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1417, { i64, [0 x i64] }** %_b1418
  %_b1420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1418
  %_ptr1421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1420, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr1421
  %_b1423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1418
  %_ptr1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1423, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr1424
  %_a1426 = load i64, i64* @a
  %_b1429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1418
  %_ptr1427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1429, i32 0, i32 1, i32 0
  %_resPtr1428 = load i64, i64* %_ptr1427
  %_bop1430 = add i64 %_a1426, %_resPtr1428
  %_b1433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1418
  %_ptr1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1433, i32 0, i32 1, i32 1
  %_resPtr1432 = load i64, i64* %_ptr1431
  %_bop1434 = add i64 %_bop1430, %_resPtr1432
  ret i64 %_bop1434
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
