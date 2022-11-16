; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x458 = alloca { i64, [0 x i64] }*
  %_y460 = alloca { i64, [0 x i64] }*
  %_b462 = alloca i1
  store i1 %b, i1* %_b462
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y460
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x458
  %_b466 = load i1, i1* %_b465
  br i1 %_b466, label %_if469, label %_else468
_if469:
  %_x472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x463
  ret { i64, [0 x i64] }* %_x472
_else468:
  %_y471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y464
  ret { i64, [0 x i64] }* %_y471
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x443 = alloca { i64, [0 x i64] }*
  %_y447 = alloca { i64, [0 x i64] }*
  %_argc436 = alloca i64
  %_argv438 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv438
  store i64 %argc, i64* %_argc436
  %_raw_array441 = call i64* @oat_alloc_array(i64 3)
  %_array442 = bitcast i64* %_raw_array441 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array442, { i64, [0 x i64] }** %_x443
  %_raw_array445 = call i64* @oat_alloc_array(i64 3)
  %_array446 = bitcast i64* %_raw_array445 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array446, { i64, [0 x i64] }** %_y447
  %_x449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x443
  %_y450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y447
  %_id451 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x449, { i64, [0 x i64] }* %_y450, i1 1)
  %_ptr452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id451, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr452
  %_x456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x443
  %_ptr454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x456, i32 0, i32 1, i32 0
  %_resPtr455 = load i64, i64* %_ptr454
  ret i64 %_resPtr455
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
