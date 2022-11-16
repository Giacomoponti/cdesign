; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a720 = alloca { i64, [0 x i64] }*
  %_argc709 = alloca i64
  %_argv711 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv711
  store i64 %argc, i64* %_argc709
  %_raw_array714 = call i64* @oat_alloc_array(i64 2)
  %_array715 = bitcast i64* %_raw_array714 to { i64, [0 x i64] }*
  %_gep716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array715, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep716
  %_gep718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array715, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep718
  store { i64, [0 x i64] }* %_array715, { i64, [0 x i64] }** %_a720
  %_a724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a720
  %_ptr722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a724, i32 0, i32 1, i32 1
  %_resPtr723 = load i64, i64* %_ptr722
  ret i64 %_resPtr723
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
