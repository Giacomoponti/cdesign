; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1396 = alloca i64
  %_argv1398 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1398
  store i64 %argc, i64* %_argc1396
  %_raw_array1401 = call i64* @oat_alloc_array(i64 2)
  %_array1402 = bitcast i64* %_raw_array1401 to { i64, [0 x i64] }*
  %_gep1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1403
  %_gep1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1405
  %_raw_array1407 = call i64* @oat_alloc_array(i64 2)
  %_array1408 = bitcast i64* %_raw_array1407 to { i64, [0 x i64] }*
  %_gep1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1409
  %_gep1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1411
  %_raw_array1413 = call i64* @oat_alloc_array(i64 2)
  %_array1414 = bitcast i64* %_raw_array1413 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1414, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %_gep1415
  %_gep1417 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1414, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1408, { i64, [0 x i64] }** %_gep1417
  %_raw_array1419 = call i64* @oat_alloc_array(i64 1)
  %_array1420 = bitcast i64* %_raw_array1419 to { i64, [0 x i64] }*
  %_gep1421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1420, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1421
  %_raw_array1423 = call i64* @oat_alloc_array(i64 1)
  %_array1424 = bitcast i64* %_raw_array1423 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1425 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1424, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1420, { i64, [0 x i64] }** %_gep1425
  %_raw_array1427 = call i64* @oat_alloc_array(i64 2)
  %_array1428 = bitcast i64* %_raw_array1427 to { i64, [0 x i64] }*
  %_gep1429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1428, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep1429
  %_gep1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1428, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep1431
  %_raw_array1433 = call i64* @oat_alloc_array(i64 2)
  %_array1434 = bitcast i64* %_raw_array1433 to { i64, [0 x i64] }*
  %_gep1435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep1435
  %_gep1437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1434, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep1437
  %_raw_array1439 = call i64* @oat_alloc_array(i64 2)
  %_array1440 = bitcast i64* %_raw_array1439 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1441 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1428, { i64, [0 x i64] }** %_gep1441
  %_gep1443 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1434, { i64, [0 x i64] }** %_gep1443
  %_raw_array1445 = call i64* @oat_alloc_array(i64 3)
  %_array1446 = bitcast i64* %_raw_array1445 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep1447 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1446, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1414, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1447
  %_gep1449 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1446, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1424, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1449
  %_gep1451 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1446, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1451
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1446, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1460 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr1458 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1460, i32 0, i32 1, i32 2
  %_resPtr1459 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1458
  %_ptr1456 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr1459, i32 0, i32 1, i32 0
  %_resPtr1457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1456
  %_ptr1454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1457, i32 0, i32 1, i32 1
  %_resPtr1455 = load i64, i64* %_ptr1454
  ret i64 %_resPtr1455
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
