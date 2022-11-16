; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x380 = alloca { i64, [0 x i64] }*
  %_y382 = alloca { i64, [0 x i64] }*
  %_b384 = alloca i1
  store i1 %b, i1* %_b384
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y382
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x380
  %_b388 = load i1, i1* %_b387
  br i1 %_b388, label %_if391, label %_else390
_if391:
  %_x394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x385
  ret { i64, [0 x i64] }* %_x394
_else390:
  %_y393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y386
  ret { i64, [0 x i64] }* %_y393
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x365 = alloca { i64, [0 x i64] }*
  %_y369 = alloca { i64, [0 x i64] }*
  %_argc358 = alloca i64
  %_argv360 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv360
  store i64 %argc, i64* %_argc358
  %_raw_array363 = call i64* @oat_alloc_array(i64 3)
  %_array364 = bitcast i64* %_raw_array363 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array364, { i64, [0 x i64] }** %_x365
  %_raw_array367 = call i64* @oat_alloc_array(i64 3)
  %_array368 = bitcast i64* %_raw_array367 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array368, { i64, [0 x i64] }** %_y369
  %_x371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x365
  %_y372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y369
  %_id373 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x371, { i64, [0 x i64] }* %_y372, i1 1)
  %_ptr374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id373, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr374
  %_x378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x365
  %_ptr376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x378, i32 0, i32 1, i32 0
  %_resPtr377 = load i64, i64* %_ptr376
  ret i64 %_resPtr377
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
