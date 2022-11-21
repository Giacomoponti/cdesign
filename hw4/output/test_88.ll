; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_s3644 = global [2 x i8] c" \00"
@_s3645 = global i8* bitcast ([2 x i8]* @_s3644 to i8*)
@_s3651 = global [2 x i8] c" \00"
@_s3652 = global i8* bitcast ([2 x i8]* @_s3651 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i3613 = alloca i64
  %_a3637 = alloca { i64, [0 x i64] }*
  %_argc3610 = alloca i64
  store i64 %argc, i64* %_argc3610
  %_argv3612 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3612
  store i64 0, i64* %_i3613
  %_raw_array3615 = call i64* @oat_alloc_array(i64 10)
  %_array3616 = bitcast i64* %_raw_array3615 to { i64, [0 x i64] }*
  %_gep3617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep3617
  %_gep3619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3619
  %_gep3621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep3621
  %_gep3623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep3623
  %_gep3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep3625
  %_gep3627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep3627
  %_gep3629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep3629
  %_gep3631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3631
  %_gep3633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep3633
  %_gep3635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3616, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep3635
  store { i64, [0 x i64] }* %_array3616, { i64, [0 x i64] }** %_a3637
  %_a3639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3637
  %_3640 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3639)
  call void @print_string(i8* %_3640)
  %_a3642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3637
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3642, i64 0, i64 9)
  %_tmp3646 = load i8*, i8** @_s3645
  call void @print_string(i8* %_tmp3646)
  %_a3648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3637
  %_3649 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3648)
  call void @print_string(i8* %_3649)
  %_tmp3653 = load i8*, i8** @_s3652
  call void @print_string(i8* %_tmp3653)
  %_i3655 = load i64, i64* %_i3613
  ret i64 %_i3655
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_mid3581 = alloca i64
  %_a3576 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3576
  %_low3578 = alloca i64
  store i64 %low, i64* %_low3578
  %_high3580 = alloca i64
  store i64 %high, i64* %_high3580
  store i64 0, i64* %_mid3581
  %_low3583 = load i64, i64* %_low3578
  %_high3584 = load i64, i64* %_high3580
  %_bop3585 = icmp slt i64 %_low3583, %_high3584
  br i1 %_bop3585, label %_if3588, label %_else3587
_if3588:
  %_low3590 = load i64, i64* %_low3578
  %_high3591 = load i64, i64* %_high3580
  %_bop3592 = add i64 %_low3590, %_high3591
  %_bop3593 = lshr i64 %_bop3592, 1
  store i64 %_bop3593, i64* %_mid3581
  %_a3595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3576
  %_low3596 = load i64, i64* %_low3578
  %_mid3597 = load i64, i64* %_mid3581
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3595, i64 %_low3596, i64 %_mid3597)
  %_a3599 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3576
  %_mid3600 = load i64, i64* %_mid3581
  %_bop3601 = add i64 %_mid3600, 1
  %_high3602 = load i64, i64* %_high3580
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3599, i64 %_bop3601, i64 %_high3602)
  %_a3604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3576
  %_low3605 = load i64, i64* %_low3578
  %_high3606 = load i64, i64* %_high3580
  %_mid3607 = load i64, i64* %_mid3581
  call void @merge({ i64, [0 x i64] }* %_a3604, i64 %_low3605, i64 %_high3606, i64 %_mid3607)
  br label %_after3586
_else3587:
  br label %_after3586
_after3586:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_i3444 = alloca i64
  %_j3446 = alloca i64
  %_k3448 = alloca i64
  %_c3452 = alloca { i64, [0 x i64] }*
  %_a3437 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3437
  %_low3439 = alloca i64
  store i64 %low, i64* %_low3439
  %_high3441 = alloca i64
  store i64 %high, i64* %_high3441
  %_mid3443 = alloca i64
  store i64 %mid, i64* %_mid3443
  store i64 0, i64* %_i3444
  store i64 0, i64* %_j3446
  store i64 0, i64* %_k3448
  %_raw_array3450 = call i64* @oat_alloc_array(i64 50)
  %_array3451 = bitcast i64* %_raw_array3450 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3451, { i64, [0 x i64] }** %_c3452
  %_low3454 = load i64, i64* %_low3439
  store i64 %_low3454, i64* %_i3444
  %_mid3456 = load i64, i64* %_mid3443
  %_bop3457 = add i64 %_mid3456, 1
  store i64 %_bop3457, i64* %_j3446
  %_low3459 = load i64, i64* %_low3439
  store i64 %_low3459, i64* %_k3448
  br label %_pre3469
_pre3469:
  %_i3461 = load i64, i64* %_i3444
  %_mid3462 = load i64, i64* %_mid3443
  %_bop3463 = icmp sle i64 %_i3461, %_mid3462
  %_j3464 = load i64, i64* %_j3446
  %_high3465 = load i64, i64* %_high3441
  %_bop3466 = icmp sle i64 %_j3464, %_high3465
  %_bop3467 = and i1 %_bop3463, %_bop3466
  %_cnd3471 = icmp eq i1 %_bop3467, 0
  br i1 %_cnd3471, label %_post3468, label %_body3470
