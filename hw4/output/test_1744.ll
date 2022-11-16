; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x407
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y409
  store i1 %b, i1* %_b411
  %_b411 = alloca i1
  %_y409 = alloca { i64, [0 x i64] }*
  %_x407 = alloca { i64, [0 x i64] }*
  %_b415 = load i1, i1* %_b414
  br i1 %_b415, label %_if418, label %_else417
_if418:
  %_x421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x412
  ret { i64, [0 x i64] }* %_x421
_else417:
  %_y420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y413
  ret { i64, [0 x i64] }* %_y420
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x359 = alloca { i64, [0 x i64] }*
  %_i361 = alloca i64
  %_y379 = alloca { i64, [0 x i64] }*
  %_i381 = alloca i64
  store i64 %argc, i64* %_argc352
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv354
  %_argv354 = alloca { i64, [0 x i8*] }*
  %_argc352 = alloca i64
  %_raw_array357 = call i64* @oat_alloc_array(i64 3)
  %_array358 = bitcast i64* %_raw_array357 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array358, { i64, [0 x i64] }** %_x359
  store i64 0, i64* %_i361
  br label %_pre366
_pre366:
  %_i363 = load i64, i64* %_i361
  %_bop364 = icmp slt i64 %_i363, 3
  %_cnd368 = icmp eq i1 %_bop364, 0
  br i1 %_cnd368, label %_post365, label %_body367
_body367:
  %_i369 = load i64, i64* %_i361
  %_x370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x359
  %_i371 = load i64, i64* %_i361
  %_ptr372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x370, i32 0, i32 1, i64 %_i371
  store i64 %_i369, i64* %_ptr372
  %_i374 = load i64, i64* %_i361
  %_bop375 = add i64 %_i374, 1
  store i64 %_bop375, i64* %_i361
  br label %_pre366
_post365:
  %_raw_array377 = call i64* @oat_alloc_array(i64 3)
  %_array378 = bitcast i64* %_raw_array377 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array378, { i64, [0 x i64] }** %_y379
  store i64 0, i64* %_i381
  br label %_pre386
_pre386:
  %_i383 = load i64, i64* %_i381
  %_bop384 = icmp slt i64 %_i383, 3
  %_cnd388 = icmp eq i1 %_bop384, 0
  br i1 %_cnd388, label %_post385, label %_body387
_body387:
  %_i389 = load i64, i64* %_i381
  %_bop390 = add i64 %_i389, 3
  %_y391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y379
  %_i392 = load i64, i64* %_i381
  %_ptr393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y391, i32 0, i32 1, i64 %_i392
  store i64 %_bop390, i64* %_ptr393
  %_i395 = load i64, i64* %_i381
  %_bop396 = add i64 %_i395, 1
  store i64 %_bop396, i64* %_i381
  br label %_pre386
_post385:
  %_x398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x359
  %_y399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y379
  %_id400 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x398, { i64, [0 x i64] }* %_y399, i1 1)
  %_ptr401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id400, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr401
  %_x405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x359
  %_ptr403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x405, i32 0, i32 1, i32 0
  %_resPtr404 = load i64, i64* %_ptr403
  ret i64 %_resPtr404
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
