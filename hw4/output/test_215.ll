; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array656 = call i64* @oat_alloc_array(i64 2)
  %_array657 = bitcast i64* %_raw_array656 to { i64, [0 x i64] }*
  %_gep658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array657, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep658
  %_gep660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array657, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep660
  store { i64, [0 x i64] }* %_array657, { i64, [0 x i64] }** @arr
  %_arr665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr665, i32 0, i32 1, i32 1
  %_resPtr664 = load i64, i64* %_ptr663
  ret i64 %_resPtr664
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
