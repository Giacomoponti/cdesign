; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a638 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s640 = alloca i64
  %_i642 = alloca i64
  %_j650 = alloca i64
  %_argc597 = alloca i64
  store i64 %argc, i64* %_argc597
  %_argv599 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv599
  %_raw_array600 = call i64* @oat_alloc_array(i64 4)
  %_array601 = bitcast i64* %_raw_array600 to { i64, [0 x i64] }*
  %_gep602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array601, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep602
  %_gep604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array601, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep604
  %_gep606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array601, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep606
  %_gep608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array601, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep608
  %_raw_array610 = call i64* @oat_alloc_array(i64 4)
  %_array611 = bitcast i64* %_raw_array610 to { i64, [0 x i64] }*
  %_gep612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array611, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep612
  %_gep614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array611, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep614
  %_gep616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array611, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep616
  %_gep618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array611, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep618
  %_raw_array620 = call i64* @oat_alloc_array(i64 4)
  %_array621 = bitcast i64* %_raw_array620 to { i64, [0 x i64] }*
  %_gep622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array621, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep622
  %_gep624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array621, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep624
  %_gep626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array621, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep626
  %_gep628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array621, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep628
  %_raw_array630 = call i64* @oat_alloc_array(i64 3)
  %_array631 = bitcast i64* %_raw_array630 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep632 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array631, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array601, { i64, [0 x i64] }** %_gep632
  %_gep634 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array631, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array611, { i64, [0 x i64] }** %_gep634
  %_gep636 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array631, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array621, { i64, [0 x i64] }** %_gep636
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array631, { i64, [0 x { i64, [0 x i64] }*] }** %_a638
  store i64 0, i64* %_s640
  store i64 0, i64* %_i642
  br label %_pre647
_pre647:
  %_i644 = load i64, i64* %_i642
  %_bop645 = icmp slt i64 %_i644, 3
  %_cnd649 = icmp eq i1 %_bop645, 0
  br i1 %_cnd649, label %_post646, label %_body648
_body648:
  store i64 0, i64* %_j650
  br label %_pre655
_pre655:
  %_j652 = load i64, i64* %_j650
  %_bop653 = icmp slt i64 %_j652, 4
  %_cnd657 = icmp eq i1 %_bop653, 0
  br i1 %_cnd657, label %_post654, label %_body656
_body656:
  %_s658 = load i64, i64* %_s640
  %_a663 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a638
  %_i664 = load i64, i64* %_i642
  %_ptr661 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a663, i32 0, i32 1, i64 %_i664
  %_resPtr662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr661
  %_j665 = load i64, i64* %_j650
  %_ptr659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr662, i32 0, i32 1, i64 %_j665
  %_resPtr660 = load i64, i64* %_ptr659
  %_bop666 = add i64 %_s658, %_resPtr660
  store i64 %_bop666, i64* %_s640
  %_j668 = load i64, i64* %_j650
  %_bop669 = add i64 %_j668, 1
  store i64 %_bop669, i64* %_j650
  br label %_pre655
_post654:
  %_i671 = load i64, i64* %_i642
  %_bop672 = add i64 %_i671, 1
  store i64 %_bop672, i64* %_i642
  br label %_pre647
_post646:
  %_s674 = load i64, i64* %_s640
  ret i64 %_s674
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
