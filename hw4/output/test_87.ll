; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_s3361 = global [2 x i8] c" \00"
@_s3362 = global i8* bitcast ([2 x i8]* @_s3361 to i8*)

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_temp3375 = alloca i64
  %_i3379 = alloca i64
  %_j3387 = alloca i64
  %_numbers3372 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers3372
  %_array_size3374 = alloca i64
  store i64 %array_size, i64* %_array_size3374
  store i64 0, i64* %_temp3375
  %_array_size3377 = load i64, i64* %_array_size3374
  %_bop3378 = sub i64 %_array_size3377, 1
  store i64 %_bop3378, i64* %_i3379
  br label %_pre3384
_pre3384:
  %_i3381 = load i64, i64* %_i3379
  %_bop3382 = icmp sgt i64 %_i3381, 0
  %_cnd3386 = icmp eq i1 %_bop3382, 0
  br i1 %_cnd3386, label %_post3383, label %_body3385
_body3385:
  store i64 1, i64* %_j3387
  br label %_pre3393
_pre3393:
  %_j3389 = load i64, i64* %_j3387
  %_i3390 = load i64, i64* %_i3379
  %_bop3391 = icmp sle i64 %_j3389, %_i3390
  %_cnd3395 = icmp eq i1 %_bop3391, 0
  br i1 %_cnd3395, label %_post3392, label %_body3394
_body3394:
  %_numbers3398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3372
  %_j3399 = load i64, i64* %_j3387
  %_bop3400 = sub i64 %_j3399, 1
  %_ptr3396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3398, i32 0, i32 1, i64 %_bop3400
  %_resPtr3397 = load i64, i64* %_ptr3396
  %_numbers3403 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3372
  %_i3404 = load i64, i64* %_i3379
  %_ptr3401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3403, i32 0, i32 1, i64 %_i3404
  %_resPtr3402 = load i64, i64* %_ptr3401
  %_bop3405 = icmp sgt i64 %_resPtr3397, %_resPtr3402
  br i1 %_bop3405, label %_if3408, label %_else3407
_if3408:
  %_numbers3412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3372
  %_j3413 = load i64, i64* %_j3387
  %_bop3414 = sub i64 %_j3413, 1
  %_ptr3410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3412, i32 0, i32 1, i64 %_bop3414
  %_resPtr3411 = load i64, i64* %_ptr3410
  store i64 %_resPtr3411, i64* %_temp3375
  %_numbers3418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3372
  %_i3419 = load i64, i64* %_i3379
  %_ptr3416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3418, i32 0, i32 1, i64 %_i3419
  %_resPtr3417 = load i64, i64* %_ptr3416
  %_numbers3420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3372
  %_j3421 = load i64, i64* %_j3387
  %_bop3422 = sub i64 %_j3421, 1
  %_ptr3423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3420, i32 0, i32 1, i64 %_bop3422
  store i64 %_resPtr3417, i64* %_ptr3423
  %_temp3425 = load i64, i64* %_temp3375
  %_numbers3426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3372
  %_i3427 = load i64, i64* %_i3379
  %_ptr3428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3426, i32 0, i32 1, i64 %_i3427
  store i64 %_temp3425, i64* %_ptr3428
  br label %_after3406
_else3407:
  br label %_after3406
_after3406:
  %_j3430 = load i64, i64* %_j3387
  %_bop3431 = add i64 %_j3430, 1
  store i64 %_bop3431, i64* %_j3387
  br label %_pre3393
_post3392:
  %_i3433 = load i64, i64* %_i3379
  %_bop3434 = sub i64 %_i3433, 1
  store i64 %_bop3434, i64* %_i3379
  br label %_pre3384
_post3383:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3332 = alloca { i64, [0 x i64] }*
  %_argc3327 = alloca i64
  store i64 %argc, i64* %_argc3327
  %_argv3329 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3329
  %_raw_array3330 = call i64* @oat_alloc_array(i64 8)
  %_array3331 = bitcast i64* %_raw_array3330 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3331, { i64, [0 x i64] }** %_a3332
  %_a3334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3334, i32 0, i32 1, i32 0
  store i64 121, i64* %_ptr3335
  %_a3337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3337, i32 0, i32 1, i32 1
  store i64 125, i64* %_ptr3338
  %_a3340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3340, i32 0, i32 1, i32 2
  store i64 120, i64* %_ptr3341
  %_a3343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3343, i32 0, i32 1, i32 3
  store i64 111, i64* %_ptr3344
  %_a3346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3346, i32 0, i32 1, i32 4
  store i64 116, i64* %_ptr3347
  %_a3349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3349, i32 0, i32 1, i32 5
  store i64 110, i64* %_ptr3350
  %_a3352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3352, i32 0, i32 1, i32 6
  store i64 117, i64* %_ptr3353
  %_a3355 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_ptr3356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3355, i32 0, i32 1, i32 7
  store i64 119, i64* %_ptr3356
  %_a3358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_3359 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3358)
  call void @print_string(i8* %_3359)
  %_tmp3363 = load i8*, i8** @_s3362
  call void @print_string(i8* %_tmp3363)
  %_a3365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  call void @bubble_sort({ i64, [0 x i64] }* %_a3365, i64 8)
  %_a3367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3332
  %_3368 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3367)
  call void @print_string(i8* %_3368)
  %_uop3370 = mul i64 1, -1
  ret i64 %_uop3370
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
