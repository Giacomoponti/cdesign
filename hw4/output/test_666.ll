; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1362 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1339 = alloca i64
  %_argv1341 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1341
  store i64 %argc, i64* %_argc1339
  %_raw_array1344 = call i64* @oat_alloc_array(i64 2)
  %_array1345 = bitcast i64* %_raw_array1344 to { i64, [0 x i64] }*
  %_gep1346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1345, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1346
  %_gep1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1345, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1348
  %_raw_array1350 = call i64* @oat_alloc_array(i64 2)
  %_array1351 = bitcast i64* %_raw_array1350 to { i64, [0 x i64] }*
  %_gep1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1352
  %_gep1354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1351, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1354
  %_raw_array1356 = call i64* @oat_alloc_array(i64 2)
  %_array1357 = bitcast i64* %_raw_array1356 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1358 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1357, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1345, { i64, [0 x i64] }** %_gep1358
  %_gep1360 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1357, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1351, { i64, [0 x i64] }** %_gep1360
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1357, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1362
  %_arr1368 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1362
  %_ptr1366 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1368, i32 0, i32 1, i32 0
  %_resPtr1367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1366
  %_ptr1364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1367, i32 0, i32 1, i32 0
  %_resPtr1365 = load i64, i64* %_ptr1364
  ret i64 %_resPtr1365
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
