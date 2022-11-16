; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_arr5425 to { i64, [0 x i1] }*)
@_arr5425 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 0, i1 1, i1 0, i1 1 ] }
@_s5407 = global [2 x i8] c"T\00"
@_s15408 = global i8* bitcast ([2 x i8]* @_s5407 to i8*)
@_s5404 = global [2 x i8] c"F\00"
@_s15405 = global i8* bitcast ([2 x i8]* @_s5404 to i8*)
@_s5365 = global [2 x i8] c" \00"
@_s15366 = global i8* bitcast ([2 x i8]* @_s5365 to i8*)

define i1 @xor(i1 %x, i1 %y) {
  %_x5411 = alloca i1
  %_y5413 = alloca i1
  store i1 %y, i1* %_y5413
  store i1 %x, i1* %_x5411
  %_x5416 = load i1, i1* %_x5414
  %_y5417 = load i1, i1* %_y5415
  %_uop5418 = icmp eq i1 %_y5417, 0
  %_bop5419 = and i1 %_x5416, %_uop5418
  %_x5420 = load i1, i1* %_x5414
  %_uop5421 = icmp eq i1 %_x5420, 0
  %_y5422 = load i1, i1* %_y5415
  %_bop5423 = and i1 %_uop5421, %_y5422
  %_bop5424 = or i1 %_bop5419, %_bop5423
  ret i1 %_bop5424
}

