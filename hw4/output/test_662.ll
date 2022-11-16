; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r1257 = alloca i64
  %_x1252 = alloca i64
  %_y1254 = alloca i64
  store i64 %y, i64* %_y1254
  store i64 %x, i64* %_x1252
  store i64 0, i64* %_r1257
  %_x1259 = load i64, i64* %_x1255
  %_bop1260 = icmp sge i64 %_x1259, 1
  br i1 %_bop1260, label %_if1263, label %_else1262
_if1263:
  %_x1269 = load i64, i64* %_x1255
  %_bop1270 = sub i64 %_x1269, 1
  %_y1271 = load i64, i64* %_y1256
  %_id1272 = call i64 @f(i64 %_bop1270, i64 %_y1271)
  %_bop1273 = add i64 1, %_id1272
  store i64 %_bop1273, i64* %_r1257
  br label %_after1261
_else1262:
  %_x1265 = load i64, i64* %_x1255
  %_y1266 = load i64, i64* %_y1256
  %_bop1267 = add i64 %_x1265, %_y1266
  store i64 %_bop1267, i64* %_r1257
  br label %_after1261
_after1261:
  %_r1275 = load i64, i64* %_r1257
  ret i64 %_r1275
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1242 = alloca i64
  %_y1244 = alloca i64
  %_argc1237 = alloca i64
  %_argv1239 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1239
  store i64 %argc, i64* %_argc1237
  store i64 3, i64* %_x1242
  store i64 3, i64* %_y1244
  %_x1246 = load i64, i64* %_x1242
  %_y1247 = load i64, i64* %_y1244
  %_id1248 = call i64 @f(i64 %_x1246, i64 %_y1247)
  %_i1249 = load i64, i64* @i
  %_bop1250 = add i64 %_id1248, %_i1249
  ret i64 %_bop1250
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
