; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_arr171 to { i64, [0 x i64] }*)
@_arr171 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x161 = alloca { i64, [0 x i64] }*
  %_raw_array159 = call i64* @oat_alloc_array(i64 3)
  %_array160 = bitcast i64* %_raw_array159 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array160, { i64, [0 x i64] }** %_x161
  %_x163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x161
  store { i64, [0 x i64] }* %_x163, { i64, [0 x i64] }** @arr
  %_x165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x161
  %_ptr166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x165, i32 0, i32 1, i32 2
  store i64 3, i64* %_ptr166
  %_arr170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr170, i32 0, i32 1, i32 2
  %_resPtr169 = load i64, i64* %_ptr168
  ret i64 %_resPtr169
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
