; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array674 = call i64* @oat_alloc_array(i64 2)
  %_array675 = bitcast i64* %_raw_array674 to { i64, [0 x i64] }*
  %_gep676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array675, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep676
  %_gep678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array675, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep678
  %_raw_array680 = call i64* @oat_alloc_array(i64 2)
  %_array681 = bitcast i64* %_raw_array680 to { i64, [0 x i64] }*
  %_gep682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array681, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep682
  %_gep684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array681, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep684
  %_raw_array686 = call i64* @oat_alloc_array(i64 2)
  %_array687 = bitcast i64* %_raw_array686 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array687, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array675, { i64, [0 x i64] }** %_gep688
  %_gep690 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array687, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array681, { i64, [0 x i64] }** %_gep690
  %_raw_array692 = call i64* @oat_alloc_array(i64 1)
  %_array693 = bitcast i64* %_raw_array692 to { i64, [0 x i64] }*
  %_gep694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array693, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep694
  %_raw_array696 = call i64* @oat_alloc_array(i64 1)
  %_array697 = bitcast i64* %_raw_array696 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep698 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array697, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array693, { i64, [0 x i64] }** %_gep698
  %_raw_array700 = call i64* @oat_alloc_array(i64 2)
  %_array701 = bitcast i64* %_raw_array700 to { i64, [0 x i64] }*
  %_gep702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array701, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep702
  %_gep704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array701, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep704
  %_raw_array706 = call i64* @oat_alloc_array(i64 2)
  %_array707 = bitcast i64* %_raw_array706 to { i64, [0 x i64] }*
  %_gep708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array707, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep708
  %_gep710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array707, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep710
  %_raw_array712 = call i64* @oat_alloc_array(i64 2)
  %_array713 = bitcast i64* %_raw_array712 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep714 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array713, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array701, { i64, [0 x i64] }** %_gep714
  %_gep716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array713, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array707, { i64, [0 x i64] }** %_gep716
  %_raw_array718 = call i64* @oat_alloc_array(i64 3)
  %_array719 = bitcast i64* %_raw_array718 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_gep720 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array719, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array687, { i64, [0 x { i64, [0 x i64] }*] }** %_gep720
  %_gep722 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array719, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array697, { i64, [0 x { i64, [0 x i64] }*] }** %_gep722
  %_gep724 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array719, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array713, { i64, [0 x { i64, [0 x i64] }*] }** %_gep724
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array719, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr733 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_ptr731 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr733, i32 0, i32 1, i32 2
  %_resPtr732 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr731
  %_ptr729 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_resPtr732, i32 0, i32 1, i32 0
  %_resPtr730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr729
  %_ptr727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr730, i32 0, i32 1, i32 1
  %_resPtr728 = load i64, i64* %_ptr727
  ret i64 %_resPtr728
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
