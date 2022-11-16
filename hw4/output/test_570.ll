; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i466 = alloca { i64, [0 x i64] }*
  %_argc455 = alloca i64
  %_argv457 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv457
  store i64 %argc, i64* %_argc455
  %_raw_array460 = call i64* @oat_alloc_array(i64 2)
  %_array461 = bitcast i64* %_raw_array460 to { i64, [0 x i64] }*
  %_gep462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array461, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep462
  %_gep464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array461, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep464
  store { i64, [0 x i64] }* %_array461, { i64, [0 x i64] }** %_i466
  %_i470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i466
  %_ptr468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i470, i32 0, i32 1, i32 0
  %_resPtr469 = load i64, i64* %_ptr468
  ret i64 %_resPtr469
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
