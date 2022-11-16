; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x1268 = alloca i64
  store i64 %x, i64* %_x1268
  %_x1270 = load i64, i64* %_x1269
  ret i64 %_x1270
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y1262 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y1262
  %_y1266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1263
  %_ptr1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1266, i32 0, i32 1, i32 2
  %_resPtr1265 = load i64, i64* %_ptr1264
  ret i64 %_resPtr1265
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1211 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1223 = alloca { i64, [0 x i64] }*
  %_p1225 = alloca i64
  %_j1227 = alloca i64
  %_argc1188 = alloca i64
  %_argv1190 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1190
  store i64 %argc, i64* %_argc1188
  %_raw_array1193 = call i64* @oat_alloc_array(i64 2)
  %_array1194 = bitcast i64* %_raw_array1193 to { i64, [0 x i64] }*
  %_gep1195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1194, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1195
  %_gep1197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1194, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1197
  %_raw_array1199 = call i64* @oat_alloc_array(i64 2)
  %_array1200 = bitcast i64* %_raw_array1199 to { i64, [0 x i64] }*
  %_gep1201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1200, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1201
  %_gep1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1200, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1203
  %_raw_array1205 = call i64* @oat_alloc_array(i64 2)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1207 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1194, { i64, [0 x i64] }** %_gep1207
  %_gep1209 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1200, { i64, [0 x i64] }** %_gep1209
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1211
  %_raw_array1213 = call i64* @oat_alloc_array(i64 4)
  %_array1214 = bitcast i64* %_raw_array1213 to { i64, [0 x i64] }*
  %_gep1215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1215
  %_gep1217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1217
  %_gep1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1219
  %_gep1221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep1221
  store { i64, [0 x i64] }* %_array1214, { i64, [0 x i64] }** %_arr1223
  store i64 0, i64* %_p1225
  store i64 0, i64* %_j1227
  br label %_pre1232
_pre1232:
  %_j1229 = load i64, i64* %_j1227
  %_bop1230 = icmp slt i64 %_j1229, 100
  %_cnd1234 = icmp eq i1 %_bop1230, 0
  br i1 %_cnd1234, label %_post1231, label %_body1233
_body1233:
  %_p1235 = load i64, i64* %_p1225
  %_bop1236 = add i64 %_p1235, 1
  store i64 %_bop1236, i64* %_p1225
  %_j1238 = load i64, i64* %_j1227
  %_bop1239 = add i64 %_j1238, 1
  store i64 %_bop1239, i64* %_j1227
  br label %_pre1232
_post1231:
  %_arr1241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1223
  %_id1242 = call i64 @g({ i64, [0 x i64] }* %_arr1241)
  %_i1243 = load i64, i64* @i
  %_id1244 = call i64 @f(i64 %_i1243)
  %_bop1245 = add i64 %_id1242, %_id1244
  %_arr1248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1223
  %_ptr1246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1248, i32 0, i32 1, i32 3
  %_resPtr1247 = load i64, i64* %_ptr1246
  %_id1249 = call i64 @f(i64 %_resPtr1247)
  %_bop1250 = add i64 %_bop1245, %_id1249
  %_garr1255 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1211
  %_ptr1253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1255, i32 0, i32 1, i32 1
  %_resPtr1254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1253
  %_ptr1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1254, i32 0, i32 1, i32 1
  %_resPtr1252 = load i64, i64* %_ptr1251
  %_id1256 = call i64 @f(i64 %_resPtr1252)
  %_bop1257 = add i64 %_bop1250, %_id1256
  %_p1258 = load i64, i64* %_p1225
  %_id1259 = call i64 @f(i64 %_p1258)
  %_bop1260 = add i64 %_bop1257, %_id1259
  ret i64 %_bop1260
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
