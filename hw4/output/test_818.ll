; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr434 to { i64, [0 x i64] }*)
@_arr434 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr433 to { i64, [0 x i64] }*)
@_arr433 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x436 = alloca { i64, [0 x i64] }*
  %_y438 = alloca { i64, [0 x i64] }*
  %_b440 = alloca i1
  store i1 %b, i1* %_b440
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y438
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x436
  %_b444 = load i1, i1* %_b443
  br i1 %_b444, label %_if447, label %_else446
_if447:
  %_x450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x441
  ret { i64, [0 x i64] }* %_x450
_else446:
  %_y449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y442
  ret { i64, [0 x i64] }* %_y449
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc420 = alloca i64
  %_argv422 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv422
  store i64 %argc, i64* %_argc420
  %_x425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id427 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x425, { i64, [0 x i64] }* %_y426, i1 1)
  %_ptr428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id427, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr428
  %_x432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_ptr430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x432, i32 0, i32 1, i32 0
  %_resPtr431 = load i64, i64* %_ptr430
  ret i64 %_resPtr431
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
