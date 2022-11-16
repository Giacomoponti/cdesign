; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr805 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array787 = call i64* @oat_alloc_array(i64 2)
  %_array788 = bitcast i64* %_raw_array787 to { i64, [0 x i64] }*
  %_gep789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array788, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep789
  %_gep791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array788, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep791
  %_raw_array793 = call i64* @oat_alloc_array(i64 2)
  %_array794 = bitcast i64* %_raw_array793 to { i64, [0 x i64] }*
  %_gep795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array794, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep795
  %_gep797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array794, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep797
  %_raw_array799 = call i64* @oat_alloc_array(i64 2)
  %_array800 = bitcast i64* %_raw_array799 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep801 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array800, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array788, { i64, [0 x i64] }** %_gep801
  %_gep803 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array800, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array794, { i64, [0 x i64] }** %_gep803
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array800, { i64, [0 x { i64, [0 x i64] }*] }** %_arr805
  %_arr811 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr805
  %_ptr809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr811, i32 0, i32 1, i32 1
  %_resPtr810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr809
  %_ptr807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr810, i32 0, i32 1, i32 1
  %_resPtr808 = load i64, i64* %_ptr807
  ret i64 %_resPtr808
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
