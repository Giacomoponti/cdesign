; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a719 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s721 = alloca i64
  %_i723 = alloca i64
  %_j731 = alloca i64
  %_argc676 = alloca i64
  %_argv678 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv678
  store i64 %argc, i64* %_argc676
  %_raw_array681 = call i64* @oat_alloc_array(i64 4)
  %_array682 = bitcast i64* %_raw_array681 to { i64, [0 x i64] }*
  %_gep683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep683
  %_gep685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep685
  %_gep687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep687
  %_gep689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep689
  %_raw_array691 = call i64* @oat_alloc_array(i64 4)
  %_array692 = bitcast i64* %_raw_array691 to { i64, [0 x i64] }*
  %_gep693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array692, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep693
  %_gep695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array692, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep695
  %_gep697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array692, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep697
  %_gep699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array692, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep699
  %_raw_array701 = call i64* @oat_alloc_array(i64 4)
  %_array702 = bitcast i64* %_raw_array701 to { i64, [0 x i64] }*
  %_gep703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array702, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep703
  %_gep705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array702, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep705
  %_gep707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array702, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep707
  %_gep709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array702, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep709
  %_raw_array711 = call i64* @oat_alloc_array(i64 3)
  %_array712 = bitcast i64* %_raw_array711 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array712, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array682, { i64, [0 x i64] }** %_gep713
  %_gep715 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array712, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array692, { i64, [0 x i64] }** %_gep715
  %_gep717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array712, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array702, { i64, [0 x i64] }** %_gep717
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array712, { i64, [0 x { i64, [0 x i64] }*] }** %_a719
  store i64 0, i64* %_s721
  store i64 0, i64* %_i723
  br label %_pre728
_pre728:
  %_i725 = load i64, i64* %_i723
  %_bop726 = icmp slt i64 %_i725, 3
  %_cnd730 = icmp eq i1 %_bop726, 0
  br i1 %_cnd730, label %_post727, label %_body729
_body729:
  store i64 0, i64* %_j731
  br label %_pre736
_pre736:
  %_j733 = load i64, i64* %_j731
  %_bop734 = icmp slt i64 %_j733, 4
  %_cnd738 = icmp eq i1 %_bop734, 0
  br i1 %_cnd738, label %_post735, label %_body737
_body737:
  %_s739 = load i64, i64* %_s721
  %_a744 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a719
  %_i745 = load i64, i64* %_i723
  %_ptr742 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a744, i32 0, i32 1, i64 %_i745
  %_resPtr743 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr742
  %_j746 = load i64, i64* %_j731
  %_ptr740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr743, i32 0, i32 1, i64 %_j746
  %_resPtr741 = load i64, i64* %_ptr740
  %_bop747 = add i64 %_s739, %_resPtr741
  store i64 %_bop747, i64* %_s721
  %_j749 = load i64, i64* %_j731
  %_bop750 = add i64 %_j749, 1
  store i64 %_bop750, i64* %_j731
  br label %_pre736
_post735:
  %_i752 = load i64, i64* %_i723
  %_bop753 = add i64 %_i752, 1
  store i64 %_bop753, i64* %_i723
  br label %_pre728
_post727:
  %_s755 = load i64, i64* %_s721
  ret i64 %_s755
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
