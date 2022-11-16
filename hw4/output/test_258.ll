; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a466 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array448 = call i64* @oat_alloc_array(i64 2)
  %_array449 = bitcast i64* %_raw_array448 to { i64, [0 x i64] }*
  %_gep450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array449, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep450
  %_gep452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array449, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep452
  %_raw_array454 = call i64* @oat_alloc_array(i64 2)
  %_array455 = bitcast i64* %_raw_array454 to { i64, [0 x i64] }*
  %_gep456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array455, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep456
  %_gep458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array455, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep458
  %_raw_array460 = call i64* @oat_alloc_array(i64 2)
  %_array461 = bitcast i64* %_raw_array460 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep462 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array461, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array449, { i64, [0 x i64] }** %_gep462
  %_gep464 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array461, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array455, { i64, [0 x i64] }** %_gep464
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array461, { i64, [0 x { i64, [0 x i64] }*] }** %_a466
  %_a472 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a466
  %_ptr470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a472, i32 0, i32 1, i32 0
  %_resPtr471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr470
  %_ptr468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr471, i32 0, i32 1, i32 1
  %_resPtr469 = load i64, i64* %_ptr468
  ret i64 %_resPtr469
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
