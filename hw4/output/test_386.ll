; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1230 = alloca i64
  %_argv1232 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1232
  store i64 %argc, i64* %_argc1230
  %_raw_array1235 = call i64* @oat_alloc_array(i64 2)
  %_array1236 = bitcast i64* %_raw_array1235 to { i64, [0 x i64] }*
  %_gep1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1237
  %_gep1239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1239
  %_raw_array1241 = call i64* @oat_alloc_array(i64 2)
  %_array1242 = bitcast i64* %_raw_array1241 to { i64, [0 x i64] }*
  %_gep1243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1243
  %_gep1245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1245
  %_raw_array1247 = call i64* @oat_alloc_array(i64 2)
  %_array1248 = bitcast i64* %_raw_array1247 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1249 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1248, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1236, { i64, [0 x i64] }** %_gep1249
  %_gep1251 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1248, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1242, { i64, [0 x i64] }** %_gep1251
  %_raw_array1253 = call i64* @oat_alloc_array(i64 1)
  %_array1254 = bitcast i64* %_raw_array1253 to { i64, [0 x i64] }*
  %_gep1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep1255
  %_raw_array1257 = call i64* @oat_alloc_array(i64 1)
  %_array1258 = bitcast i64* %_raw_array1257 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1259 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1254, { i64, [0 x i64] }** %_gep1259
  %_raw_array1261 = call i64* @oat_alloc_array(i64 2)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x i64] }*
  %_gep1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep1263
  %_gep1265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep1265
  %_raw_array1267 = call i64* @oat_alloc_array(i64 2)
  %_array1268 = bitcast i64* %_raw_array1267 to { i64, [0 x i64] }*
  %_gep1269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1268, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep1269
  %_gep1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1268, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep1271
  %_raw_array1273 = call i64* @oat_alloc_array(i64 2)
  %_array1274 = bitcast i64* %_raw_array1273 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1275 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1274, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1262, { i64, [0 x i64] }** %_gep1275
  %_gep1277 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1274, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1268, { i64, [0 x i64] }** %_gep1277
  %_raw_array1279 = call i64* @oat_alloc_array(i64 3)
  %_array1280 = bitcast i64* %_raw_array1279 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep1281 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1280, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1248, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1281
  %_gep1283 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1280, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1283
  %_gep1285 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1280, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1274, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1285
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1280, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1294 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr1292 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1294, i32 0, i32 1, i32 2
  %_resPtr1293 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1292
  %_ptr1290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr1293, i32 0, i32 1, i32 0
  %_resPtr1291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1290
  %_ptr1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1291, i32 0, i32 1, i32 1
  %_resPtr1289 = load i64, i64* %_ptr1288
  ret i64 %_resPtr1289
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
