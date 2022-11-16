; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr421 to { i64, [0 x i64] }*)
@_arr421 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr420 to { i64, [0 x i64] }*)
@_arr420 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x423 = alloca { i64, [0 x i64] }*
  %_y425 = alloca { i64, [0 x i64] }*
  %_b427 = alloca i1
  store i1 %b, i1* %_b427
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y425
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x423
  %_b431 = load i1, i1* %_b430
  br i1 %_b431, label %_if434, label %_else433
_if434:
  %_x437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x428
  ret { i64, [0 x i64] }* %_x437
_else433:
  %_y436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y429
  ret { i64, [0 x i64] }* %_y436
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z417 = alloca i64
  %_argc396 = alloca i64
  %_argv398 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv398
  store i64 %argc, i64* %_argc396
  %_x401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id403 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x401, { i64, [0 x i64] }* %_y402, i1 1)
  %_ptr404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id403, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr404
  %_x408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id410 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x408, { i64, [0 x i64] }* %_y409, i1 1)
  %_ptr406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id410, i32 0, i32 1, i32 0
  %_resPtr407 = load i64, i64* %_ptr406
  %_y413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id415 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y413, { i64, [0 x i64] }* %_x414, i1 0)
  %_ptr411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id415, i32 0, i32 1, i32 0
  %_resPtr412 = load i64, i64* %_ptr411
  %_bop416 = add i64 %_resPtr407, %_resPtr412
  store i64 %_bop416, i64* %_z417
  %_z419 = load i64, i64* %_z417
  ret i64 %_z419
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
