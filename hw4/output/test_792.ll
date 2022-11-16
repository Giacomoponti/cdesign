; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_t5578 = alloca i64
  %_a5566 = alloca i64
  %_b5568 = alloca i64
  store i64 %b, i64* %_b5568
  store i64 %a, i64* %_a5566
  br label %_pre5574
_pre5574:
  %_cnd5576 = icmp eq i1 %_bop5572, 0
  br i1 %_cnd5576, label %_post5573, label %_body5575
_body5575:
  %_b5571 = load i64, i64* %_b5570
  %_bop5572 = icmp ne i64 %_b5571, 0
  %_b5577 = load i64, i64* %_b5570
  store i64 %_b5577, i64* %_t5578
  %_a5580 = load i64, i64* %_a5569
  %_b5581 = load i64, i64* %_b5570
  %_id5582 = call i64 @mod(i64 %_a5580, i64 %_b5581)
  store i64 %_id5582, i64* %_b5570
  %_t5584 = load i64, i64* %_t5578
  store i64 %_t5584, i64* %_a5569
  br label %_pre5574
_post5573:
  %_a5586 = load i64, i64* %_a5569
  ret i64 %_a5586
}

define i64 @mod(i64 %a, i64 %b) {
  %_t5550 = alloca i64
  %_a5544 = alloca i64
  %_b5546 = alloca i64
  store i64 %b, i64* %_b5546
  store i64 %a, i64* %_a5544
  %_a5549 = load i64, i64* %_a5547
  store i64 %_a5549, i64* %_t5550
  br label %_pre5557
_pre5557:
  %_cnd5559 = icmp eq i1 %_bop5555, 0
  br i1 %_cnd5559, label %_post5556, label %_body5558
_body5558:
  %_t5552 = load i64, i64* %_t5550
  %_b5553 = load i64, i64* %_b5548
  %_bop5554 = sub i64 %_t5552, %_b5553
  %_bop5555 = icmp sge i64 %_bop5554, 0
  %_t5560 = load i64, i64* %_t5550
  %_b5561 = load i64, i64* %_b5548
  %_bop5562 = sub i64 %_t5560, %_b5561
  store i64 %_bop5562, i64* %_t5550
  br label %_pre5557
_post5556:
  %_t5564 = load i64, i64* %_t5550
  ret i64 %_t5564
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a5536 = alloca i64
  %_b5538 = alloca i64
  %_argc5531 = alloca i64
  %_argv5533 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5533
  store i64 %argc, i64* %_argc5531
  store i64 64, i64* %_a5536
  store i64 48, i64* %_b5538
  %_a5540 = load i64, i64* %_a5536
  %_b5541 = load i64, i64* %_b5538
  %_id5542 = call i64 @gcd(i64 %_a5540, i64 %_b5541)
  ret i64 %_id5542
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
