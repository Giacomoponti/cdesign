; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2383 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2356
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2358
  %_argv2358 = alloca { i64, [0 x i8*] }*
  %_argc2356 = alloca i64
  %_raw_array2361 = call i64* @oat_alloc_array(i64 10)
  %_array2362 = bitcast i64* %_raw_array2361 to { i64, [0 x i64] }*
  %_gep2363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep2363
  %_gep2365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep2365
  %_gep2367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep2367
  %_gep2369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep2369
  %_gep2371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep2371
  %_gep2373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep2373
  %_gep2375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep2375
  %_gep2377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep2377
  %_gep2379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep2379
  %_gep2381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2362, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep2381
  store { i64, [0 x i64] }* %_array2362, { i64, [0 x i64] }** %_a2383
  %_a2385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2383
  %_id2386 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2385)
  call void @print_string(i8* %_id2386)
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
