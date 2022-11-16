; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array647 = call i64* @oat_alloc_array(i64 2)
  %_array648 = bitcast i64* %_raw_array647 to { i64, [0 x i64] }*
  %_gep649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array648, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep649
  %_gep651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array648, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep651
  store { i64, [0 x i64] }* %_array648, { i64, [0 x i64] }** @arr
  %_arr656 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr656, i32 0, i32 1, i32 1
  %_resPtr655 = load i64, i64* %_ptr654
  ret i64 %_resPtr655
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
