; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i2127 = alloca i64
  %_a2137 = alloca { i64, [0 x i64] }*
  %_argc2122 = alloca i64
  %_argv2124 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2124
  store i64 %argc, i64* %_argc2122
  store i64 999, i64* %_i2127
  %_raw_array2129 = call i64* @oat_alloc_array(i64 3)
  %_array2130 = bitcast i64* %_raw_array2129 to { i64, [0 x i64] }*
  %_gep2131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2130, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep2131
  %_gep2133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2130, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep2133
  %_gep2135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2130, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep2135
  store { i64, [0 x i64] }* %_array2130, { i64, [0 x i64] }** %_a2137
  %_a2141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2137
  %_ptr2139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2141, i32 0, i32 1, i32 2
  %_resPtr2140 = load i64, i64* %_ptr2139
  ret i64 %_resPtr2140
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
