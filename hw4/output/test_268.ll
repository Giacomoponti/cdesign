; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1261 = alloca i64
  store i64 %argc, i64* %_argc1261
  %_argv1263 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1263
  %_raw_array1264 = call i64* @oat_alloc_array(i64 2)
  %_array1265 = bitcast i64* %_raw_array1264 to { i64, [0 x i64] }*
  %_gep1266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1265, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1266
  %_gep1268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1265, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1268
  %_raw_array1270 = call i64* @oat_alloc_array(i64 2)
  %_array1271 = bitcast i64* %_raw_array1270 to { i64, [0 x i64] }*
  %_gep1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1271, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1272
  %_gep1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1271, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1274
  %_raw_array1276 = call i64* @oat_alloc_array(i64 2)
  %_array1277 = bitcast i64* %_raw_array1276 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1278 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1277, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1265, { i64, [0 x i64] }** %_gep1278
  %_gep1280 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1277, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1271, { i64, [0 x i64] }** %_gep1280
  %_raw_array1282 = call i64* @oat_alloc_array(i64 1)
  %_array1283 = bitcast i64* %_raw_array1282 to { i64, [0 x i64] }*
  %_gep1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1283, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1284
  %_raw_array1286 = call i64* @oat_alloc_array(i64 1)
  %_array1287 = bitcast i64* %_raw_array1286 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1288 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1287, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1283, { i64, [0 x i64] }** %_gep1288
  %_raw_array1290 = call i64* @oat_alloc_array(i64 2)
  %_array1291 = bitcast i64* %_raw_array1290 to { i64, [0 x i64] }*
  %_gep1292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1291, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep1292
  %_gep1294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1291, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep1294
  %_raw_array1296 = call i64* @oat_alloc_array(i64 2)
  %_array1297 = bitcast i64* %_raw_array1296 to { i64, [0 x i64] }*
  %_gep1298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1297, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep1298
  %_gep1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1297, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep1300
  %_raw_array1302 = call i64* @oat_alloc_array(i64 2)
  %_array1303 = bitcast i64* %_raw_array1302 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1304 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1303, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1291, { i64, [0 x i64] }** %_gep1304
  %_gep1306 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1303, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1297, { i64, [0 x i64] }** %_gep1306
  %_raw_array1308 = call i64* @oat_alloc_array(i64 3)
  %_array1309 = bitcast i64* %_raw_array1308 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep1310 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1309, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1277, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1310
  %_gep1312 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1309, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1287, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1312
  %_gep1314 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1309, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1303, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1314
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1309, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1323 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr1321 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1323, i32 0, i32 1, i32 2
  %_resPtr1322 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1321
  %_ptr1319 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr1322, i32 0, i32 1, i32 0
  %_resPtr1320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1319
  %_ptr1317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1320, i32 0, i32 1, i32 1
  %_resPtr1318 = load i64, i64* %_ptr1317
  ret i64 %_resPtr1318
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
