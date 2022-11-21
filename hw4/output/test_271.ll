; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1406 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1406
  %_arr1407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1406
  ret { i64, [0 x i64] }* %_arr1407
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1394 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1400 = alloca { i64, [0 x i64] }*
  %_argc1369 = alloca i64
  store i64 %argc, i64* %_argc1369
  %_argv1371 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1371
  %_raw_array1372 = call i64* @oat_alloc_array(i64 3)
  %_array1373 = bitcast i64* %_raw_array1372 to { i64, [0 x i64] }*
  %_gep1374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1374
  %_gep1376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1376
  %_gep1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1373, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1378
  %_raw_array1380 = call i64* @oat_alloc_array(i64 3)
  %_array1381 = bitcast i64* %_raw_array1380 to { i64, [0 x i64] }*
  %_gep1382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep1382
  %_gep1384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep1384
  %_gep1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep1386
  %_raw_array1388 = call i64* @oat_alloc_array(i64 2)
  %_array1389 = bitcast i64* %_raw_array1388 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1390 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1389, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1373, { i64, [0 x i64] }** %_gep1390
  %_gep1392 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1389, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1381, { i64, [0 x i64] }** %_gep1392
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1389, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1394
  %_garr1398 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1394
  %_ptr1396 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1398, i32 0, i32 1, i32 1
  %_resPtr1397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1396
  %_1399 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_resPtr1397)
  store { i64, [0 x i64] }* %_1399, { i64, [0 x i64] }** %_arr1400
  %_arr1404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1400
  %_ptr1402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1404, i32 0, i32 1, i32 1
  %_resPtr1403 = load i64, i64* %_ptr1402
  ret i64 %_resPtr1403
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
