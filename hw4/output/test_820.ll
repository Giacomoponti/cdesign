; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr515 to { i64, [0 x i64] }*)
@_arr515 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr514 to { i64, [0 x i64] }*)
@_arr514 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x517 = alloca { i64, [0 x i64] }*
  %_y519 = alloca { i64, [0 x i64] }*
  %_b521 = alloca i1
  store i1 %b, i1* %_b521
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y519
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x517
  %_b525 = load i1, i1* %_b524
  br i1 %_b525, label %_if528, label %_else527
_if528:
  %_x531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x522
  ret { i64, [0 x i64] }* %_x531
_else527:
  %_y530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y523
  ret { i64, [0 x i64] }* %_y530
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z511 = alloca i64
  %_argc490 = alloca i64
  %_argv492 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv492
  store i64 %argc, i64* %_argc490
  %_x495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id497 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x495, { i64, [0 x i64] }* %_y496, i1 1)
  %_ptr498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id497, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr498
  %_x502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id504 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x502, { i64, [0 x i64] }* %_y503, i1 1)
  %_ptr500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id504, i32 0, i32 1, i32 0
  %_resPtr501 = load i64, i64* %_ptr500
  %_y507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id509 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y507, { i64, [0 x i64] }* %_x508, i1 0)
  %_ptr505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id509, i32 0, i32 1, i32 0
  %_resPtr506 = load i64, i64* %_ptr505
  %_bop510 = add i64 %_resPtr501, %_resPtr506
  store i64 %_bop510, i64* %_z511
  %_z513 = load i64, i64* %_z511
  ret i64 %_z513
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