_body3470:
  %_a3474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_i3475 = load i64, i64* %_i3444
  %_ptr3472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3474, i32 0, i32 1, i64 %_i3475
  %_resPtr3473 = load i64, i64* %_ptr3472
  %_a3478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_j3479 = load i64, i64* %_j3446
  %_ptr3476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3478, i32 0, i32 1, i64 %_j3479
  %_resPtr3477 = load i64, i64* %_ptr3476
  %_bop3480 = icmp slt i64 %_resPtr3473, %_resPtr3477
  br i1 %_bop3480, label %_if3483, label %_else3482
_if3483:
  %_a3501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_i3502 = load i64, i64* %_i3444
  %_ptr3499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3501, i32 0, i32 1, i64 %_i3502
  %_resPtr3500 = load i64, i64* %_ptr3499
  %_c3503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3452
  %_k3504 = load i64, i64* %_k3448
  %_ptr3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3503, i32 0, i32 1, i64 %_k3504
  store i64 %_resPtr3500, i64* %_ptr3505
  %_k3507 = load i64, i64* %_k3448
  %_bop3508 = add i64 %_k3507, 1
  store i64 %_bop3508, i64* %_k3448
  %_i3510 = load i64, i64* %_i3444
  %_bop3511 = add i64 %_i3510, 1
  store i64 %_bop3511, i64* %_i3444
  br label %_after3481
_else3482:
  %_a3487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_j3488 = load i64, i64* %_j3446
  %_ptr3485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3487, i32 0, i32 1, i64 %_j3488
  %_resPtr3486 = load i64, i64* %_ptr3485
  %_c3489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3452
  %_k3490 = load i64, i64* %_k3448
  %_ptr3491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3489, i32 0, i32 1, i64 %_k3490
  store i64 %_resPtr3486, i64* %_ptr3491
  %_k3493 = load i64, i64* %_k3448
  %_bop3494 = add i64 %_k3493, 1
  store i64 %_bop3494, i64* %_k3448
  %_j3496 = load i64, i64* %_j3446
  %_bop3497 = add i64 %_j3496, 1
  store i64 %_bop3497, i64* %_j3446
  br label %_after3481
_after3481:
  br label %_pre3469
_post3468:
  br label %_pre3517
_pre3517:
  %_i3513 = load i64, i64* %_i3444
  %_mid3514 = load i64, i64* %_mid3443
  %_bop3515 = icmp sle i64 %_i3513, %_mid3514
  %_cnd3519 = icmp eq i1 %_bop3515, 0
  br i1 %_cnd3519, label %_post3516, label %_body3518
_body3518:
  %_a3522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_i3523 = load i64, i64* %_i3444
  %_ptr3520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3522, i32 0, i32 1, i64 %_i3523
  %_resPtr3521 = load i64, i64* %_ptr3520
  %_c3524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3452
  %_k3525 = load i64, i64* %_k3448
  %_ptr3526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3524, i32 0, i32 1, i64 %_k3525
  store i64 %_resPtr3521, i64* %_ptr3526
  %_k3528 = load i64, i64* %_k3448
  %_bop3529 = add i64 %_k3528, 1
  store i64 %_bop3529, i64* %_k3448
  %_i3531 = load i64, i64* %_i3444
  %_bop3532 = add i64 %_i3531, 1
  store i64 %_bop3532, i64* %_i3444
  br label %_pre3517
_post3516:
  br label %_pre3538
_pre3538:
  %_j3534 = load i64, i64* %_j3446
  %_high3535 = load i64, i64* %_high3441
  %_bop3536 = icmp sle i64 %_j3534, %_high3535
  %_cnd3540 = icmp eq i1 %_bop3536, 0
  br i1 %_cnd3540, label %_post3537, label %_body3539
_body3539:
  %_a3543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_j3544 = load i64, i64* %_j3446
  %_ptr3541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3543, i32 0, i32 1, i64 %_j3544
  %_resPtr3542 = load i64, i64* %_ptr3541
  %_c3545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3452
  %_k3546 = load i64, i64* %_k3448
  %_ptr3547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3545, i32 0, i32 1, i64 %_k3546
  store i64 %_resPtr3542, i64* %_ptr3547
  %_k3549 = load i64, i64* %_k3448
  %_bop3550 = add i64 %_k3549, 1
  store i64 %_bop3550, i64* %_k3448
  %_j3552 = load i64, i64* %_j3446
  %_bop3553 = add i64 %_j3552, 1
  store i64 %_bop3553, i64* %_j3446
  br label %_pre3538
_post3537:
  %_low3555 = load i64, i64* %_low3439
  store i64 %_low3555, i64* %_i3444
  br label %_pre3561
_pre3561:
  %_i3557 = load i64, i64* %_i3444
  %_k3558 = load i64, i64* %_k3448
  %_bop3559 = icmp slt i64 %_i3557, %_k3558
  %_cnd3563 = icmp eq i1 %_bop3559, 0
  br i1 %_cnd3563, label %_post3560, label %_body3562
_body3562:
  %_c3566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3452
  %_i3567 = load i64, i64* %_i3444
  %_ptr3564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3566, i32 0, i32 1, i64 %_i3567
  %_resPtr3565 = load i64, i64* %_ptr3564
  %_a3568 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3437
  %_i3569 = load i64, i64* %_i3444
  %_ptr3570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3568, i32 0, i32 1, i64 %_i3569
  store i64 %_resPtr3565, i64* %_ptr3570
  %_i3572 = load i64, i64* %_i3444
  %_bop3573 = add i64 %_i3572, 1
  store i64 %_bop3573, i64* %_i3444
  br label %_pre3561
_post3560:
  ret void
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
