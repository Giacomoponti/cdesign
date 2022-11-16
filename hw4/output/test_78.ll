; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array716 = call i64* @oat_alloc_array(i64 2)
  %_array717 = bitcast i64* %_raw_array716 to { i64, [0 x i64] }*
  %_gep718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array717, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep718
  %_gep720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array717, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep720
  %_raw_array722 = call i64* @oat_alloc_array(i64 2)
  %_array723 = bitcast i64* %_raw_array722 to { i64, [0 x i64] }*
  %_gep724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array723, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep724
  %_gep726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array723, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep726
  %_raw_array728 = call i64* @oat_alloc_array(i64 2)
  %_array729 = bitcast i64* %_raw_array728 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep730 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array729, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array717, { i64, [0 x i64] }** %_gep730
  %_gep732 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array729, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array723, { i64, [0 x i64] }** %_gep732
  %_raw_array734 = call i64* @oat_alloc_array(i64 1)
  %_array735 = bitcast i64* %_raw_array734 to { i64, [0 x i64] }*
  %_gep736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array735, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep736
  %_raw_array738 = call i64* @oat_alloc_array(i64 1)
  %_array739 = bitcast i64* %_raw_array738 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep740 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array739, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array735, { i64, [0 x i64] }** %_gep740
  %_raw_array742 = call i64* @oat_alloc_array(i64 2)
  %_array743 = bitcast i64* %_raw_array742 to { i64, [0 x i64] }*
  %_gep744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array743, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep744
  %_gep746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array743, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep746
  %_raw_array748 = call i64* @oat_alloc_array(i64 2)
  %_array749 = bitcast i64* %_raw_array748 to { i64, [0 x i64] }*
  %_gep750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array749, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep750
  %_gep752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array749, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep752
  %_raw_array754 = call i64* @oat_alloc_array(i64 2)
  %_array755 = bitcast i64* %_raw_array754 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep756 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array755, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array743, { i64, [0 x i64] }** %_gep756
  %_gep758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array755, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array749, { i64, [0 x i64] }** %_gep758
  %_raw_array760 = call i64* @oat_alloc_array(i64 3)
  %_array761 = bitcast i64* %_raw_array760 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep762 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array761, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array729, { i64, [0 x { i64, [0 x i64] }*] }** %_gep762
  %_gep764 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array761, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array739, { i64, [0 x { i64, [0 x i64] }*] }** %_gep764
  %_gep766 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array761, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array755, { i64, [0 x { i64, [0 x i64] }*] }** %_gep766
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array761, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr775 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr773 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr775, i32 0, i32 1, i32 2
  %_resPtr774 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr773
  %_ptr771 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr774, i32 0, i32 1, i32 0
  %_resPtr772 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr771
  %_ptr769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr772, i32 0, i32 1, i32 1
  %_resPtr770 = load i64, i64* %_ptr769
  ret i64 %_resPtr770
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
