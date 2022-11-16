; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r1292 = alloca i64
  %_x1287 = alloca i64
  %_y1289 = alloca i64
  store i64 %y, i64* %_y1289
  store i64 %x, i64* %_x1287
  store i64 0, i64* %_r1292
  %_x1294 = load i64, i64* %_x1290
  %_bop1295 = icmp sge i64 %_x1294, 1
  br i1 %_bop1295, label %_if1298, label %_else1297
_if1298:
  %_x1304 = load i64, i64* %_x1290
  %_bop1305 = sub i64 %_x1304, 1
  %_y1306 = load i64, i64* %_y1291
  %_id1307 = call i64 @f(i64 %_bop1305, i64 %_y1306)
  %_bop1308 = add i64 1, %_id1307
  store i64 %_bop1308, i64* %_r1292
  br label %_after1296
_else1297:
  %_x1300 = load i64, i64* %_x1290
  %_y1301 = load i64, i64* %_y1291
  %_bop1302 = add i64 %_x1300, %_y1301
  store i64 %_bop1302, i64* %_r1292
  br label %_after1296
_after1296:
  %_r1310 = load i64, i64* %_r1292
  ret i64 %_r1310
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1277 = alloca i64
  %_y1279 = alloca i64
  %_argc1272 = alloca i64
  %_argv1274 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1274
  store i64 %argc, i64* %_argc1272
  store i64 3, i64* %_x1277
  store i64 3, i64* %_y1279
  %_x1281 = load i64, i64* %_x1277
  %_y1282 = load i64, i64* %_y1279
  %_id1283 = call i64 @f(i64 %_x1281, i64 %_y1282)
  %_i1284 = load i64, i64* @i
  %_bop1285 = add i64 %_id1283, %_i1284
  ret i64 %_bop1285
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
