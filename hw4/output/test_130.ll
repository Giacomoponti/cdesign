; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr461 to { i64, [0 x i64] }*)
@_arr461 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr460 to { i64, [0 x i64] }*)
@_arr460 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x463 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x463
  %_y465 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y465
  %_b467 = alloca i1
  store i1 %b, i1* %_b467
  %_b468 = load i1, i1* %_b467
  br i1 %_b468, label %_if471, label %_else470
_if471:
  %_x474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x463
  ret { i64, [0 x i64] }* %_x474
_else470:
  %_y473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y465
  ret { i64, [0 x i64] }* %_y473
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z457 = alloca i64
  %_argc438 = alloca i64
  store i64 %argc, i64* %_argc438
  %_argv440 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv440
  %_x441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_443 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x441, { i64, [0 x i64] }* %_y442, i1 1)
  %_ptr444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_443, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr444
  %_x448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_450 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x448, { i64, [0 x i64] }* %_y449, i1 1)
  %_ptr446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_450, i32 0, i32 1, i32 0
  %_resPtr447 = load i64, i64* %_ptr446
  %_y453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_455 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y453, { i64, [0 x i64] }* %_x454, i1 0)
  %_ptr451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_455, i32 0, i32 1, i32 0
  %_resPtr452 = load i64, i64* %_ptr451
  %_bop456 = add i64 %_resPtr447, %_resPtr452
  store i64 %_bop456, i64* %_z457
  %_z459 = load i64, i64* %_z457
  ret i64 %_z459
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
