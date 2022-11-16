; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1383 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1383
  %_arr1385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1384
  ret { i64, [0 x i64] }* %_arr1385
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1371 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1377 = alloca { i64, [0 x i64] }*
  %_argc1344 = alloca i64
  %_argv1346 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1346
  store i64 %argc, i64* %_argc1344
  %_raw_array1349 = call i64* @oat_alloc_array(i64 3)
  %_array1350 = bitcast i64* %_raw_array1349 to { i64, [0 x i64] }*
  %_gep1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1351
  %_gep1353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1353
  %_gep1355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1355
  %_raw_array1357 = call i64* @oat_alloc_array(i64 3)
  %_array1358 = bitcast i64* %_raw_array1357 to { i64, [0 x i64] }*
  %_gep1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep1359
  %_gep1361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep1361
  %_gep1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep1363
  %_raw_array1365 = call i64* @oat_alloc_array(i64 2)
  %_array1366 = bitcast i64* %_raw_array1365 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1367 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1366, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1350, { i64, [0 x i64] }** %_gep1367
  %_gep1369 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1366, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1358, { i64, [0 x i64] }** %_gep1369
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1366, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1371
  %_garr1375 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1371
  %_ptr1373 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1375, i32 0, i32 1, i32 1
  %_resPtr1374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1373
  %_id1376 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_resPtr1374)
  store { i64, [0 x i64] }* %_id1376, { i64, [0 x i64] }** %_arr1377
  %_arr1381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1377
  %_ptr1379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1381, i32 0, i32 1, i32 1
  %_resPtr1380 = load i64, i64* %_ptr1379
  ret i64 %_resPtr1380
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
