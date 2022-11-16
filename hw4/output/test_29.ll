; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_raw_array615 = call i64* @oat_alloc_array(i64 2)
  %_array616 = bitcast i64* %_raw_array615 to { i64, [0 x i64] }*
  %_gep617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array616, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep617
  %_gep619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array616, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep619
  store { i64, [0 x i64] }* %_array616, { i64, [0 x i64] }** @arr
  %_arr624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr624, i32 0, i32 1, i32 1
  %_resPtr623 = load i64, i64* %_ptr622
  ret i64 %_resPtr623
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
