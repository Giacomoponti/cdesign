; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a749 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc726 = alloca i64
  %_argv728 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv728
  store i64 %argc, i64* %_argc726
  %_raw_array731 = call i64* @oat_alloc_array(i64 2)
  %_array732 = bitcast i64* %_raw_array731 to { i64, [0 x i64] }*
  %_gep733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array732, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep733
  %_gep735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array732, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep735
  %_raw_array737 = call i64* @oat_alloc_array(i64 2)
  %_array738 = bitcast i64* %_raw_array737 to { i64, [0 x i64] }*
  %_gep739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array738, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep739
  %_gep741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array738, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep741
  %_raw_array743 = call i64* @oat_alloc_array(i64 2)
  %_array744 = bitcast i64* %_raw_array743 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array744, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array732, { i64, [0 x i64] }** %_gep745
  %_gep747 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array744, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array738, { i64, [0 x i64] }** %_gep747
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array744, { i64, [0 x { i64, [0 x i64] }*] }** %_a749
  %_a755 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a749
  %_ptr753 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a755, i32 0, i32 1, i32 0
  %_resPtr754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr753
  %_ptr751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr754, i32 0, i32 1, i32 1
  %_resPtr752 = load i64, i64* %_ptr751
  ret i64 %_resPtr752
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
