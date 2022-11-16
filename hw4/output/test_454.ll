; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1387 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1387
  %_arr1389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1388
  ret { i64, [0 x i64] }* %_arr1389
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1375 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1381 = alloca { i64, [0 x i64] }*
  %_argc1348 = alloca i64
  %_argv1350 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1350
  store i64 %argc, i64* %_argc1348
  %_raw_array1353 = call i64* @oat_alloc_array(i64 3)
  %_array1354 = bitcast i64* %_raw_array1353 to { i64, [0 x i64] }*
  %_gep1355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1354, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1355
  %_gep1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1354, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1357
  %_gep1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1354, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1359
  %_raw_array1361 = call i64* @oat_alloc_array(i64 3)
  %_array1362 = bitcast i64* %_raw_array1361 to { i64, [0 x i64] }*
  %_gep1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1362, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep1363
  %_gep1365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1362, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep1365
  %_gep1367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1362, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep1367
  %_raw_array1369 = call i64* @oat_alloc_array(i64 2)
  %_array1370 = bitcast i64* %_raw_array1369 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1370, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1354, { i64, [0 x i64] }** %_gep1371
  %_gep1373 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1370, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1362, { i64, [0 x i64] }** %_gep1373
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1370, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1375
  %_garr1379 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1375
  %_ptr1377 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1379, i32 0, i32 1, i32 1
  %_resPtr1378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1377
  %_id1380 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_resPtr1378)
  store { i64, [0 x i64] }* %_id1380, { i64, [0 x i64] }** %_arr1381
  %_arr1385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1381
  %_ptr1383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1385, i32 0, i32 1, i32 1
  %_resPtr1384 = load i64, i64* %_ptr1383
  ret i64 %_resPtr1384
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
