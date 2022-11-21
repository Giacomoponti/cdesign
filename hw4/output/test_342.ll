; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr390 to { i64, [0 x i64] }*)
@_arr390 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr389 to { i64, [0 x i64] }*)
@_arr389 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x392 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x392
  %_y394 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y394
  %_b396 = alloca i1
  store i1 %b, i1* %_b396
  %_b397 = load i1, i1* %_b396
  br i1 %_b397, label %_if400, label %_else399
_if400:
  %_x403 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x392
  ret { i64, [0 x i64] }* %_x403
_else399:
  %_y402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y394
  ret { i64, [0 x i64] }* %_y402
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc378 = alloca i64
  store i64 %argc, i64* %_argc378
  %_argv380 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv380
  %_x381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_383 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x381, { i64, [0 x i64] }* %_y382, i1 1)
  %_ptr384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_383, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr384
  %_x388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_ptr386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x388, i32 0, i32 1, i32 0
  %_resPtr387 = load i64, i64* %_ptr386
  ret i64 %_resPtr387
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
