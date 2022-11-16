; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr340 to { i64, [0 x i64] }*)
@_arr340 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr339 to { i64, [0 x i64] }*)
@_arr339 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x342 = alloca { i64, [0 x i64] }*
  %_y344 = alloca { i64, [0 x i64] }*
  %_b346 = alloca i1
  store i1 %b, i1* %_b346
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y344
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x342
  %_b350 = load i1, i1* %_b349
  br i1 %_b350, label %_if353, label %_else352
_if353:
  %_x356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x347
  ret { i64, [0 x i64] }* %_x356
_else352:
  %_y355 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y348
  ret { i64, [0 x i64] }* %_y355
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc326 = alloca i64
  %_argv328 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv328
  store i64 %argc, i64* %_argc326
  %_x331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id333 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x331, { i64, [0 x i64] }* %_y332, i1 1)
  %_ptr334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id333, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr334
  %_x338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_ptr336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x338, i32 0, i32 1, i32 0
  %_resPtr337 = load i64, i64* %_ptr336
  ret i64 %_resPtr337
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
