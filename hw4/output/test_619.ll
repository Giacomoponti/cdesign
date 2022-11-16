; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3653 = alloca i64
  store i64 %n, i64* %_n3653
  %_n3655 = load i64, i64* %_n3654
  %_bop3656 = icmp eq i64 %_n3655, 0
  br i1 %_bop3656, label %_if3659, label %_else3658
_if3659:
  ret i64 0
_else3658:
  br label %_after3657
_after3657:
  %_n3661 = load i64, i64* %_n3654
  %_bop3662 = icmp eq i64 %_n3661, 1
  br i1 %_bop3662, label %_if3665, label %_else3664
_if3665:
  ret i64 1
_else3664:
  br label %_after3663
_after3663:
  %_n3667 = load i64, i64* %_n3654
  %_bop3668 = sub i64 %_n3667, 1
  %_id3669 = call i64 @fibR(i64 %_bop3668)
  %_n3670 = load i64, i64* %_n3654
  %_bop3671 = sub i64 %_n3670, 2
  %_id3672 = call i64 @fibR(i64 %_bop3671)
  %_bop3673 = add i64 %_id3669, %_id3672
  ret i64 %_bop3673
}

define i64 @fibI(i64 %n) {
  %_a3612 = alloca i64
  %_b3614 = alloca i64
  %_old3638 = alloca i64
  %_n3610 = alloca i64
  store i64 %n, i64* %_n3610
  store i64 0, i64* %_a3612
  store i64 1, i64* %_b3614
  %_n3616 = load i64, i64* %_n3611
  %_bop3617 = icmp eq i64 %_n3616, 0
  br i1 %_bop3617, label %_if3620, label %_else3619
_if3620:
  %_a3622 = load i64, i64* %_a3612
  ret i64 %_a3622
_else3619:
  br label %_after3618
_after3618:
  %_n3623 = load i64, i64* %_n3611
  %_bop3624 = icmp eq i64 %_n3623, 1
  br i1 %_bop3624, label %_if3627, label %_else3626
_if3627:
  %_b3629 = load i64, i64* %_b3614
  ret i64 %_b3629
_else3626:
  br label %_after3625
_pre3634:
  br label %_pre3634
_post3633:
  br label %_pre3634
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val3596 = alloca i64
  %_argc3591 = alloca i64
  %_argv3593 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3593
  store i64 %argc, i64* %_argc3591
  store i64 1, i64* %_val3596
  %_id3598 = call i64 @fibR(i64 12)
  %_bop3599 = icmp eq i64 %_id3598, 144
  %_id3600 = call i64 @fibI(i64 12)
  %_bop3601 = icmp eq i64 %_id3600, 144
  %_bop3602 = and i1 %_bop3599, %_bop3601
  br i1 %_bop3602, label %_if3605, label %_else3604
_if3605:
  store i64 0, i64* %_val3596
  br label %_after3603
_else3604:
  br label %_after3603
_after3603:
  %_val3608 = load i64, i64* %_val3596
  ret i64 %_val3608
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
