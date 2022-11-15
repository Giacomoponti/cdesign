; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array625 = call i64* @oat_alloc_array(i64 2)
  %_array626 = bitcast i64* %_raw_array625 to { i64, [0 x i64] }*
  %_gep627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array626, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep627
  %_gep629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array626, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep629
  %_raw_array631 = call i64* @oat_alloc_array(i64 2)
  %_array632 = bitcast i64* %_raw_array631 to { i64, [0 x i64] }*
  %_gep633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array632, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep633
  %_gep635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array632, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep635
  %_raw_array637 = call i64* @oat_alloc_array(i64 2)
  %_array638 = bitcast i64* %_raw_array637 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array638, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array626, { i64, [0 x i64] }** %_gep639
  %_gep641 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array638, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array632, { i64, [0 x i64] }** %_gep641
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array638, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr648 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr646 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr648, i32 0, i32 1, i32 1
  %_resPtr647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr646
  %_ptr644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr647, i32 0, i32 1, i32 1
  %_resPtr645 = load i64, i64* %_ptr644
  ret i64 %_resPtr645
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
