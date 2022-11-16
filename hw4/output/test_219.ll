; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array725 = call i64* @oat_alloc_array(i64 2)
  %_array726 = bitcast i64* %_raw_array725 to { i64, [0 x i64] }*
  %_gep727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array726, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep727
  %_gep729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array726, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep729
  %_raw_array731 = call i64* @oat_alloc_array(i64 2)
  %_array732 = bitcast i64* %_raw_array731 to { i64, [0 x i64] }*
  %_gep733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array732, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep733
  %_gep735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array732, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep735
  %_raw_array737 = call i64* @oat_alloc_array(i64 2)
  %_array738 = bitcast i64* %_raw_array737 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep739 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array738, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array726, { i64, [0 x i64] }** %_gep739
  %_gep741 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array738, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array732, { i64, [0 x i64] }** %_gep741
  %_raw_array743 = call i64* @oat_alloc_array(i64 1)
  %_array744 = bitcast i64* %_raw_array743 to { i64, [0 x i64] }*
  %_gep745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array744, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep745
  %_raw_array747 = call i64* @oat_alloc_array(i64 1)
  %_array748 = bitcast i64* %_raw_array747 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep749 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array748, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array744, { i64, [0 x i64] }** %_gep749
  %_raw_array751 = call i64* @oat_alloc_array(i64 2)
  %_array752 = bitcast i64* %_raw_array751 to { i64, [0 x i64] }*
  %_gep753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array752, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep753
  %_gep755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array752, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep755
  %_raw_array757 = call i64* @oat_alloc_array(i64 2)
  %_array758 = bitcast i64* %_raw_array757 to { i64, [0 x i64] }*
  %_gep759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep759
  %_gep761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep761
  %_raw_array763 = call i64* @oat_alloc_array(i64 2)
  %_array764 = bitcast i64* %_raw_array763 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep765 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array764, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array752, { i64, [0 x i64] }** %_gep765
  %_gep767 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array764, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array758, { i64, [0 x i64] }** %_gep767
  %_raw_array769 = call i64* @oat_alloc_array(i64 3)
  %_array770 = bitcast i64* %_raw_array769 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep771 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array770, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array738, { i64, [0 x { i64, [0 x i64] }*] }** %_gep771
  %_gep773 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array770, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array748, { i64, [0 x { i64, [0 x i64] }*] }** %_gep773
  %_gep775 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array770, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array764, { i64, [0 x { i64, [0 x i64] }*] }** %_gep775
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array770, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr784 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr782 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr784, i32 0, i32 1, i32 2
  %_resPtr783 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr782
  %_ptr780 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr783, i32 0, i32 1, i32 0
  %_resPtr781 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr780
  %_ptr778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr781, i32 0, i32 1, i32 1
  %_resPtr779 = load i64, i64* %_ptr778
  ret i64 %_resPtr779
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
