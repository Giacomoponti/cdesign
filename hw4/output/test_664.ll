; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1293 = alloca i64
  %_argv1295 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1295
  store i64 %argc, i64* %_argc1293
  %_raw_array1298 = call i64* @oat_alloc_array(i64 2)
  %_array1299 = bitcast i64* %_raw_array1298 to { i64, [0 x i64] }*
  %_gep1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep1300
  %_gep1302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1299, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep1302
  store { i64, [0 x i64] }* %_array1299, { i64, [0 x i64] }** @arr
  %_arr1307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1307, i32 0, i32 1, i32 1
  %_resPtr1306 = load i64, i64* %_ptr1305
  ret i64 %_resPtr1306
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
