; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_maxarr6326 = alloca { i64, [0 x i64] }*
  %_maxs6328 = alloca i64
  %_i6336 = alloca i64
  %_j6345 = alloca i64
  %_arr6318 = alloca { i64, [0 x i64] }*
  %_size6320 = alloca i64
  store i64 %size, i64* %_size6320
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr6318
  %_size6323 = load i64, i64* %_size6322
  %_raw_array6324 = call i64* @oat_alloc_array(i64 %_size6323)
  %_array6325 = bitcast i64* %_raw_array6324 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6325, { i64, [0 x i64] }** %_maxarr6326
  store i64 0, i64* %_maxs6328
  %_arr6332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6321
  %_ptr6330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6332, i32 0, i32 1, i32 0
  %_resPtr6331 = load i64, i64* %_ptr6330
  %_maxarr6333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_ptr6334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6333, i32 0, i32 1, i32 0
  store i64 %_resPtr6331, i64* %_ptr6334
  store i64 0, i64* %_i6336
  br label %_pre6342
_pre6342:
  %_i6338 = load i64, i64* %_i6336
  %_size6339 = load i64, i64* %_size6322
  %_bop6340 = icmp slt i64 %_i6338, %_size6339
  %_cnd6344 = icmp eq i1 %_bop6340, 0
  br i1 %_cnd6344, label %_post6341, label %_body6343
_body6343:
  store i64 0, i64* %_j6345
  br label %_pre6351
_pre6351:
  %_j6347 = load i64, i64* %_j6345
  %_i6348 = load i64, i64* %_i6336
  %_bop6349 = icmp slt i64 %_j6347, %_i6348
  %_cnd6353 = icmp eq i1 %_bop6349, 0
  br i1 %_cnd6353, label %_post6350, label %_body6352
_body6352:
  %_arr6356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6321
  %_i6357 = load i64, i64* %_i6336
  %_ptr6354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6356, i32 0, i32 1, i64 %_i6357
  %_resPtr6355 = load i64, i64* %_ptr6354
  %_arr6360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6321
  %_j6361 = load i64, i64* %_j6345
  %_ptr6358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6360, i32 0, i32 1, i64 %_j6361
  %_resPtr6359 = load i64, i64* %_ptr6358
  %_bop6362 = icmp sgt i64 %_resPtr6355, %_resPtr6359
  %_maxarr6365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_i6366 = load i64, i64* %_i6336
  %_ptr6363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6365, i32 0, i32 1, i64 %_i6366
  %_resPtr6364 = load i64, i64* %_ptr6363
  %_maxarr6369 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_j6370 = load i64, i64* %_j6345
  %_ptr6367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6369, i32 0, i32 1, i64 %_j6370
  %_resPtr6368 = load i64, i64* %_ptr6367
  %_arr6373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6321
  %_i6374 = load i64, i64* %_i6336
  %_ptr6371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6373, i32 0, i32 1, i64 %_i6374
  %_resPtr6372 = load i64, i64* %_ptr6371
  %_bop6375 = add i64 %_resPtr6368, %_resPtr6372
  %_bop6376 = icmp slt i64 %_resPtr6364, %_bop6375
  %_bop6377 = and i1 %_bop6362, %_bop6376
  br i1 %_bop6377, label %_if6380, label %_else6379
_if6380:
  %_maxarr6384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_j6385 = load i64, i64* %_j6345
  %_ptr6382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6384, i32 0, i32 1, i64 %_j6385
  %_resPtr6383 = load i64, i64* %_ptr6382
  %_arr6388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6321
  %_i6389 = load i64, i64* %_i6336
  %_ptr6386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6388, i32 0, i32 1, i64 %_i6389
  %_resPtr6387 = load i64, i64* %_ptr6386
  %_bop6390 = add i64 %_resPtr6383, %_resPtr6387
  %_maxarr6391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_i6392 = load i64, i64* %_i6336
  %_ptr6393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6391, i32 0, i32 1, i64 %_i6392
  store i64 %_bop6390, i64* %_ptr6393
  br label %_after6378
_else6379:
  br label %_after6378
_after6378:
  %_j6395 = load i64, i64* %_j6345
  %_bop6396 = add i64 %_j6395, 1
  store i64 %_bop6396, i64* %_j6345
  br label %_pre6351
_post6350:
  %_maxs6398 = load i64, i64* %_maxs6328
  %_maxarr6401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_i6402 = load i64, i64* %_i6336
  %_ptr6399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6401, i32 0, i32 1, i64 %_i6402
  %_resPtr6400 = load i64, i64* %_ptr6399
  %_bop6403 = icmp slt i64 %_maxs6398, %_resPtr6400
  br i1 %_bop6403, label %_if6406, label %_else6405
_if6406:
  %_maxarr6410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6326
  %_i6411 = load i64, i64* %_i6336
  %_ptr6408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6410, i32 0, i32 1, i64 %_i6411
  %_resPtr6409 = load i64, i64* %_ptr6408
  store i64 %_resPtr6409, i64* %_maxs6328
  br label %_after6404
_else6405:
  br label %_after6404
_after6404:
  %_i6413 = load i64, i64* %_i6336
  %_bop6414 = add i64 %_i6413, 1
  store i64 %_bop6414, i64* %_i6336
  br label %_pre6342
_post6341:
  %_maxs6416 = load i64, i64* %_maxs6328
  ret i64 %_maxs6416
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array6310 = alloca { i64, [0 x i64] }*
  %_max_ans6314 = alloca i64
  %_argc6289 = alloca i64
  %_argv6291 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6291
  store i64 %argc, i64* %_argc6289
  %_raw_array6294 = call i64* @oat_alloc_array(i64 7)
  %_array6295 = bitcast i64* %_raw_array6294 to { i64, [0 x i64] }*
  %_gep6296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep6296
  %_gep6298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep6298
  %_gep6300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 2
  store i64 101, i64* %_gep6300
  %_gep6302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep6302
  %_gep6304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 4
  store i64 2, i64* %_gep6304
  %_gep6306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 5
  store i64 101, i64* %_gep6306
  %_gep6308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6295, i32 0, i32 1, i32 6
  store i64 1, i64* %_gep6308
  store { i64, [0 x i64] }* %_array6295, { i64, [0 x i64] }** %_array6310
  %_array6312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6310
  %_id6313 = call i64 @maxsum({ i64, [0 x i64] }* %_array6312, i64 7)
  store i64 %_id6313, i64* %_max_ans6314
  %_max_ans6316 = load i64, i64* %_max_ans6314
  ret i64 %_max_ans6316
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
