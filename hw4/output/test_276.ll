; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1276 = alloca { i64, [0 x i64] }*
  %_str1280 = alloca i8*
  %_raw_array1268 = call i64* @oat_alloc_array(i64 3)
  %_array1269 = bitcast i64* %_raw_array1268 to { i64, [0 x i64] }*
  %_gep1270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep1270
  %_gep1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep1272
  %_gep1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep1274
  store { i64, [0 x i64] }* %_array1269, { i64, [0 x i64] }** %_a1276
  %_a1278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1276
  %_id1279 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1278)
  store i8* %_id1279, i8** %_str1280
  %_str1282 = load i8*, i8** %_str1280
  call void @print_string(i8* %_str1282)
  ret i64 0
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
