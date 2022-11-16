; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1344 = alloca i64
  %_argv1346 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1346
  store i64 %argc, i64* %_argc1344
  %_raw_array1349 = call i64* @oat_alloc_array(i64 2)
  %_array1350 = bitcast i64* %_raw_array1349 to { i64, [0 x i64] }*
  %_gep1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1351
  %_gep1353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1350, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1353
  %_raw_array1355 = call i64* @oat_alloc_array(i64 2)
  %_array1356 = bitcast i64* %_raw_array1355 to { i64, [0 x i64] }*
  %_gep1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1357
  %_gep1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1359
  %_raw_array1361 = call i64* @oat_alloc_array(i64 2)
  %_array1362 = bitcast i64* %_raw_array1361 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1363 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1362, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1350, { i64, [0 x i64] }** %_gep1363
  %_gep1365 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1362, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1356, { i64, [0 x i64] }** %_gep1365
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1362, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1372 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr1370 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1372, i32 0, i32 1, i32 1
  %_resPtr1371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1370
  %_ptr1368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1371, i32 0, i32 1, i32 1
  %_resPtr1369 = load i64, i64* %_ptr1368
  ret i64 %_resPtr1369
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
