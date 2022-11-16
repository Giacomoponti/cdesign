; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x477 = alloca { i64, [0 x i64] }*
  %_y479 = alloca { i64, [0 x i64] }*
  %_b481 = alloca i1
  store i1 %b, i1* %_b481
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y479
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x477
  %_b485 = load i1, i1* %_b484
  br i1 %_b485, label %_if488, label %_else487
_if488:
  %_x491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x482
  ret { i64, [0 x i64] }* %_x491
_else487:
  %_y490 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y483
  ret { i64, [0 x i64] }* %_y490
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x462 = alloca { i64, [0 x i64] }*
  %_y466 = alloca { i64, [0 x i64] }*
  %_argc455 = alloca i64
  %_argv457 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv457
  store i64 %argc, i64* %_argc455
  %_raw_array460 = call i64* @oat_alloc_array(i64 3)
  %_array461 = bitcast i64* %_raw_array460 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array461, { i64, [0 x i64] }** %_x462
  %_raw_array464 = call i64* @oat_alloc_array(i64 3)
  %_array465 = bitcast i64* %_raw_array464 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array465, { i64, [0 x i64] }** %_y466
  %_x468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x462
  %_y469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y466
  %_id470 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x468, { i64, [0 x i64] }* %_y469, i1 1)
  %_ptr471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id470, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr471
  %_x475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x462
  %_ptr473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x475, i32 0, i32 1, i32 0
  %_resPtr474 = load i64, i64* %_ptr473
  ret i64 %_resPtr474
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
