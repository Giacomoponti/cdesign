; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1473 = alloca { i64, [0 x i64] }*
  %_argc1462 = alloca i64
  %_argv1464 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1464
  store i64 %argc, i64* %_argc1462
  %_raw_array1467 = call i64* @oat_alloc_array(i64 2)
  %_array1468 = bitcast i64* %_raw_array1467 to { i64, [0 x i64] }*
  %_gep1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1468, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1469
  %_gep1471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1468, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1471
  store { i64, [0 x i64] }* %_array1468, { i64, [0 x i64] }** %_arr1473
  %_arr1477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1473
  %_ptr1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1477, i32 0, i32 1, i32 1
  %_resPtr1476 = load i64, i64* %_ptr1475
  ret i64 %_resPtr1476
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
