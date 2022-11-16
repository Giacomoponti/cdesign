; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_j3483 = alloca i64
  %_a3475 = alloca { i64, [0 x i64] }*
  %_l3477 = alloca i64
  %_r3479 = alloca i64
  store i64 %r, i64* %_r3479
  store i64 %l, i64* %_l3477
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3475
  store i64 0, i64* %_j3483
  %_l3485 = load i64, i64* %_l3481
  %_r3486 = load i64, i64* %_r3482
  %_bop3487 = icmp slt i64 %_l3485, %_r3486
  br i1 %_bop3487, label %_if3490, label %_else3489
_if3490:
  %_a3492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3480
  %_l3493 = load i64, i64* %_l3481
  %_r3494 = load i64, i64* %_r3482
  %_id3495 = call i64 @partition({ i64, [0 x i64] }* %_a3492, i64 %_l3493, i64 %_r3494)
  store i64 %_id3495, i64* %_j3483
  %_a3497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3480
  %_l3498 = load i64, i64* %_l3481
  %_j3499 = load i64, i64* %_j3483
  %_bop3500 = sub i64 %_j3499, 1
  call void @quick_sort({ i64, [0 x i64] }* %_a3497, i64 %_l3498, i64 %_bop3500)
  %_a3502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3480
  %_j3503 = load i64, i64* %_j3483
  %_bop3504 = add i64 %_j3503, 1
  %_r3505 = load i64, i64* %_r3482
  call void @quick_sort({ i64, [0 x i64] }* %_a3502, i64 %_bop3504, i64 %_r3505)
  br label %_after3488
_else3489:
  br label %_after3488
_after3488:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_pivot3368 = alloca i64
  %_i3371 = alloca i64
  %_j3375 = alloca i64
  %_t3377 = alloca i64
  %_done3379 = alloca i64
  %_a3356 = alloca { i64, [0 x i64] }*
  %_l3358 = alloca i64
  %_r3360 = alloca i64
  store i64 %r, i64* %_r3360
  store i64 %l, i64* %_l3358
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3356
  %_a3366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_l3367 = load i64, i64* %_l3362
  %_ptr3364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3366, i32 0, i32 1, i64 %_l3367
  %_resPtr3365 = load i64, i64* %_ptr3364
  store i64 %_resPtr3365, i64* %_pivot3368
  %_l3370 = load i64, i64* %_l3362
  store i64 %_l3370, i64* %_i3371
  %_r3373 = load i64, i64* %_r3363
  %_bop3374 = add i64 %_r3373, 1
  store i64 %_bop3374, i64* %_j3375
  store i64 0, i64* %_t3377
  store i64 0, i64* %_done3379
  br label %_pre3384
_pre3384:
  %_cnd3386 = icmp eq i1 %_bop3382, 0
  br i1 %_cnd3386, label %_post3383, label %_body3385
_body3385:
  %_done3381 = load i64, i64* %_done3379
  %_bop3382 = icmp eq i64 %_done3381, 0
  %_i3387 = load i64, i64* %_i3371
  %_bop3388 = add i64 %_i3387, 1
  store i64 %_bop3388, i64* %_i3371
  br label %_pre3401
_pre3401:
  %_cnd3403 = icmp eq i1 %_bop3399, 0
  br i1 %_cnd3403, label %_post3400, label %_body3402
_body3402:
  %_a3392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_i3393 = load i64, i64* %_i3371
  %_ptr3390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3392, i32 0, i32 1, i64 %_i3393
  %_resPtr3391 = load i64, i64* %_ptr3390
  %_pivot3394 = load i64, i64* %_pivot3368
  %_bop3395 = icmp sle i64 %_resPtr3391, %_pivot3394
  %_i3396 = load i64, i64* %_i3371
  %_r3397 = load i64, i64* %_r3363
  %_bop3398 = icmp sle i64 %_i3396, %_r3397
  %_bop3399 = and i1 %_bop3395, %_bop3398
  %_i3404 = load i64, i64* %_i3371
  %_bop3405 = add i64 %_i3404, 1
  store i64 %_bop3405, i64* %_i3371
  br label %_pre3401
_post3400:
  %_j3407 = load i64, i64* %_j3375
  %_bop3408 = sub i64 %_j3407, 1
  store i64 %_bop3408, i64* %_j3375
  br label %_pre3417
_pre3417:
  %_cnd3419 = icmp eq i1 %_bop3415, 0
  br i1 %_cnd3419, label %_post3416, label %_body3418
