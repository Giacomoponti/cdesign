; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_arr318 to { i64, [0 x i64] }*)
@_arr318 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x308 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc301
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv303
  %_argv303 = alloca { i64, [0 x i8*] }*
  %_argc301 = alloca i64
  %_raw_array306 = call i64* @oat_alloc_array(i64 3)
  %_array307 = bitcast i64* %_raw_array306 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array307, { i64, [0 x i64] }** %_x308
  %_x310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x308
  store { i64, [0 x i64] }* %_x310, { i64, [0 x i64] }** @arr
  %_x312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x308
  %_ptr313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x312, i32 0, i32 1, i32 2
  store i64 3, i64* %_ptr313
  %_arr317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr317, i32 0, i32 1, i32 2
  %_resPtr316 = load i64, i64* %_ptr315
  ret i64 %_resPtr316
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
