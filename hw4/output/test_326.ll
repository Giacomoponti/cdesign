; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1336 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1313
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1315
  %_argv1315 = alloca { i64, [0 x i8*] }*
  %_argc1313 = alloca i64
  %_raw_array1318 = call i64* @oat_alloc_array(i64 2)
  %_array1319 = bitcast i64* %_raw_array1318 to { i64, [0 x i64] }*
  %_gep1320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1319, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1320
  %_gep1322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1319, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1322
  %_raw_array1324 = call i64* @oat_alloc_array(i64 2)
  %_array1325 = bitcast i64* %_raw_array1324 to { i64, [0 x i64] }*
  %_gep1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1325, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1326
  %_gep1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1325, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1328
  %_raw_array1330 = call i64* @oat_alloc_array(i64 2)
  %_array1331 = bitcast i64* %_raw_array1330 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1332 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1331, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1319, { i64, [0 x i64] }** %_gep1332
  %_gep1334 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1331, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1325, { i64, [0 x i64] }** %_gep1334
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1331, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1336
  %_arr1342 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1336
  %_ptr1340 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1342, i32 0, i32 1, i32 1
  %_resPtr1341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1340
  %_ptr1338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1341, i32 0, i32 1, i32 1
  %_resPtr1339 = load i64, i64* %_ptr1338
  ret i64 %_resPtr1339
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
