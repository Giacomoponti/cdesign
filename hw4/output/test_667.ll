; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1370 = alloca i64
  %_argv1372 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1372
  store i64 %argc, i64* %_argc1370
  %_raw_array1375 = call i64* @oat_alloc_array(i64 2)
  %_array1376 = bitcast i64* %_raw_array1375 to { i64, [0 x i64] }*
  %_gep1377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1376, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1377
  %_gep1379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1376, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1379
  %_raw_array1381 = call i64* @oat_alloc_array(i64 2)
  %_array1382 = bitcast i64* %_raw_array1381 to { i64, [0 x i64] }*
  %_gep1383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1382, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1383
  %_gep1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1382, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1385
  %_raw_array1387 = call i64* @oat_alloc_array(i64 2)
  %_array1388 = bitcast i64* %_raw_array1387 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1389 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1376, { i64, [0 x i64] }** %_gep1389
  %_gep1391 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1382, { i64, [0 x i64] }** %_gep1391
  %_raw_array1393 = call i64* @oat_alloc_array(i64 1)
  %_array1394 = bitcast i64* %_raw_array1393 to { i64, [0 x i64] }*
  %_gep1395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1395
  %_raw_array1397 = call i64* @oat_alloc_array(i64 1)
  %_array1398 = bitcast i64* %_raw_array1397 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1399 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1398, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1394, { i64, [0 x i64] }** %_gep1399
  %_raw_array1401 = call i64* @oat_alloc_array(i64 2)
  %_array1402 = bitcast i64* %_raw_array1401 to { i64, [0 x i64] }*
  %_gep1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep1403
  %_gep1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep1405
  %_raw_array1407 = call i64* @oat_alloc_array(i64 2)
  %_array1408 = bitcast i64* %_raw_array1407 to { i64, [0 x i64] }*
  %_gep1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep1409
  %_gep1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep1411
  %_raw_array1413 = call i64* @oat_alloc_array(i64 2)
  %_array1414 = bitcast i64* %_raw_array1413 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1414, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %_gep1415
  %_gep1417 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1414, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1408, { i64, [0 x i64] }** %_gep1417
  %_raw_array1419 = call i64* @oat_alloc_array(i64 3)
  %_array1420 = bitcast i64* %_raw_array1419 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep1421 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1420, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1421
  %_gep1423 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1420, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1398, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1423
  %_gep1425 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1420, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1414, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1425
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1420, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1434 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr1432 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1434, i32 0, i32 1, i32 2
  %_resPtr1433 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1432
  %_ptr1430 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr1433, i32 0, i32 1, i32 0
  %_resPtr1431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1430
  %_ptr1428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1431, i32 0, i32 1, i32 1
  %_resPtr1429 = load i64, i64* %_ptr1428
  ret i64 %_resPtr1429
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
