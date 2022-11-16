; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i1227 = alloca i64
  %_a1237 = alloca { i64, [0 x i64] }*
  store i64 999, i64* %_i1227
  %_raw_array1229 = call i64* @oat_alloc_array(i64 3)
  %_array1230 = bitcast i64* %_raw_array1229 to { i64, [0 x i64] }*
  %_gep1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1231
  %_gep1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1233
  %_gep1235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1235
  store { i64, [0 x i64] }* %_array1230, { i64, [0 x i64] }** %_a1237
  %_a1241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1237
  %_ptr1239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1241, i32 0, i32 1, i32 2
  %_resPtr1240 = load i64, i64* %_ptr1239
  ret i64 %_resPtr1240
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
