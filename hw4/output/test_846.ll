; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r1283 = alloca i64
  %_x1278 = alloca i64
  %_y1280 = alloca i64
  store i64 %y, i64* %_y1280
  store i64 %x, i64* %_x1278
  store i64 0, i64* %_r1283
  %_x1285 = load i64, i64* %_x1281
  %_bop1286 = icmp sge i64 %_x1285, 1
  br i1 %_bop1286, label %_if1289, label %_else1288
_if1289:
  %_x1295 = load i64, i64* %_x1281
  %_bop1296 = sub i64 %_x1295, 1
  %_y1297 = load i64, i64* %_y1282
  %_id1298 = call i64 @f(i64 %_bop1296, i64 %_y1297)
  %_bop1299 = add i64 1, %_id1298
  store i64 %_bop1299, i64* %_r1283
  br label %_after1287
_else1288:
  %_x1291 = load i64, i64* %_x1281
  %_y1292 = load i64, i64* %_y1282
  %_bop1293 = add i64 %_x1291, %_y1292
  store i64 %_bop1293, i64* %_r1283
  br label %_after1287
_after1287:
  %_r1301 = load i64, i64* %_r1283
  ret i64 %_r1301
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1268 = alloca i64
  %_y1270 = alloca i64
  %_argc1263 = alloca i64
  %_argv1265 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1265
  store i64 %argc, i64* %_argc1263
  store i64 3, i64* %_x1268
  store i64 3, i64* %_y1270
  %_x1272 = load i64, i64* %_x1268
  %_y1273 = load i64, i64* %_y1270
  %_id1274 = call i64 @f(i64 %_x1272, i64 %_y1273)
  %_i1275 = load i64, i64* @i
  %_bop1276 = add i64 %_id1274, %_i1275
  ret i64 %_bop1276
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
