; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_j3528 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3520
  store i64 %l, i64* %_l3522
  store i64 %r, i64* %_r3524
  %_r3524 = alloca i64
  %_l3522 = alloca i64
  %_a3520 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_j3528
  %_l3530 = load i64, i64* %_l3526
  %_r3531 = load i64, i64* %_r3527
  %_bop3532 = icmp slt i64 %_l3530, %_r3531
  br i1 %_bop3532, label %_if3535, label %_else3534
_if3535:
  %_a3537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3525
  %_l3538 = load i64, i64* %_l3526
  %_r3539 = load i64, i64* %_r3527
  %_id3540 = call i64 @partition({ i64, [0 x i64] }* %_a3537, i64 %_l3538, i64 %_r3539)
  store i64 %_id3540, i64* %_j3528
  %_a3542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3525
  %_l3543 = load i64, i64* %_l3526
  %_j3544 = load i64, i64* %_j3528
  %_bop3545 = sub i64 %_j3544, 1
  call void @quick_sort({ i64, [0 x i64] }* %_a3542, i64 %_l3543, i64 %_bop3545)
  %_a3547 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3525
  %_j3548 = load i64, i64* %_j3528
  %_bop3549 = add i64 %_j3548, 1
  %_r3550 = load i64, i64* %_r3527
  call void @quick_sort({ i64, [0 x i64] }* %_a3547, i64 %_bop3549, i64 %_r3550)
  br label %_after3533
_else3534:
  br label %_after3533
_after3533:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_pivot3413 = alloca i64
  %_i3416 = alloca i64
  %_j3420 = alloca i64
  %_t3422 = alloca i64
  %_done3424 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3401
  store i64 %l, i64* %_l3403
  store i64 %r, i64* %_r3405
  %_r3405 = alloca i64
  %_l3403 = alloca i64
  %_a3401 = alloca { i64, [0 x i64] }*
  %_a3411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_l3412 = load i64, i64* %_l3407
  %_ptr3409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3411, i32 0, i32 1, i64 %_l3412
  %_resPtr3410 = load i64, i64* %_ptr3409
  store i64 %_resPtr3410, i64* %_pivot3413
  %_l3415 = load i64, i64* %_l3407
  store i64 %_l3415, i64* %_i3416
  %_r3418 = load i64, i64* %_r3408
  %_bop3419 = add i64 %_r3418, 1
  store i64 %_bop3419, i64* %_j3420
  store i64 0, i64* %_t3422
  store i64 0, i64* %_done3424
  br label %_pre3429
_pre3429:
  %_done3426 = load i64, i64* %_done3424
  %_bop3427 = icmp eq i64 %_done3426, 0
  %_cnd3431 = icmp eq i1 %_bop3427, 0
  br i1 %_cnd3431, label %_post3428, label %_body3430
_body3430:
  %_i3432 = load i64, i64* %_i3416
  %_bop3433 = add i64 %_i3432, 1
  store i64 %_bop3433, i64* %_i3416
  br label %_pre3446
_pre3446:
  %_a3437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_i3438 = load i64, i64* %_i3416
  %_ptr3435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3437, i32 0, i32 1, i64 %_i3438
  %_resPtr3436 = load i64, i64* %_ptr3435
  %_pivot3439 = load i64, i64* %_pivot3413
  %_bop3440 = icmp sle i64 %_resPtr3436, %_pivot3439
  %_i3441 = load i64, i64* %_i3416
  %_r3442 = load i64, i64* %_r3408
  %_bop3443 = icmp sle i64 %_i3441, %_r3442
  %_bop3444 = and i1 %_bop3440, %_bop3443
  %_cnd3448 = icmp eq i1 %_bop3444, 0
  br i1 %_cnd3448, label %_post3445, label %_body3447
_body3447:
  %_i3449 = load i64, i64* %_i3416
  %_bop3450 = add i64 %_i3449, 1
  store i64 %_bop3450, i64* %_i3416
  br label %_pre3446
_post3445:
  %_j3452 = load i64, i64* %_j3420
  %_bop3453 = sub i64 %_j3452, 1
  store i64 %_bop3453, i64* %_j3420
  br label %_pre3462
_pre3462:
  %_a3457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_j3458 = load i64, i64* %_j3420
  %_ptr3455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3457, i32 0, i32 1, i64 %_j3458
  %_resPtr3456 = load i64, i64* %_ptr3455
  %_pivot3459 = load i64, i64* %_pivot3413
  %_bop3460 = icmp sgt i64 %_resPtr3456, %_pivot3459
  %_cnd3464 = icmp eq i1 %_bop3460, 0
  br i1 %_cnd3464, label %_post3461, label %_body3463
