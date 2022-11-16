; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1335 = alloca i64
  %_argv1337 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1337
  store i64 %argc, i64* %_argc1335
  %_raw_array1340 = call i64* @oat_alloc_array(i64 2)
  %_array1341 = bitcast i64* %_raw_array1340 to { i64, [0 x i64] }*
  %_gep1342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1341, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1342
  %_gep1344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1341, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1344
  %_raw_array1346 = call i64* @oat_alloc_array(i64 2)
  %_array1347 = bitcast i64* %_raw_array1346 to { i64, [0 x i64] }*
  %_gep1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1347, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1348
  %_gep1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1347, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1350
  %_raw_array1352 = call i64* @oat_alloc_array(i64 2)
  %_array1353 = bitcast i64* %_raw_array1352 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1354 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1353, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1341, { i64, [0 x i64] }** %_gep1354
  %_gep1356 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1353, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1347, { i64, [0 x i64] }** %_gep1356
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1353, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1363 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr1361 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1363, i32 0, i32 1, i32 1
  %_resPtr1362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1361
  %_ptr1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1362, i32 0, i32 1, i32 1
  %_resPtr1360 = load i64, i64* %_ptr1359
  ret i64 %_resPtr1360
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
