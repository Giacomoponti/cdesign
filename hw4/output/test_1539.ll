; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr437 to { i64, [0 x i64] }*)
@_arr437 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr436 to { i64, [0 x i64] }*)
@_arr436 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x439 = alloca { i64, [0 x i64] }*
  %_y441 = alloca { i64, [0 x i64] }*
  %_b443 = alloca i1
  store i1 %b, i1* %_b443
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y441
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x439
  %_b447 = load i1, i1* %_b446
  br i1 %_b447, label %_if450, label %_else449
_if450:
  %_x453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x444
  ret { i64, [0 x i64] }* %_x453
_else449:
  %_y452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y445
  ret { i64, [0 x i64] }* %_y452
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc423 = alloca i64
  %_argv425 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv425
  store i64 %argc, i64* %_argc423
  %_x428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id430 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x428, { i64, [0 x i64] }* %_y429, i1 1)
  %_ptr431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id430, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr431
  %_x435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_ptr433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x435, i32 0, i32 1, i32 0
  %_resPtr434 = load i64, i64* %_ptr433
  ret i64 %_resPtr434
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
