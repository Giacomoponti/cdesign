; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2262 = alloca { i64, [0 x i64] }*
  %_str2266 = alloca i8*
  %_argc2249 = alloca i64
  %_argv2251 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2251
  store i64 %argc, i64* %_argc2249
  %_raw_array2254 = call i64* @oat_alloc_array(i64 3)
  %_array2255 = bitcast i64* %_raw_array2254 to { i64, [0 x i64] }*
  %_gep2256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2255, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep2256
  %_gep2258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2255, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep2258
  %_gep2260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2255, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep2260
  store { i64, [0 x i64] }* %_array2255, { i64, [0 x i64] }** %_a2262
  %_a2264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2262
  %_id2265 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2264)
  store i8* %_id2265, i8** %_str2266
  %_str2268 = load i8*, i8** %_str2266
  call void @print_string(i8* %_str2268)
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
