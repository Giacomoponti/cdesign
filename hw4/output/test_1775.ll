; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc1328
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1330
  %_argv1330 = alloca { i64, [0 x i8*] }*
  %_argc1328 = alloca i64
  %_raw_array1333 = call i64* @oat_alloc_array(i64 2)
  %_array1334 = bitcast i64* %_raw_array1333 to { i64, [0 x i64] }*
  %_gep1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep1335
  %_gep1337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1334, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep1337
  store { i64, [0 x i64] }* %_array1334, { i64, [0 x i64] }** @arr
  %_arr1342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr1340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1342, i32 0, i32 1, i32 1
  %_resPtr1341 = load i64, i64* %_ptr1340
  ret i64 %_resPtr1341
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
