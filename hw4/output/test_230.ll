; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_arr284 to { i64, [0 x i64] }*)
@_arr284 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x274 = alloca { i64, [0 x i64] }*
  %_argc269 = alloca i64
  store i64 %argc, i64* %_argc269
  %_argv271 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv271
  %_raw_array272 = call i64* @oat_alloc_array(i64 3)
  %_array273 = bitcast i64* %_raw_array272 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array273, { i64, [0 x i64] }** %_x274
  %_x276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x274
  store { i64, [0 x i64] }* %_x276, { i64, [0 x i64] }** @arr
  %_x278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x274
  %_ptr279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x278, i32 0, i32 1, i32 2
  store i64 3, i64* %_ptr279
  %_arr283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr283, i32 0, i32 1, i32 2
  %_resPtr282 = load i64, i64* %_ptr281
  ret i64 %_resPtr282
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
