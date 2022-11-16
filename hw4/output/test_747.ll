; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1388 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1365 = alloca i64
  %_argv1367 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1367
  store i64 %argc, i64* %_argc1365
  %_raw_array1370 = call i64* @oat_alloc_array(i64 2)
  %_array1371 = bitcast i64* %_raw_array1370 to { i64, [0 x i64] }*
  %_gep1372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1371, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1372
  %_gep1374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1371, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1374
  %_raw_array1376 = call i64* @oat_alloc_array(i64 2)
  %_array1377 = bitcast i64* %_raw_array1376 to { i64, [0 x i64] }*
  %_gep1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1377, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1378
  %_gep1380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1377, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1380
  %_raw_array1382 = call i64* @oat_alloc_array(i64 2)
  %_array1383 = bitcast i64* %_raw_array1382 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1384 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1383, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1371, { i64, [0 x i64] }** %_gep1384
  %_gep1386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1383, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1377, { i64, [0 x i64] }** %_gep1386
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1383, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1388
  %_arr1394 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1388
  %_ptr1392 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1394, i32 0, i32 1, i32 0
  %_resPtr1393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1392
  %_ptr1390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1393, i32 0, i32 1, i32 0
  %_resPtr1391 = load i64, i64* %_ptr1390
  ret i64 %_resPtr1391
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
