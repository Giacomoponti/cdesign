; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1334 = alloca { i64, [0 x i64] }*
  %_argc1325 = alloca i64
  store i64 %argc, i64* %_argc1325
  %_argv1327 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1327
  %_raw_array1328 = call i64* @oat_alloc_array(i64 2)
  %_array1329 = bitcast i64* %_raw_array1328 to { i64, [0 x i64] }*
  %_gep1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1330
  %_gep1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1332
  store { i64, [0 x i64] }* %_array1329, { i64, [0 x i64] }** %_arr1334
  %_arr1338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1334
  %_ptr1336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1338, i32 0, i32 1, i32 1
  %_resPtr1337 = load i64, i64* %_ptr1336
  ret i64 %_resPtr1337
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
