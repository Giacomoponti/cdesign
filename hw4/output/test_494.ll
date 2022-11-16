; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr342 to { i64, [0 x i64] }*)
@_arr342 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 2, i64 1 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_arr341 to { i64, [0 x i64] }*)
@_arr341 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 6, i64 5, i64 4 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x344 = alloca { i64, [0 x i64] }*
  %_y346 = alloca { i64, [0 x i64] }*
  %_b348 = alloca i1
  store i1 %b, i1* %_b348
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y346
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x344
  %_b352 = load i1, i1* %_b351
  br i1 %_b352, label %_if355, label %_else354
_if355:
  %_x358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x349
  ret { i64, [0 x i64] }* %_x358
_else354:
  %_y357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y350
  ret { i64, [0 x i64] }* %_y357
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc328 = alloca i64
  %_argv330 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv330
  store i64 %argc, i64* %_argc328
  %_x333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id335 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x333, { i64, [0 x i64] }* %_y334, i1 1)
  %_ptr336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id335, i32 0, i32 1, i32 0
  store i64 17, i64* %_ptr336
  %_x340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_ptr338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x340, i32 0, i32 1, i32 0
  %_resPtr339 = load i64, i64* %_ptr338
  ret i64 %_resPtr339
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
