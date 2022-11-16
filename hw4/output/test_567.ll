; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x382 = alloca { i64, [0 x i64] }*
  %_y384 = alloca { i64, [0 x i64] }*
  %_b386 = alloca i1
  store i1 %b, i1* %_b386
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y384
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x382
  %_b390 = load i1, i1* %_b389
  br i1 %_b390, label %_if393, label %_else392
_if393:
  %_x396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x387
  ret { i64, [0 x i64] }* %_x396
_else392:
  %_y395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y388
  ret { i64, [0 x i64] }* %_y395
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x367 = alloca { i64, [0 x i64] }*
  %_y371 = alloca { i64, [0 x i64] }*
  %_argc360 = alloca i64
  %_argv362 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv362
  store i64 %argc, i64* %_argc360
  %_raw_array365 = call i64* @oat_alloc_array(i64 3)
  %_array366 = bitcast i64* %_raw_array365 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array366, { i64, [0 x i64] }** %_x367
  %_raw_array369 = call i64* @oat_alloc_array(i64 3)
  %_array370 = bitcast i64* %_raw_array369 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array370, { i64, [0 x i64] }** %_y371
  %_x373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x367
  %_y374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y371
  %_id375 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x373, { i64, [0 x i64] }* %_y374, i1 1)
  %_ptr376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id375, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr376
  %_x380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x367
  %_ptr378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x380, i32 0, i32 1, i32 0
  %_resPtr379 = load i64, i64* %_ptr378
  ret i64 %_resPtr379
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
