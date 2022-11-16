; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a851 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc840
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv842
  %_argv842 = alloca { i64, [0 x i8*] }*
  %_argc840 = alloca i64
  %_raw_array845 = call i64* @oat_alloc_array(i64 2)
  %_array846 = bitcast i64* %_raw_array845 to { i64, [0 x i64] }*
  %_gep847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array846, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep847
  %_gep849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array846, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep849
  store { i64, [0 x i64] }* %_array846, { i64, [0 x i64] }** %_a851
  %_a855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a851
  %_ptr853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a855, i32 0, i32 1, i32 1
  %_resPtr854 = load i64, i64* %_ptr853
  ret i64 %_resPtr854
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
