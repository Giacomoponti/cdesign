; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr418 to { i64, [0 x i64] }*)
@_arr418 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr417 to { i64, [0 x i64] }*)
@_arr417 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x420 = alloca { i64, [0 x i64] }*
  %_y422 = alloca { i64, [0 x i64] }*
  %_b424 = alloca i1
  store i1 %b, i1* %_b424
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y422
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x420
  %_b428 = load i1, i1* %_b427
  br i1 %_b428, label %_if431, label %_else430
_if431:
  %_x434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x425
  ret { i64, [0 x i64] }* %_x434
_else430:
  %_y433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y426
  ret { i64, [0 x i64] }* %_y433
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc404 = alloca i64
  %_argv406 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv406
  store i64 %argc, i64* %_argc404
  %_x409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id411 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x409, { i64, [0 x i64] }* %_y410, i1 1)
  %_ptr412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id411, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr412
  %_x416 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_ptr414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x416, i32 0, i32 1, i32 0
  %_resPtr415 = load i64, i64* %_ptr414
  ret i64 %_resPtr415
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
