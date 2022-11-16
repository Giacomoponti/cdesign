; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i2136 = alloca i64
  %_a2146 = alloca { i64, [0 x i64] }*
  %_argc2131 = alloca i64
  %_argv2133 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2133
  store i64 %argc, i64* %_argc2131
  store i64 999, i64* %_i2136
  %_raw_array2138 = call i64* @oat_alloc_array(i64 3)
  %_array2139 = bitcast i64* %_raw_array2138 to { i64, [0 x i64] }*
  %_gep2140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2139, i32 0, i32 1, i32 0
  store i64 999, i64* %_gep2140
  %_gep2142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2139, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep2142
  %_gep2144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2139, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep2144
  store { i64, [0 x i64] }* %_array2139, { i64, [0 x i64] }** %_a2146
  %_a2150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2146
  %_ptr2148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2150, i32 0, i32 1, i32 2
  %_resPtr2149 = load i64, i64* %_ptr2148
  ret i64 %_resPtr2149
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
