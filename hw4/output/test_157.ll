; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1176 = alloca i64
  store i64 %argc, i64* %_argc1176
  %_argv1178 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1178
  %_raw_array1179 = call i64* @oat_alloc_array(i64 2)
  %_array1180 = bitcast i64* %_raw_array1179 to { i64, [0 x i64] }*
  %_gep1181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1181
  %_gep1183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1183
  store { i64, [0 x i64] }* %_array1180, { i64, [0 x i64] }** @arr
  %_arr1188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1188, i32 0, i32 1, i32 1
  %_resPtr1187 = load i64, i64* %_ptr1186
  ret i64 %_resPtr1187
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
