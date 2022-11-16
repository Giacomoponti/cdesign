; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr763 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array745 = call i64* @oat_alloc_array(i64 2)
  %_array746 = bitcast i64* %_raw_array745 to { i64, [0 x i64] }*
  %_gep747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array746, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep747
  %_gep749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array746, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep749
  %_raw_array751 = call i64* @oat_alloc_array(i64 2)
  %_array752 = bitcast i64* %_raw_array751 to { i64, [0 x i64] }*
  %_gep753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array752, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep753
  %_gep755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array752, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep755
  %_raw_array757 = call i64* @oat_alloc_array(i64 2)
  %_array758 = bitcast i64* %_raw_array757 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep759 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array758, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array746, { i64, [0 x i64] }** %_gep759
  %_gep761 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array758, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array752, { i64, [0 x i64] }** %_gep761
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array758, { i64, [0 x { i64, [0 x i64] }*] }** %_arr763
  %_arr769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr763
  %_ptr767 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr769, i32 0, i32 1, i32 1
  %_resPtr768 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr767
  %_ptr765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr768, i32 0, i32 1, i32 1
  %_resPtr766 = load i64, i64* %_ptr765
  ret i64 %_resPtr766
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
