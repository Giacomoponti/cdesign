; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1340 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1317 = alloca i64
  %_argv1319 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1319
  store i64 %argc, i64* %_argc1317
  %_raw_array1322 = call i64* @oat_alloc_array(i64 2)
  %_array1323 = bitcast i64* %_raw_array1322 to { i64, [0 x i64] }*
  %_gep1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1324
  %_gep1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1326
  %_raw_array1328 = call i64* @oat_alloc_array(i64 2)
  %_array1329 = bitcast i64* %_raw_array1328 to { i64, [0 x i64] }*
  %_gep1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1330
  %_gep1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1332
  %_raw_array1334 = call i64* @oat_alloc_array(i64 2)
  %_array1335 = bitcast i64* %_raw_array1334 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1336 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1335, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1323, { i64, [0 x i64] }** %_gep1336
  %_gep1338 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1335, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1329, { i64, [0 x i64] }** %_gep1338
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1335, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1340
  %_arr1346 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1340
  %_ptr1344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1346, i32 0, i32 1, i32 1
  %_resPtr1345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1344
  %_ptr1342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1345, i32 0, i32 1, i32 1
  %_resPtr1343 = load i64, i64* %_ptr1342
  ret i64 %_resPtr1343
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
