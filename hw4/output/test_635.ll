; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1329 = alloca { i64, [0 x i64] }*
  %_raw_array1307 = call i64* @oat_alloc_array(i64 10)
  %_array1308 = bitcast i64* %_raw_array1307 to { i64, [0 x i64] }*
  %_gep1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep1309
  %_gep1311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep1311
  %_gep1313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep1313
  %_gep1315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep1315
  %_gep1317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep1317
  %_gep1319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep1319
  %_gep1321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep1321
  %_gep1323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep1323
  %_gep1325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep1325
  %_gep1327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep1327
  store { i64, [0 x i64] }* %_array1308, { i64, [0 x i64] }** %_a1329
  %_a1331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1329
  %_id1332 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1331)
  call void @print_string(i8* %_id1332)
  ret i64 0
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