_body3418:
  %_a3412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_j3413 = load i64, i64* %_j3375
  %_ptr3410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3412, i32 0, i32 1, i64 %_j3413
  %_resPtr3411 = load i64, i64* %_ptr3410
  %_pivot3414 = load i64, i64* %_pivot3368
  %_bop3415 = icmp sgt i64 %_resPtr3411, %_pivot3414
  %_j3420 = load i64, i64* %_j3375
  %_bop3421 = sub i64 %_j3420, 1
  store i64 %_bop3421, i64* %_j3375
  br label %_pre3417
_post3416:
  %_i3423 = load i64, i64* %_i3371
  %_j3424 = load i64, i64* %_j3375
  %_bop3425 = icmp sge i64 %_i3423, %_j3424
  br i1 %_bop3425, label %_if3428, label %_else3427
_if3428:
  store i64 1, i64* %_done3379
  br label %_after3426
_else3427:
  br label %_after3426
_after3426:
  %_done3431 = load i64, i64* %_done3379
  %_bop3432 = icmp eq i64 %_done3431, 0
  br i1 %_bop3432, label %_if3435, label %_else3434
_if3435:
  %_a3439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_i3440 = load i64, i64* %_i3371
  %_ptr3437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3439, i32 0, i32 1, i64 %_i3440
  %_resPtr3438 = load i64, i64* %_ptr3437
  store i64 %_resPtr3438, i64* %_t3377
  %_a3444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_j3445 = load i64, i64* %_j3375
  %_ptr3442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3444, i32 0, i32 1, i64 %_j3445
  %_resPtr3443 = load i64, i64* %_ptr3442
  %_a3446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_i3447 = load i64, i64* %_i3371
  %_ptr3448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3446, i32 0, i32 1, i64 %_i3447
  store i64 %_resPtr3443, i64* %_ptr3448
  %_t3450 = load i64, i64* %_t3377
  %_a3451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_j3452 = load i64, i64* %_j3375
  %_ptr3453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3451, i32 0, i32 1, i64 %_j3452
  store i64 %_t3450, i64* %_ptr3453
  br label %_after3433
_else3434:
  br label %_after3433
_after3433:
  br label %_pre3384
_post3383:
  %_a3457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_l3458 = load i64, i64* %_l3362
  %_ptr3455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3457, i32 0, i32 1, i64 %_l3458
  %_resPtr3456 = load i64, i64* %_ptr3455
  store i64 %_resPtr3456, i64* %_t3377
  %_a3462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_j3463 = load i64, i64* %_j3375
  %_ptr3460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3462, i32 0, i32 1, i64 %_j3463
  %_resPtr3461 = load i64, i64* %_ptr3460
  %_a3464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_l3465 = load i64, i64* %_l3362
  %_ptr3466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3464, i32 0, i32 1, i64 %_l3465
  store i64 %_resPtr3461, i64* %_ptr3466
  %_t3468 = load i64, i64* %_t3377
  %_a3469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3361
  %_j3470 = load i64, i64* %_j3375
  %_ptr3471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3469, i32 0, i32 1, i64 %_j3470
  store i64 %_t3468, i64* %_ptr3471
  %_j3473 = load i64, i64* %_j3375
  ret i64 %_j3473
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3345 = alloca { i64, [0 x i64] }*
  %_argc3320 = alloca i64
  %_argv3322 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3322
  store i64 %argc, i64* %_argc3320
  %_raw_array3325 = call i64* @oat_alloc_array(i64 9)
  %_array3326 = bitcast i64* %_raw_array3325 to { i64, [0 x i64] }*
  %_gep3327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 0
  store i64 107, i64* %_gep3327
  %_gep3329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3329
  %_gep3331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 2
  store i64 121, i64* %_gep3331
  %_gep3333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 3
  store i64 102, i64* %_gep3333
  %_gep3335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 4
  store i64 123, i64* %_gep3335
  %_gep3337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 5
  store i64 115, i64* %_gep3337
  %_gep3339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 6
  store i64 104, i64* %_gep3339
  %_gep3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 7
  store i64 111, i64* %_gep3341
  %_gep3343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3326, i32 0, i32 1, i32 8
  store i64 109, i64* %_gep3343
  store { i64, [0 x i64] }* %_array3326, { i64, [0 x i64] }** %_a3345
  %_a3347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3345
  %_id3348 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3347)
  call void @print_string(i8* %_id3348)
  %_a3350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3345
  call void @quick_sort({ i64, [0 x i64] }* %_a3350, i64 0, i64 8)
  %_a3352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3345
  %_id3353 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3352)
  call void @print_string(i8* %_id3353)
  ret i64 255
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
