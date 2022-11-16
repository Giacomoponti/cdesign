; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1180 = alloca { i64, [0 x i64] }*
  %_raw_array1172 = call i64* @oat_alloc_array(i64 3)
  %_array1173 = bitcast i64* %_raw_array1172 to { i64, [0 x i64] }*
  %_gep1174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1173, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1174
  %_gep1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1173, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1176
  %_gep1178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1173, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1178
  store { i64, [0 x i64] }* %_array1173, { i64, [0 x i64] }** %_a1180
  %_a1184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1180
  %_ptr1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1184, i32 0, i32 1, i32 2
  %_resPtr1183 = load i64, i64* %_ptr1182
  ret i64 %_resPtr1183
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
