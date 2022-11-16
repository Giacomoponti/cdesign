; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1307 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1296
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1298
  %_argv1298 = alloca { i64, [0 x i8*] }*
  %_argc1296 = alloca i64
  %_raw_array1301 = call i64* @oat_alloc_array(i64 2)
  %_array1302 = bitcast i64* %_raw_array1301 to { i64, [0 x i64] }*
  %_gep1303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1302, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1303
  %_gep1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1302, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1305
  store { i64, [0 x i64] }* %_array1302, { i64, [0 x i64] }** %_arr1307
  %_arr1311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1307
  %_ptr1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1311, i32 0, i32 1, i32 1
  %_resPtr1310 = load i64, i64* %_ptr1309
  ret i64 %_resPtr1310
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
