; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_arr315 to { i64, [0 x i64] }*)
@_arr315 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x305 = alloca { i64, [0 x i64] }*
  %_argc298 = alloca i64
  %_argv300 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv300
  store i64 %argc, i64* %_argc298
  %_raw_array303 = call i64* @oat_alloc_array(i64 3)
  %_array304 = bitcast i64* %_raw_array303 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array304, { i64, [0 x i64] }** %_x305
  %_x307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x305
  store { i64, [0 x i64] }* %_x307, { i64, [0 x i64] }** @arr
  %_x309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x305
  %_ptr310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x309, i32 0, i32 1, i32 2
  store i64 3, i64* %_ptr310
  %_arr314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr314, i32 0, i32 1, i32 2
  %_resPtr313 = load i64, i64* %_ptr312
  ret i64 %_resPtr313
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
