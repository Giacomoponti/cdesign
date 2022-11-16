; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr814 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array796 = call i64* @oat_alloc_array(i64 2)
  %_array797 = bitcast i64* %_raw_array796 to { i64, [0 x i64] }*
  %_gep798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array797, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep798
  %_gep800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array797, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep800
  %_raw_array802 = call i64* @oat_alloc_array(i64 2)
  %_array803 = bitcast i64* %_raw_array802 to { i64, [0 x i64] }*
  %_gep804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array803, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep804
  %_gep806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array803, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep806
  %_raw_array808 = call i64* @oat_alloc_array(i64 2)
  %_array809 = bitcast i64* %_raw_array808 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep810 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array797, { i64, [0 x i64] }** %_gep810
  %_gep812 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array803, { i64, [0 x i64] }** %_gep812
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array809, { i64, [0 x { i64, [0 x i64] }*] }** %_arr814
  %_arr820 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr814
  %_ptr818 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr820, i32 0, i32 1, i32 1
  %_resPtr819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr818
  %_ptr816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr819, i32 0, i32 1, i32 1
  %_resPtr817 = load i64, i64* %_ptr816
  ret i64 %_resPtr817
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
