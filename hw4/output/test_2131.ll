; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_t5650 = alloca i64
  %_a5638 = alloca i64
  %_b5640 = alloca i64
  store i64 %b, i64* %_b5640
  store i64 %a, i64* %_a5638
  br label %_pre5646
_pre5646:
  %_b5643 = load i64, i64* %_b5642
  %_bop5644 = icmp ne i64 %_b5643, 0
  %_cnd5648 = icmp eq i1 %_bop5644, 0
  br i1 %_cnd5648, label %_post5645, label %_body5647
_body5647:
  %_b5649 = load i64, i64* %_b5642
  store i64 %_b5649, i64* %_t5650
  %_a5652 = load i64, i64* %_a5641
  %_b5653 = load i64, i64* %_b5642
  %_id5654 = call i64 @mod(i64 %_a5652, i64 %_b5653)
  store i64 %_id5654, i64* %_b5642
  %_t5656 = load i64, i64* %_t5650
  store i64 %_t5656, i64* %_a5641
  br label %_pre5646
_post5645:
  %_a5658 = load i64, i64* %_a5641
  ret i64 %_a5658
}

define i64 @mod(i64 %a, i64 %b) {
  %_t5622 = alloca i64
  %_a5616 = alloca i64
  %_b5618 = alloca i64
  store i64 %b, i64* %_b5618
  store i64 %a, i64* %_a5616
  %_a5621 = load i64, i64* %_a5619
  store i64 %_a5621, i64* %_t5622
  br label %_pre5629
_pre5629:
  %_t5624 = load i64, i64* %_t5622
  %_b5625 = load i64, i64* %_b5620
  %_bop5626 = sub i64 %_t5624, %_b5625
  %_bop5627 = icmp sge i64 %_bop5626, 0
  %_cnd5631 = icmp eq i1 %_bop5627, 0
  br i1 %_cnd5631, label %_post5628, label %_body5630
_body5630:
  %_t5632 = load i64, i64* %_t5622
  %_b5633 = load i64, i64* %_b5620
  %_bop5634 = sub i64 %_t5632, %_b5633
  store i64 %_bop5634, i64* %_t5622
  br label %_pre5629
_post5628:
  %_t5636 = load i64, i64* %_t5622
  ret i64 %_t5636
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a5608 = alloca i64
  %_b5610 = alloca i64
  %_argc5603 = alloca i64
  %_argv5605 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5605
  store i64 %argc, i64* %_argc5603
  store i64 64, i64* %_a5608
  store i64 48, i64* %_b5610
  %_a5612 = load i64, i64* %_a5608
  %_b5613 = load i64, i64* %_b5610
  %_id5614 = call i64 @gcd(i64 %_a5612, i64 %_b5613)
  ret i64 %_id5614
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
