; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1234 = alloca i64
  %_argv1236 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1236
  store i64 %argc, i64* %_argc1234
  %_raw_array1239 = call i64* @oat_alloc_array(i64 2)
  %_array1240 = bitcast i64* %_raw_array1239 to { i64, [0 x i64] }*
  %_gep1241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1241
  %_gep1243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1243
  %_raw_array1245 = call i64* @oat_alloc_array(i64 2)
  %_array1246 = bitcast i64* %_raw_array1245 to { i64, [0 x i64] }*
  %_gep1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1246, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1247
  %_gep1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1246, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1249
  %_raw_array1251 = call i64* @oat_alloc_array(i64 2)
  %_array1252 = bitcast i64* %_raw_array1251 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1252, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1240, { i64, [0 x i64] }** %_gep1253
  %_gep1255 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1252, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1246, { i64, [0 x i64] }** %_gep1255
  %_raw_array1257 = call i64* @oat_alloc_array(i64 1)
  %_array1258 = bitcast i64* %_raw_array1257 to { i64, [0 x i64] }*
  %_gep1259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1258, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1259
  %_raw_array1261 = call i64* @oat_alloc_array(i64 1)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1262, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1258, { i64, [0 x i64] }** %_gep1263
  %_raw_array1265 = call i64* @oat_alloc_array(i64 2)
  %_array1266 = bitcast i64* %_raw_array1265 to { i64, [0 x i64] }*
  %_gep1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep1267
  %_gep1269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep1269
  %_raw_array1271 = call i64* @oat_alloc_array(i64 2)
  %_array1272 = bitcast i64* %_raw_array1271 to { i64, [0 x i64] }*
  %_gep1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1272, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep1273
  %_gep1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1272, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep1275
  %_raw_array1277 = call i64* @oat_alloc_array(i64 2)
  %_array1278 = bitcast i64* %_raw_array1277 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1279 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1278, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1266, { i64, [0 x i64] }** %_gep1279
  %_gep1281 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1278, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1272, { i64, [0 x i64] }** %_gep1281
  %_raw_array1283 = call i64* @oat_alloc_array(i64 3)
  %_array1284 = bitcast i64* %_raw_array1283 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep1285 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1284, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1252, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1285
  %_gep1287 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1284, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1262, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1287
  %_gep1289 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1284, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1278, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1289
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1284, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1298 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr1296 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1298, i32 0, i32 1, i32 2
  %_resPtr1297 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1296
  %_ptr1294 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr1297, i32 0, i32 1, i32 0
  %_resPtr1295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1294
  %_ptr1292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1295, i32 0, i32 1, i32 1
  %_resPtr1293 = load i64, i64* %_ptr1292
  ret i64 %_resPtr1293
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
