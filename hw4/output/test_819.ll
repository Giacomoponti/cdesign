; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x474 = alloca { i64, [0 x i64] }*
  %_y476 = alloca { i64, [0 x i64] }*
  %_b478 = alloca i1
  store i1 %b, i1* %_b478
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y476
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x474
  %_b482 = load i1, i1* %_b481
  br i1 %_b482, label %_if485, label %_else484
_if485:
  %_x488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x479
  ret { i64, [0 x i64] }* %_x488
_else484:
  %_y487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y480
  ret { i64, [0 x i64] }* %_y487
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x459 = alloca { i64, [0 x i64] }*
  %_y463 = alloca { i64, [0 x i64] }*
  %_argc452 = alloca i64
  %_argv454 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv454
  store i64 %argc, i64* %_argc452
  %_raw_array457 = call i64* @oat_alloc_array(i64 3)
  %_array458 = bitcast i64* %_raw_array457 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array458, { i64, [0 x i64] }** %_x459
  %_raw_array461 = call i64* @oat_alloc_array(i64 3)
  %_array462 = bitcast i64* %_raw_array461 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array462, { i64, [0 x i64] }** %_y463
  %_x465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x459
  %_y466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y463
  %_id467 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x465, { i64, [0 x i64] }* %_y466, i1 1)
  %_ptr468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id467, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr468
  %_x472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x459
  %_ptr470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x472, i32 0, i32 1, i32 0
  %_resPtr471 = load i64, i64* %_ptr470
  ret i64 %_resPtr471
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