define i8* @string_of_bool(i1 %b) {
  %_b5397 = alloca i1
  store i1 %b, i1* %_b5397
  %_b5399 = load i1, i1* %_b5398
  br i1 %_b5399, label %_if5402, label %_else5401
_if5402:
  %_tmp5409 = load i8*, i8** @_s15408
  ret i8* %_tmp5409
_else5401:
  %_tmp5406 = load i8*, i8** @_s15405
  ret i8* %_tmp5406
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_i5378 = alloca i64
  %_lfsr_register5373 = alloca { i64, [0 x i1] }*
  %_len5375 = alloca i64
  store i64 %len, i64* %_len5375
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register5373
  store i64 0, i64* %_i5378
  br label %_pre5384
_pre5384:
  %_i5380 = load i64, i64* %_i5378
  %_len5381 = load i64, i64* %_len5377
  %_bop5382 = icmp slt i64 %_i5380, %_len5381
  %_cnd5386 = icmp eq i1 %_bop5382, 0
  br i1 %_cnd5386, label %_post5383, label %_body5385
_body5385:
  %_lfsr_register5389 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5376
  %_i5390 = load i64, i64* %_i5378
  %_ptr5387 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5389, i32 0, i32 1, i64 %_i5390
  %_resPtr5388 = load i1, i1* %_ptr5387
  %_id5391 = call i8* @string_of_bool(i1 %_resPtr5388)
  call void @print_string(i8* %_id5391)
  %_i5393 = load i64, i64* %_i5378
  %_bop5394 = add i64 %_i5393, 1
  store i64 %_bop5394, i64* %_i5378
  br label %_pre5384
_post5383:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_lfsr_register5289 = alloca { i64, [0 x i1] }*
  %_i5291 = alloca i64
  %_i5311 = alloca i64
  %_new_first5331 = alloca i1
  %_j5335 = alloca i64
  %_argc5281 = alloca i64
  %_argv5283 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5283
  store i64 %argc, i64* %_argc5281
  %_lfsr_length5286 = load i64, i64* @lfsr_length
  %_raw_array5287 = call i64* @oat_alloc_array(i64 %_lfsr_length5286)
  %_array5288 = bitcast i64* %_raw_array5287 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5288, { i64, [0 x i1] }** %_lfsr_register5289
  store i64 0, i64* %_i5291
  br label %_pre5297
_pre5297:
  %_i5293 = load i64, i64* %_i5291
  %_lfsr_length5294 = load i64, i64* @lfsr_length
  %_bop5295 = icmp slt i64 %_i5293, %_lfsr_length5294
  %_cnd5299 = icmp eq i1 %_bop5295, 0
  br i1 %_cnd5299, label %_post5296, label %_body5298
_body5298:
  %_lfsr_init_values5302 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_i5303 = load i64, i64* %_i5291
  %_ptr5300 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_init_values5302, i32 0, i32 1, i64 %_i5303
  %_resPtr5301 = load i1, i1* %_ptr5300
  %_lfsr_register5304 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_i5305 = load i64, i64* %_i5291
  %_ptr5306 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5304, i32 0, i32 1, i64 %_i5305
  store i1 %_resPtr5301, i1* %_ptr5306
  %_i5308 = load i64, i64* %_i5291
  %_bop5309 = add i64 %_i5308, 1
  store i64 %_bop5309, i64* %_i5291
  br label %_pre5297
_post5296:
  store i64 0, i64* %_i5311
  br label %_pre5317
_pre5317:
  %_i5313 = load i64, i64* %_i5311
  %_lfsr_iterations5314 = load i64, i64* @lfsr_iterations
  %_bop5315 = icmp slt i64 %_i5313, %_lfsr_iterations5314
  %_cnd5319 = icmp eq i1 %_bop5315, 0
  br i1 %_cnd5319, label %_post5316, label %_body5318
_body5318:
  %_lfsr_register5322 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_lfsr_length5323 = load i64, i64* @lfsr_length
  %_bop5324 = sub i64 %_lfsr_length5323, 1
  %_ptr5320 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5322, i32 0, i32 1, i64 %_bop5324
  %_resPtr5321 = load i1, i1* %_ptr5320
  %_lfsr_register5327 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_lfsr_length5328 = load i64, i64* @lfsr_length
  %_bop5329 = sub i64 %_lfsr_length5328, 2
  %_ptr5325 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5327, i32 0, i32 1, i64 %_bop5329
  %_resPtr5326 = load i1, i1* %_ptr5325
  %_id5330 = call i1 @xor(i1 %_resPtr5321, i1 %_resPtr5326)
  store i1 %_id5330, i1* %_new_first5331
  %_lfsr_length5333 = load i64, i64* @lfsr_length
  %_bop5334 = sub i64 %_lfsr_length5333, 1
  store i64 %_bop5334, i64* %_j5335
  br label %_pre5340
_pre5340:
  %_j5337 = load i64, i64* %_j5335
  %_bop5338 = icmp sgt i64 %_j5337, 0
  %_cnd5342 = icmp eq i1 %_bop5338, 0
  br i1 %_cnd5342, label %_post5339, label %_body5341
_body5341:
  %_lfsr_register5345 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_j5346 = load i64, i64* %_j5335
  %_bop5347 = sub i64 %_j5346, 1
  %_ptr5343 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5345, i32 0, i32 1, i64 %_bop5347
  %_resPtr5344 = load i1, i1* %_ptr5343
  %_lfsr_register5348 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_j5349 = load i64, i64* %_j5335
  %_ptr5350 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5348, i32 0, i32 1, i64 %_j5349
  store i1 %_resPtr5344, i1* %_ptr5350
  %_j5352 = load i64, i64* %_j5335
  %_bop5353 = sub i64 %_j5352, 1
  store i64 %_bop5353, i64* %_j5335
  br label %_pre5340
_post5339:
  %_new_first5355 = load i1, i1* %_new_first5331
  %_lfsr_register5356 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_ptr5357 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5356, i32 0, i32 1, i32 0
  store i1 %_new_first5355, i1* %_ptr5357
  %_i5359 = load i64, i64* %_i5311
  %_bop5360 = add i64 %_i5359, 1
  store i64 %_bop5360, i64* %_i5311
  br label %_pre5317
_post5316:
  %_lfsr_init_values5362 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_lfsr_length5363 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_init_values5362, i64 %_lfsr_length5363)
  %_tmp5367 = load i8*, i8** @_s15366
  call void @print_string(i8* %_tmp5367)
  %_lfsr_register5369 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5289
  %_lfsr_length5370 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5369, i64 %_lfsr_length5370)
  ret i64 0
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
