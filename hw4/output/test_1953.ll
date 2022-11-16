; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr518 to { i64, [0 x i64] }*)
@_arr518 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr517 to { i64, [0 x i64] }*)
@_arr517 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x520 = alloca { i64, [0 x i64] }*
  %_y522 = alloca { i64, [0 x i64] }*
  %_b524 = alloca i1
  store i1 %b, i1* %_b524
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y522
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x520
  %_b528 = load i1, i1* %_b527
  br i1 %_b528, label %_if531, label %_else530
_if531:
  %_x534 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x525
  ret { i64, [0 x i64] }* %_x534
_else530:
  %_y533 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y526
  ret { i64, [0 x i64] }* %_y533
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z514 = alloca i64
  %_argc493 = alloca i64
  %_argv495 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv495
  store i64 %argc, i64* %_argc493
  %_x498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y499 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id500 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x498, { i64, [0 x i64] }* %_y499, i1 1)
  %_ptr501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id500, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr501
  %_x505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y506 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id507 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x505, { i64, [0 x i64] }* %_y506, i1 1)
  %_ptr503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id507, i32 0, i32 1, i32 0
  %_resPtr504 = load i64, i64* %_ptr503
  %_y510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id512 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y510, { i64, [0 x i64] }* %_x511, i1 0)
  %_ptr508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id512, i32 0, i32 1, i32 0
  %_resPtr509 = load i64, i64* %_ptr508
  %_bop513 = add i64 %_resPtr504, %_resPtr509
  store i64 %_bop513, i64* %_z514
  %_z516 = load i64, i64* %_z514
  ret i64 %_z516
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
