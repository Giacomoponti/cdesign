; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_s804 = alloca i64
  %_i806 = alloca i64
  %_j814 = alloca i64
  %_argc760 = alloca i64
  %_argv762 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv762
  store i64 %argc, i64* %_argc760
  %_raw_array765 = call i64* @oat_alloc_array(i64 4)
  %_array766 = bitcast i64* %_raw_array765 to { i64, [0 x i64] }*
  %_gep767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array766, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep767
  %_gep769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array766, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep769
  %_gep771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array766, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep771
  %_gep773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array766, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep773
  %_raw_array775 = call i64* @oat_alloc_array(i64 4)
  %_array776 = bitcast i64* %_raw_array775 to { i64, [0 x i64] }*
  %_gep777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array776, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep777
  %_gep779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array776, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep779
  %_gep781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array776, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep781
  %_gep783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array776, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep783
  %_raw_array785 = call i64* @oat_alloc_array(i64 4)
  %_array786 = bitcast i64* %_raw_array785 to { i64, [0 x i64] }*
  %_gep787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array786, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep787
  %_gep789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array786, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep789
  %_gep791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array786, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep791
  %_gep793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array786, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep793
  %_raw_array795 = call i64* @oat_alloc_array(i64 3)
  %_array796 = bitcast i64* %_raw_array795 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep797 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array796, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array766, { i64, [0 x i64] }** %_gep797
  %_gep799 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array796, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array776, { i64, [0 x i64] }** %_gep799
  %_gep801 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array796, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array786, { i64, [0 x i64] }** %_gep801
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array796, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s804
  store i64 0, i64* %_i806
  br label %_pre811
_pre811:
  %_i808 = load i64, i64* %_i806
  %_bop809 = icmp slt i64 %_i808, 3
  %_cnd813 = icmp eq i1 %_bop809, 0
  br i1 %_cnd813, label %_post810, label %_body812
_body812:
  store i64 0, i64* %_j814
  br label %_pre819
_pre819:
  %_j816 = load i64, i64* %_j814
  %_bop817 = icmp slt i64 %_j816, 4
  %_cnd821 = icmp eq i1 %_bop817, 0
  br i1 %_cnd821, label %_post818, label %_body820
_body820:
  %_s822 = load i64, i64* %_s804
  %_a827 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i828 = load i64, i64* %_i806
  %_ptr825 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a827, i32 0, i32 1, i64 %_i828
  %_resPtr826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr825
  %_j829 = load i64, i64* %_j814
  %_ptr823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr826, i32 0, i32 1, i64 %_j829
  %_resPtr824 = load i64, i64* %_ptr823
  %_bop830 = add i64 %_s822, %_resPtr824
  store i64 %_bop830, i64* %_s804
  %_j832 = load i64, i64* %_j814
  %_bop833 = add i64 %_j832, 1
  store i64 %_bop833, i64* %_j814
  br label %_pre819
_post818:
  %_i835 = load i64, i64* %_i806
  %_bop836 = add i64 %_i835, 1
  store i64 %_bop836, i64* %_i806
  br label %_pre811
_post810:
  %_s838 = load i64, i64* %_s804
  ret i64 %_s838
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
