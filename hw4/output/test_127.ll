; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x365 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x365
  %_y367 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y367
  %_b369 = alloca i1
  store i1 %b, i1* %_b369
  %_b370 = load i1, i1* %_b369
  br i1 %_b370, label %_if373, label %_else372
_if373:
  %_x376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x365
  ret { i64, [0 x i64] }* %_x376
_else372:
  %_y375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y367
  ret { i64, [0 x i64] }* %_y375
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x317 = alloca { i64, [0 x i64] }*
  %_i319 = alloca i64
  %_y337 = alloca { i64, [0 x i64] }*
  %_i339 = alloca i64
  %_argc312 = alloca i64
  store i64 %argc, i64* %_argc312
  %_argv314 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv314
  %_raw_array315 = call i64* @oat_alloc_array(i64 3)
  %_array316 = bitcast i64* %_raw_array315 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array316, { i64, [0 x i64] }** %_x317
  store i64 0, i64* %_i319
  br label %_pre324
_pre324:
  %_i321 = load i64, i64* %_i319
  %_bop322 = icmp slt i64 %_i321, 3
  %_cnd326 = icmp eq i1 %_bop322, 0
  br i1 %_cnd326, label %_post323, label %_body325
_body325:
  %_i327 = load i64, i64* %_i319
  %_x328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x317
  %_i329 = load i64, i64* %_i319
  %_ptr330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x328, i32 0, i32 1, i64 %_i329
  store i64 %_i327, i64* %_ptr330
  %_i332 = load i64, i64* %_i319
  %_bop333 = add i64 %_i332, 1
  store i64 %_bop333, i64* %_i319
  br label %_pre324
_post323:
  %_raw_array335 = call i64* @oat_alloc_array(i64 3)
  %_array336 = bitcast i64* %_raw_array335 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array336, { i64, [0 x i64] }** %_y337
  store i64 0, i64* %_i339
  br label %_pre344
_pre344:
  %_i341 = load i64, i64* %_i339
  %_bop342 = icmp slt i64 %_i341, 3
  %_cnd346 = icmp eq i1 %_bop342, 0
  br i1 %_cnd346, label %_post343, label %_body345
_body345:
  %_i347 = load i64, i64* %_i339
  %_bop348 = add i64 %_i347, 3
  %_y349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y337
  %_i350 = load i64, i64* %_i339
  %_ptr351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y349, i32 0, i32 1, i64 %_i350
  store i64 %_bop348, i64* %_ptr351
  %_i353 = load i64, i64* %_i339
  %_bop354 = add i64 %_i353, 1
  store i64 %_bop354, i64* %_i339
  br label %_pre344
_post343:
  %_x356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x317
  %_y357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y337
  %_358 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x356, { i64, [0 x i64] }* %_y357, i1 1)
  %_ptr359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_358, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr359
  %_x363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x317
  %_ptr361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x363, i32 0, i32 1, i32 0
  %_resPtr362 = load i64, i64* %_ptr361
  ret i64 %_resPtr362
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
