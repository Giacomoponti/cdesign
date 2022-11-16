; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x1259 = alloca i64
  store i64 %x, i64* %_x1259
  %_x1261 = load i64, i64* %_x1260
  ret i64 %_x1261
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y1253 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y1253
  %_y1257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1254
  %_ptr1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1257, i32 0, i32 1, i32 2
  %_resPtr1256 = load i64, i64* %_ptr1255
  ret i64 %_resPtr1256
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1202 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1214 = alloca { i64, [0 x i64] }*
  %_p1216 = alloca i64
  %_j1218 = alloca i64
  %_argc1179 = alloca i64
  %_argv1181 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1181
  store i64 %argc, i64* %_argc1179
  %_raw_array1184 = call i64* @oat_alloc_array(i64 2)
  %_array1185 = bitcast i64* %_raw_array1184 to { i64, [0 x i64] }*
  %_gep1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1186
  %_gep1188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1188
  %_raw_array1190 = call i64* @oat_alloc_array(i64 2)
  %_array1191 = bitcast i64* %_raw_array1190 to { i64, [0 x i64] }*
  %_gep1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1191, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1192
  %_gep1194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1191, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1194
  %_raw_array1196 = call i64* @oat_alloc_array(i64 2)
  %_array1197 = bitcast i64* %_raw_array1196 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1185, { i64, [0 x i64] }** %_gep1198
  %_gep1200 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1191, { i64, [0 x i64] }** %_gep1200
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1202
  %_raw_array1204 = call i64* @oat_alloc_array(i64 4)
  %_array1205 = bitcast i64* %_raw_array1204 to { i64, [0 x i64] }*
  %_gep1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1206
  %_gep1208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1208
  %_gep1210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1210
  %_gep1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep1212
  store { i64, [0 x i64] }* %_array1205, { i64, [0 x i64] }** %_arr1214
  store i64 0, i64* %_p1216
  store i64 0, i64* %_j1218
  br label %_pre1223
_pre1223:
  %_cnd1225 = icmp eq i1 %_bop1221, 0
  br i1 %_cnd1225, label %_post1222, label %_body1224
_body1224:
  %_j1220 = load i64, i64* %_j1218
  %_bop1221 = icmp slt i64 %_j1220, 100
  %_p1226 = load i64, i64* %_p1216
  %_bop1227 = add i64 %_p1226, 1
  store i64 %_bop1227, i64* %_p1216
  %_j1229 = load i64, i64* %_j1218
  %_bop1230 = add i64 %_j1229, 1
  store i64 %_bop1230, i64* %_j1218
  br label %_pre1223
_post1222:
  %_arr1232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1214
  %_id1233 = call i64 @g({ i64, [0 x i64] }* %_arr1232)
  %_i1234 = load i64, i64* @i
  %_id1235 = call i64 @f(i64 %_i1234)
  %_bop1236 = add i64 %_id1233, %_id1235
  %_arr1239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1214
  %_ptr1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1239, i32 0, i32 1, i32 3
  %_resPtr1238 = load i64, i64* %_ptr1237
  %_id1240 = call i64 @f(i64 %_resPtr1238)
  %_bop1241 = add i64 %_bop1236, %_id1240
  %_garr1246 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1202
  %_ptr1244 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1246, i32 0, i32 1, i32 1
  %_resPtr1245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1244
  %_ptr1242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1245, i32 0, i32 1, i32 1
  %_resPtr1243 = load i64, i64* %_ptr1242
  %_id1247 = call i64 @f(i64 %_resPtr1243)
  %_bop1248 = add i64 %_bop1241, %_id1247
  %_p1249 = load i64, i64* %_p1216
  %_id1250 = call i64 @f(i64 %_p1249)
  %_bop1251 = add i64 %_bop1248, %_id1250
  ret i64 %_bop1251
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
