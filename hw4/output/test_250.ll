; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a763 = alloca { i64, [0 x i64] }*
  %_argc754 = alloca i64
  store i64 %argc, i64* %_argc754
  %_argv756 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv756
  %_raw_array757 = call i64* @oat_alloc_array(i64 2)
  %_array758 = bitcast i64* %_raw_array757 to { i64, [0 x i64] }*
  %_gep759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep759
  %_gep761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep761
  store { i64, [0 x i64] }* %_array758, { i64, [0 x i64] }** %_a763
  %_a767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a763
  %_ptr765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a767, i32 0, i32 1, i32 1
  %_resPtr766 = load i64, i64* %_ptr765
  ret i64 %_resPtr766
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
