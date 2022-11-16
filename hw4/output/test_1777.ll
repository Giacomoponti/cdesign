; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1397 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1374
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1376
  %_argv1376 = alloca { i64, [0 x i8*] }*
  %_argc1374 = alloca i64
  %_raw_array1379 = call i64* @oat_alloc_array(i64 2)
  %_array1380 = bitcast i64* %_raw_array1379 to { i64, [0 x i64] }*
  %_gep1381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1380, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1381
  %_gep1383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1380, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1383
  %_raw_array1385 = call i64* @oat_alloc_array(i64 2)
  %_array1386 = bitcast i64* %_raw_array1385 to { i64, [0 x i64] }*
  %_gep1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1387
  %_gep1389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1389
  %_raw_array1391 = call i64* @oat_alloc_array(i64 2)
  %_array1392 = bitcast i64* %_raw_array1391 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1380, { i64, [0 x i64] }** %_gep1393
  %_gep1395 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1386, { i64, [0 x i64] }** %_gep1395
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1392, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1397
  %_arr1403 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1397
  %_ptr1401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1403, i32 0, i32 1, i32 0
  %_resPtr1402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1401
  %_ptr1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1402, i32 0, i32 1, i32 0
  %_resPtr1400 = load i64, i64* %_ptr1399
  ret i64 %_resPtr1400
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
