; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr423 to { i64, [0 x i64] }*)
@_arr423 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr422 to { i64, [0 x i64] }*)
@_arr422 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x425 = alloca { i64, [0 x i64] }*
  %_y427 = alloca { i64, [0 x i64] }*
  %_b429 = alloca i1
  store i1 %b, i1* %_b429
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y427
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x425
  %_b433 = load i1, i1* %_b432
  br i1 %_b433, label %_if436, label %_else435
_if436:
  %_x439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x430
  ret { i64, [0 x i64] }* %_x439
_else435:
  %_y438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y431
  ret { i64, [0 x i64] }* %_y438
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z419 = alloca i64
  %_argc398 = alloca i64
  %_argv400 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv400
  store i64 %argc, i64* %_argc398
  %_x403 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id405 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x403, { i64, [0 x i64] }* %_y404, i1 1)
  %_ptr406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id405, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr406
  %_x410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id412 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x410, { i64, [0 x i64] }* %_y411, i1 1)
  %_ptr408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id412, i32 0, i32 1, i32 0
  %_resPtr409 = load i64, i64* %_ptr408
  %_y415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x416 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id417 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y415, { i64, [0 x i64] }* %_x416, i1 0)
  %_ptr413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id417, i32 0, i32 1, i32 0
  %_resPtr414 = load i64, i64* %_ptr413
  %_bop418 = add i64 %_resPtr409, %_resPtr414
  store i64 %_bop418, i64* %_z419
  %_z421 = load i64, i64* %_z419
  ret i64 %_z421
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
