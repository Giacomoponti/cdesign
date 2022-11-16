; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a722 = alloca { i64, [0 x i64] }*
  %_argc711 = alloca i64
  %_argv713 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv713
  store i64 %argc, i64* %_argc711
  %_raw_array716 = call i64* @oat_alloc_array(i64 2)
  %_array717 = bitcast i64* %_raw_array716 to { i64, [0 x i64] }*
  %_gep718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array717, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep718
  %_gep720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array717, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep720
  store { i64, [0 x i64] }* %_array717, { i64, [0 x i64] }** %_a722
  %_a726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a722
  %_ptr724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a726, i32 0, i32 1, i32 1
  %_resPtr725 = load i64, i64* %_ptr724
  ret i64 %_resPtr725
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