_body3463:
  %_j3465 = load i64, i64* %_j3420
  %_bop3466 = sub i64 %_j3465, 1
  store i64 %_bop3466, i64* %_j3420
  br label %_pre3462
_post3461:
  %_i3468 = load i64, i64* %_i3416
  %_j3469 = load i64, i64* %_j3420
  %_bop3470 = icmp sge i64 %_i3468, %_j3469
  br i1 %_bop3470, label %_if3473, label %_else3472
_if3473:
  store i64 1, i64* %_done3424
  br label %_after3471
_else3472:
  br label %_after3471
_after3471:
  %_done3476 = load i64, i64* %_done3424
  %_bop3477 = icmp eq i64 %_done3476, 0
  br i1 %_bop3477, label %_if3480, label %_else3479
_if3480:
  %_a3484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_i3485 = load i64, i64* %_i3416
  %_ptr3482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3484, i32 0, i32 1, i64 %_i3485
  %_resPtr3483 = load i64, i64* %_ptr3482
  store i64 %_resPtr3483, i64* %_t3422
  %_a3489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_j3490 = load i64, i64* %_j3420
  %_ptr3487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3489, i32 0, i32 1, i64 %_j3490
  %_resPtr3488 = load i64, i64* %_ptr3487
  %_a3491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_i3492 = load i64, i64* %_i3416
  %_ptr3493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3491, i32 0, i32 1, i64 %_i3492
  store i64 %_resPtr3488, i64* %_ptr3493
  %_t3495 = load i64, i64* %_t3422
  %_a3496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_j3497 = load i64, i64* %_j3420
  %_ptr3498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3496, i32 0, i32 1, i64 %_j3497
  store i64 %_t3495, i64* %_ptr3498
  br label %_after3478
_else3479:
  br label %_after3478
_after3478:
  br label %_pre3429
_post3428:
  %_a3502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_l3503 = load i64, i64* %_l3407
  %_ptr3500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3502, i32 0, i32 1, i64 %_l3503
  %_resPtr3501 = load i64, i64* %_ptr3500
  store i64 %_resPtr3501, i64* %_t3422
  %_a3507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_j3508 = load i64, i64* %_j3420
  %_ptr3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3507, i32 0, i32 1, i64 %_j3508
  %_resPtr3506 = load i64, i64* %_ptr3505
  %_a3509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_l3510 = load i64, i64* %_l3407
  %_ptr3511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3509, i32 0, i32 1, i64 %_l3510
  store i64 %_resPtr3506, i64* %_ptr3511
  %_t3513 = load i64, i64* %_t3422
  %_a3514 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3406
  %_j3515 = load i64, i64* %_j3420
  %_ptr3516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3514, i32 0, i32 1, i64 %_j3515
  store i64 %_t3513, i64* %_ptr3516
  %_j3518 = load i64, i64* %_j3420
  ret i64 %_j3518
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3390 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3365
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3367
  %_argv3367 = alloca { i64, [0 x i8*] }*
  %_argc3365 = alloca i64
  %_raw_array3370 = call i64* @oat_alloc_array(i64 9)
  %_array3371 = bitcast i64* %_raw_array3370 to { i64, [0 x i64] }*
  %_gep3372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 0
  store i64 107, i64* %_gep3372
  %_gep3374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3374
  %_gep3376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 2
  store i64 121, i64* %_gep3376
  %_gep3378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 3
  store i64 102, i64* %_gep3378
  %_gep3380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 4
  store i64 123, i64* %_gep3380
  %_gep3382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 5
  store i64 115, i64* %_gep3382
  %_gep3384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 6
  store i64 104, i64* %_gep3384
  %_gep3386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 7
  store i64 111, i64* %_gep3386
  %_gep3388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3371, i32 0, i32 1, i32 8
  store i64 109, i64* %_gep3388
  store { i64, [0 x i64] }* %_array3371, { i64, [0 x i64] }** %_a3390
  %_a3392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3390
  %_id3393 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3392)
  call void @print_string(i8* %_id3393)
  %_a3395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3390
  call void @quick_sort({ i64, [0 x i64] }* %_a3395, i64 0, i64 8)
  %_a3397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3390
  %_id3398 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3397)
  call void @print_string(i8* %_id3398)
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
