; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1361 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1340 = alloca i64
  store i64 %argc, i64* %_argc1340
  %_argv1342 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1342
  %_raw_array1343 = call i64* @oat_alloc_array(i64 2)
  %_array1344 = bitcast i64* %_raw_array1343 to { i64, [0 x i64] }*
  %_gep1345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1345
  %_gep1347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1347
  %_raw_array1349 = call i64* @oat_alloc_array(i64 2)
  %_array1350 = bitcast i64* %_raw_array1349 to { i64, [0 x i64] }*
  %_gep1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1351
  %_gep1353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1353
  %_raw_array1355 = call i64* @oat_alloc_array(i64 2)
  %_array1356 = bitcast i64* %_raw_array1355 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1357 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1356, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1344, { i64, [0 x i64] }** %_gep1357
  %_gep1359 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1356, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1350, { i64, [0 x i64] }** %_gep1359
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1356, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1361
  %_arr1367 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1361
  %_ptr1365 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1367, i32 0, i32 1, i32 1
  %_resPtr1366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1365
  %_ptr1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1366, i32 0, i32 1, i32 1
  %_resPtr1364 = load i64, i64* %_ptr1363
  ret i64 %_resPtr1364
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
