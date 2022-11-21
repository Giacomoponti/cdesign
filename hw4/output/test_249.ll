; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_s718 = alloca i64
  %_i720 = alloca i64
  %_j728 = alloca i64
  %_argc676 = alloca i64
  store i64 %argc, i64* %_argc676
  %_argv678 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv678
  %_raw_array679 = call i64* @oat_alloc_array(i64 4)
  %_array680 = bitcast i64* %_raw_array679 to { i64, [0 x i64] }*
  %_gep681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array680, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep681
  %_gep683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array680, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep683
  %_gep685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array680, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep685
  %_gep687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array680, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep687
  %_raw_array689 = call i64* @oat_alloc_array(i64 4)
  %_array690 = bitcast i64* %_raw_array689 to { i64, [0 x i64] }*
  %_gep691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep691
  %_gep693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep693
  %_gep695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep695
  %_gep697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep697
  %_raw_array699 = call i64* @oat_alloc_array(i64 4)
  %_array700 = bitcast i64* %_raw_array699 to { i64, [0 x i64] }*
  %_gep701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array700, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep701
  %_gep703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array700, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep703
  %_gep705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array700, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep705
  %_gep707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array700, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep707
  %_raw_array709 = call i64* @oat_alloc_array(i64 3)
  %_array710 = bitcast i64* %_raw_array709 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep711 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array710, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array680, { i64, [0 x i64] }** %_gep711
  %_gep713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array710, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array690, { i64, [0 x i64] }** %_gep713
  %_gep715 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array710, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array700, { i64, [0 x i64] }** %_gep715
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array710, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s718
  store i64 0, i64* %_i720
  br label %_pre725
_pre725:
  %_i722 = load i64, i64* %_i720
  %_bop723 = icmp slt i64 %_i722, 3
  %_cnd727 = icmp eq i1 %_bop723, 0
  br i1 %_cnd727, label %_post724, label %_body726
_body726:
  store i64 0, i64* %_j728
  br label %_pre733
_pre733:
  %_j730 = load i64, i64* %_j728
  %_bop731 = icmp slt i64 %_j730, 4
  %_cnd735 = icmp eq i1 %_bop731, 0
  br i1 %_cnd735, label %_post732, label %_body734
_body734:
  %_s736 = load i64, i64* %_s718
  %_a741 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i742 = load i64, i64* %_i720
  %_ptr739 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a741, i32 0, i32 1, i64 %_i742
  %_resPtr740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr739
  %_j743 = load i64, i64* %_j728
  %_ptr737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr740, i32 0, i32 1, i64 %_j743
  %_resPtr738 = load i64, i64* %_ptr737
  %_bop744 = add i64 %_s736, %_resPtr738
  store i64 %_bop744, i64* %_s718
  %_j746 = load i64, i64* %_j728
  %_bop747 = add i64 %_j746, 1
  store i64 %_bop747, i64* %_j728
  br label %_pre733
_post732:
  %_i749 = load i64, i64* %_i720
  %_bop750 = add i64 %_i749, 1
  store i64 %_bop750, i64* %_i720
  br label %_pre725
_post724:
  %_s752 = load i64, i64* %_s718
  ret i64 %_s752
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
