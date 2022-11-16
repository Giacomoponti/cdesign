; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3280 = alloca { i64, [0 x i64] }*
  %_argc3253 = alloca i64
  %_argv3255 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3255
  store i64 %argc, i64* %_argc3253
  %_raw_array3258 = call i64* @oat_alloc_array(i64 10)
  %_array3259 = bitcast i64* %_raw_array3258 to { i64, [0 x i64] }*
  %_gep3260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep3260
  %_gep3262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3262
  %_gep3264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep3264
  %_gep3266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep3266
  %_gep3268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep3268
  %_gep3270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep3270
  %_gep3272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep3272
  %_gep3274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3274
  %_gep3276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep3276
  %_gep3278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3259, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep3278
  store { i64, [0 x i64] }* %_array3259, { i64, [0 x i64] }** %_a3280
  %_a3282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3280
  %_id3283 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3282)
  call void @print_string(i8* %_id3283)
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
