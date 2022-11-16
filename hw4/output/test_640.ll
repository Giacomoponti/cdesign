; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr499 to { i64, [0 x i64] }*)
@_arr499 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr498 to { i64, [0 x i64] }*)
@_arr498 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x501 = alloca { i64, [0 x i64] }*
  %_y503 = alloca { i64, [0 x i64] }*
  %_b505 = alloca i1
  store i1 %b, i1* %_b505
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y503
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x501
  %_b509 = load i1, i1* %_b508
  br i1 %_b509, label %_if512, label %_else511
_if512:
  %_x515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x506
  ret { i64, [0 x i64] }* %_x515
_else511:
  %_y514 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y507
  ret { i64, [0 x i64] }* %_y514
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z495 = alloca i64
  %_argc474 = alloca i64
  %_argv476 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv476
  store i64 %argc, i64* %_argc474
  %_x479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id481 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x479, { i64, [0 x i64] }* %_y480, i1 1)
  %_ptr482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id481, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr482
  %_x486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id488 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x486, { i64, [0 x i64] }* %_y487, i1 1)
  %_ptr484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id488, i32 0, i32 1, i32 0
  %_resPtr485 = load i64, i64* %_ptr484
  %_y491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id493 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y491, { i64, [0 x i64] }* %_x492, i1 0)
  %_ptr489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id493, i32 0, i32 1, i32 0
  %_resPtr490 = load i64, i64* %_ptr489
  %_bop494 = add i64 %_resPtr485, %_resPtr490
  store i64 %_bop494, i64* %_z495
  %_z497 = load i64, i64* %_z495
  ret i64 %_z497
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
