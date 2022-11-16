; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a751 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc728 = alloca i64
  %_argv730 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv730
  store i64 %argc, i64* %_argc728
  %_raw_array733 = call i64* @oat_alloc_array(i64 2)
  %_array734 = bitcast i64* %_raw_array733 to { i64, [0 x i64] }*
  %_gep735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep735
  %_gep737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep737
  %_raw_array739 = call i64* @oat_alloc_array(i64 2)
  %_array740 = bitcast i64* %_raw_array739 to { i64, [0 x i64] }*
  %_gep741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array740, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep741
  %_gep743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array740, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep743
  %_raw_array745 = call i64* @oat_alloc_array(i64 2)
  %_array746 = bitcast i64* %_raw_array745 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep747 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array746, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array734, { i64, [0 x i64] }** %_gep747
  %_gep749 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array746, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array740, { i64, [0 x i64] }** %_gep749
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array746, { i64, [0 x { i64, [0 x i64] }*] }** %_a751
  %_a757 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a751
  %_ptr755 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a757, i32 0, i32 1, i32 0
  %_resPtr756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr755
  %_ptr753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr756, i32 0, i32 1, i32 1
  %_resPtr754 = load i64, i64* %_ptr753
  ret i64 %_resPtr754
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
