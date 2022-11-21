; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_arr5401 to { i64, [0 x i1] }*)
@_arr5401 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_s5385 = global [2 x i8] c"T\00"
@_s5386 = global i8* bitcast ([2 x i8]* @_s5385 to i8*)
@_s5382 = global [2 x i8] c"F\00"
@_s5383 = global i8* bitcast ([2 x i8]* @_s5382 to i8*)
@_s5346 = global [2 x i8] c" \00"
@_s5347 = global i8* bitcast ([2 x i8]* @_s5346 to i8*)

define i1 @xor(i1 %x, i1 %y) {
  %_x5389 = alloca i1
  store i1 %x, i1* %_x5389
  %_y5391 = alloca i1
  store i1 %y, i1* %_y5391
  %_x5392 = load i1, i1* %_x5389
  %_y5393 = load i1, i1* %_y5391
  %_uop5394 = icmp eq i1 %_y5393, 0
  %_bop5395 = and i1 %_x5392, %_uop5394
  %_x5396 = load i1, i1* %_x5389
  %_uop5397 = icmp eq i1 %_x5396, 0
  %_y5398 = load i1, i1* %_y5391
  %_bop5399 = and i1 %_uop5397, %_y5398
  %_bop5400 = or i1 %_bop5395, %_bop5399
  ret i1 %_bop5400
}

