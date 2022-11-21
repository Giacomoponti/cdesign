; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x425 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x425
  %_y427 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y427
  %_b429 = alloca i1
  store i1 %b, i1* %_b429
  %_b430 = load i1, i1* %_b429
  br i1 %_b430, label %_if433, label %_else432
_if433:
  %_x436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x425
  ret { i64, [0 x i64] }* %_x436
_else432:
  %_y435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y427
  ret { i64, [0 x i64] }* %_y435
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x410 = alloca { i64, [0 x i64] }*
  %_y414 = alloca { i64, [0 x i64] }*
  %_argc405 = alloca i64
  store i64 %argc, i64* %_argc405
  %_argv407 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv407
  %_raw_array408 = call i64* @oat_alloc_array(i64 3)
  %_array409 = bitcast i64* %_raw_array408 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array409, { i64, [0 x i64] }** %_x410
  %_raw_array412 = call i64* @oat_alloc_array(i64 3)
  %_array413 = bitcast i64* %_raw_array412 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array413, { i64, [0 x i64] }** %_y414
  %_x416 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x410
  %_y417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y414
  %_418 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x416, { i64, [0 x i64] }* %_y417, i1 1)
  %_ptr419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_418, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr419
  %_x423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x410
  %_ptr421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x423, i32 0, i32 1, i32 0
  %_resPtr422 = load i64, i64* %_ptr421
  ret i64 %_resPtr422
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
