; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a416 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array398 = call i64* @oat_alloc_array(i64 2)
  %_array399 = bitcast i64* %_raw_array398 to { i64, [0 x i64] }*
  %_gep400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array399, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep400
  %_gep402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array399, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep402
  %_raw_array404 = call i64* @oat_alloc_array(i64 2)
  %_array405 = bitcast i64* %_raw_array404 to { i64, [0 x i64] }*
  %_gep406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array405, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep406
  %_gep408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array405, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep408
  %_raw_array410 = call i64* @oat_alloc_array(i64 2)
  %_array411 = bitcast i64* %_raw_array410 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep412 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array411, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array399, { i64, [0 x i64] }** %_gep412
  %_gep414 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array411, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array405, { i64, [0 x i64] }** %_gep414
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array411, { i64, [0 x { i64, [0 x i64] }*] }** %_a416
  %_a422 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a416
  %_ptr420 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a422, i32 0, i32 1, i32 0
  %_resPtr421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr420
  %_ptr418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr421, i32 0, i32 1, i32 1
  %_resPtr419 = load i64, i64* %_ptr418
  ret i64 %_resPtr419
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