define i8* @string_of_bool(i1 %b) {
  %_b5376 = alloca i1
  store i1 %b, i1* %_b5376
  %_b5377 = load i1, i1* %_b5376
  br i1 %_b5377, label %_if5380, label %_else5379
_if5380:
  %_tmp5387 = load i8*, i8** @_s5386
  ret i8* %_tmp5387
_else5379:
  %_tmp5384 = load i8*, i8** @_s5383
  ret i8* %_tmp5384
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_i5357 = alloca i64
  %_lfsr_register5354 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register5354
  %_len5356 = alloca i64
  store i64 %len, i64* %_len5356
  store i64 0, i64* %_i5357
  br label %_pre5363
_pre5363:
  %_i5359 = load i64, i64* %_i5357
  %_len5360 = load i64, i64* %_len5356
  %_bop5361 = icmp slt i64 %_i5359, %_len5360
  %_cnd5365 = icmp eq i1 %_bop5361, 0
  br i1 %_cnd5365, label %_post5362, label %_body5364
_body5364:
  %_lfsr_register5368 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5354
  %_i5369 = load i64, i64* %_i5357
  %_ptr5366 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5368, i32 0, i32 1, i64 %_i5369
  %_resPtr5367 = load i1, i1* %_ptr5366
  %_5370 = call i8* @string_of_bool(i1 %_resPtr5367)
  call void @print_string(i8* %_5370)
  %_i5372 = load i64, i64* %_i5357
  %_bop5373 = add i64 %_i5372, 1
  store i64 %_bop5373, i64* %_i5357
  br label %_pre5363
_post5362:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_lfsr_register5270 = alloca { i64, [0 x i1] }*
  %_i5272 = alloca i64
  %_i5292 = alloca i64
  %_new_first5312 = alloca i1
  %_j5316 = alloca i64
  %_argc5264 = alloca i64
  store i64 %argc, i64* %_argc5264
  %_argv5266 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5266
  %_lfsr_length5267 = load i64, i64* @lfsr_length
  %_raw_array5268 = call i64* @oat_alloc_array(i64 %_lfsr_length5267)
  %_array5269 = bitcast i64* %_raw_array5268 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5269, { i64, [0 x i1] }** %_lfsr_register5270
  store i64 0, i64* %_i5272
  br label %_pre5278
_pre5278:
  %_i5274 = load i64, i64* %_i5272
  %_lfsr_length5275 = load i64, i64* @lfsr_length
  %_bop5276 = icmp slt i64 %_i5274, %_lfsr_length5275
  %_cnd5280 = icmp eq i1 %_bop5276, 0
  br i1 %_cnd5280, label %_post5277, label %_body5279
_body5279:
  %_lfsr_init_values5283 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_i5284 = load i64, i64* %_i5272
  %_ptr5281 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_init_values5283, i32 0, i32 1, i64 %_i5284
  %_resPtr5282 = load i1, i1* %_ptr5281
  %_lfsr_register5285 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_i5286 = load i64, i64* %_i5272
  %_ptr5287 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5285, i32 0, i32 1, i64 %_i5286
  store i1 %_resPtr5282, i1* %_ptr5287
  %_i5289 = load i64, i64* %_i5272
  %_bop5290 = add i64 %_i5289, 1
  store i64 %_bop5290, i64* %_i5272
  br label %_pre5278
_post5277:
  store i64 0, i64* %_i5292
  br label %_pre5298
_pre5298:
  %_i5294 = load i64, i64* %_i5292
  %_lfsr_iterations5295 = load i64, i64* @lfsr_iterations
  %_bop5296 = icmp slt i64 %_i5294, %_lfsr_iterations5295
  %_cnd5300 = icmp eq i1 %_bop5296, 0
  br i1 %_cnd5300, label %_post5297, label %_body5299
_body5299:
  %_lfsr_register5303 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_lfsr_length5304 = load i64, i64* @lfsr_length
  %_bop5305 = sub i64 %_lfsr_length5304, 1
  %_ptr5301 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5303, i32 0, i32 1, i64 %_bop5305
  %_resPtr5302 = load i1, i1* %_ptr5301
  %_lfsr_register5308 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_lfsr_length5309 = load i64, i64* @lfsr_length
  %_bop5310 = sub i64 %_lfsr_length5309, 2
  %_ptr5306 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5308, i32 0, i32 1, i64 %_bop5310
  %_resPtr5307 = load i1, i1* %_ptr5306
  %_5311 = call i1 @xor(i1 %_resPtr5302, i1 %_resPtr5307)
  store i1 %_5311, i1* %_new_first5312
  %_lfsr_length5314 = load i64, i64* @lfsr_length
  %_bop5315 = sub i64 %_lfsr_length5314, 1
  store i64 %_bop5315, i64* %_j5316
  br label %_pre5321
_pre5321:
  %_j5318 = load i64, i64* %_j5316
  %_bop5319 = icmp sgt i64 %_j5318, 0
  %_cnd5323 = icmp eq i1 %_bop5319, 0
  br i1 %_cnd5323, label %_post5320, label %_body5322
_body5322:
  %_lfsr_register5326 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_j5327 = load i64, i64* %_j5316
  %_bop5328 = sub i64 %_j5327, 1
  %_ptr5324 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5326, i32 0, i32 1, i64 %_bop5328
  %_resPtr5325 = load i1, i1* %_ptr5324
  %_lfsr_register5329 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_j5330 = load i64, i64* %_j5316
  %_ptr5331 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5329, i32 0, i32 1, i64 %_j5330
  store i1 %_resPtr5325, i1* %_ptr5331
  %_j5333 = load i64, i64* %_j5316
  %_bop5334 = sub i64 %_j5333, 1
  store i64 %_bop5334, i64* %_j5316
  br label %_pre5321
_post5320:
  %_new_first5336 = load i1, i1* %_new_first5312
  %_lfsr_register5337 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_ptr5338 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5337, i32 0, i32 1, i32 0
  store i1 %_new_first5336, i1* %_ptr5338
  %_i5340 = load i64, i64* %_i5292
  %_bop5341 = add i64 %_i5340, 1
  store i64 %_bop5341, i64* %_i5292
  br label %_pre5298
_post5297:
  %_lfsr_init_values5343 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_lfsr_length5344 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_init_values5343, i64 %_lfsr_length5344)
  %_tmp5348 = load i8*, i8** @_s5347
  call void @print_string(i8* %_tmp5348)
  %_lfsr_register5350 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5270
  %_lfsr_length5351 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5350, i64 %_lfsr_length5351)
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
