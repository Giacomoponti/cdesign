; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1231 = alloca { i64, [0 x i64] }*
  %_raw_array1223 = call i64* @oat_alloc_array(i64 3)
  %_array1224 = bitcast i64* %_raw_array1223 to { i64, [0 x i64] }*
  %_gep1225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1225
  %_gep1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1227
  %_gep1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1229
  store { i64, [0 x i64] }* %_array1224, { i64, [0 x i64] }** %_a1231
  %_a1235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1231
  %_ptr1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1235, i32 0, i32 1, i32 2
  %_resPtr1234 = load i64, i64* %_ptr1233
  ret i64 %_resPtr1234
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
