; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a458 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array440 = call i64* @oat_alloc_array(i64 2)
  %_array441 = bitcast i64* %_raw_array440 to { i64, [0 x i64] }*
  %_gep442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep442
  %_gep444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array441, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep444
  %_raw_array446 = call i64* @oat_alloc_array(i64 2)
  %_array447 = bitcast i64* %_raw_array446 to { i64, [0 x i64] }*
  %_gep448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array447, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep448
  %_gep450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array447, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep450
  %_raw_array452 = call i64* @oat_alloc_array(i64 2)
  %_array453 = bitcast i64* %_raw_array452 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep454 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array453, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array441, { i64, [0 x i64] }** %_gep454
  %_gep456 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array453, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array447, { i64, [0 x i64] }** %_gep456
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array453, { i64, [0 x { i64, [0 x i64] }*] }** %_a458
  %_a464 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a458
  %_ptr462 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a464, i32 0, i32 1, i32 0
  %_resPtr463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr462
  %_ptr460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr463, i32 0, i32 1, i32 1
  %_resPtr461 = load i64, i64* %_ptr460
  ret i64 %_resPtr461
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
