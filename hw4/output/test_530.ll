; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_t5611 = alloca i64
  %_a5601 = alloca i64
  store i64 %a, i64* %_a5601
  %_b5603 = alloca i64
  store i64 %b, i64* %_b5603
  br label %_pre5607
_pre5607:
  %_b5604 = load i64, i64* %_b5603
  %_bop5605 = icmp ne i64 %_b5604, 0
  %_cnd5609 = icmp eq i1 %_bop5605, 0
  br i1 %_cnd5609, label %_post5606, label %_body5608
_body5608:
  %_b5610 = load i64, i64* %_b5603
  store i64 %_b5610, i64* %_t5611
  %_a5613 = load i64, i64* %_a5601
  %_b5614 = load i64, i64* %_b5603
  %_5615 = call i64 @mod(i64 %_a5613, i64 %_b5614)
  store i64 %_5615, i64* %_b5603
  %_t5617 = load i64, i64* %_t5611
  store i64 %_t5617, i64* %_a5601
  br label %_pre5607
_post5606:
  %_a5619 = load i64, i64* %_a5601
  ret i64 %_a5619
}

define i64 @mod(i64 %a, i64 %b) {
  %_t5585 = alloca i64
  %_a5581 = alloca i64
  store i64 %a, i64* %_a5581
  %_b5583 = alloca i64
  store i64 %b, i64* %_b5583
  %_a5584 = load i64, i64* %_a5581
  store i64 %_a5584, i64* %_t5585
  br label %_pre5592
_pre5592:
  %_t5587 = load i64, i64* %_t5585
  %_b5588 = load i64, i64* %_b5583
  %_bop5589 = sub i64 %_t5587, %_b5588
  %_bop5590 = icmp sge i64 %_bop5589, 0
  %_cnd5594 = icmp eq i1 %_bop5590, 0
  br i1 %_cnd5594, label %_post5591, label %_body5593
_body5593:
  %_t5595 = load i64, i64* %_t5585
  %_b5596 = load i64, i64* %_b5583
  %_bop5597 = sub i64 %_t5595, %_b5596
  store i64 %_bop5597, i64* %_t5585
  br label %_pre5592
_post5591:
  %_t5599 = load i64, i64* %_t5585
  ret i64 %_t5599
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a5573 = alloca i64
  %_b5575 = alloca i64
  %_argc5570 = alloca i64
  store i64 %argc, i64* %_argc5570
  %_argv5572 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5572
  store i64 64, i64* %_a5573
  store i64 48, i64* %_b5575
  %_a5577 = load i64, i64* %_a5573
  %_b5578 = load i64, i64* %_b5575
  %_5579 = call i64 @gcd(i64 %_a5577, i64 %_b5578)
  ret i64 %_5579
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
