; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array667 = call i64* @oat_alloc_array(i64 2)
  %_array668 = bitcast i64* %_raw_array667 to { i64, [0 x i64] }*
  %_gep669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array668, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep669
  %_gep671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array668, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep671
  %_raw_array673 = call i64* @oat_alloc_array(i64 2)
  %_array674 = bitcast i64* %_raw_array673 to { i64, [0 x i64] }*
  %_gep675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array674, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep675
  %_gep677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array674, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep677
  %_raw_array679 = call i64* @oat_alloc_array(i64 2)
  %_array680 = bitcast i64* %_raw_array679 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep681 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array680, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array668, { i64, [0 x i64] }** %_gep681
  %_gep683 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array680, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array674, { i64, [0 x i64] }** %_gep683
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array680, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr690 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr690, i32 0, i32 1, i32 1
  %_resPtr689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr688
  %_ptr686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr689, i32 0, i32 1, i32 1
  %_resPtr687 = load i64, i64* %_ptr686
  ret i64 %_resPtr687
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
