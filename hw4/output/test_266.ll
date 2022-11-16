; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array676 = call i64* @oat_alloc_array(i64 2)
  %_array677 = bitcast i64* %_raw_array676 to { i64, [0 x i64] }*
  %_gep678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array677, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep678
  %_gep680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array677, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep680
  %_raw_array682 = call i64* @oat_alloc_array(i64 2)
  %_array683 = bitcast i64* %_raw_array682 to { i64, [0 x i64] }*
  %_gep684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep684
  %_gep686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep686
  %_raw_array688 = call i64* @oat_alloc_array(i64 2)
  %_array689 = bitcast i64* %_raw_array688 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep690 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array689, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array677, { i64, [0 x i64] }** %_gep690
  %_gep692 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array689, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array683, { i64, [0 x i64] }** %_gep692
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array689, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr699 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr697 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr699, i32 0, i32 1, i32 1
  %_resPtr698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr697
  %_ptr695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr698, i32 0, i32 1, i32 1
  %_resPtr696 = load i64, i64* %_ptr695
  ret i64 %_resPtr696
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
