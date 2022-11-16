; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2145 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc2122 = alloca i64
  %_argv2124 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2124
  store i64 %argc, i64* %_argc2122
  %_raw_array2127 = call i64* @oat_alloc_array(i64 2)
  %_array2128 = bitcast i64* %_raw_array2127 to { i64, [0 x i8*] }*
  %_gep2129 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2128, i32 0, i32 1, i32 0
  store void null, void* %_gep2129
  %_gep2131 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2128, i32 0, i32 1, i32 1
  store void null, void* %_gep2131
  %_raw_array2133 = call i64* @oat_alloc_array(i64 2)
  %_array2134 = bitcast i64* %_raw_array2133 to { i64, [0 x i8*] }*
  %_gep2135 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2134, i32 0, i32 1, i32 0
  store void null, void* %_gep2135
  %_gep2137 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2134, i32 0, i32 1, i32 1
  store void null, void* %_gep2137
  %_raw_array2139 = call i64* @oat_alloc_array(i64 2)
  %_array2140 = bitcast i64* %_raw_array2139 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_gep2141 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2140, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2128, { i64, [0 x i8*] }** %_gep2141
  %_gep2143 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2140, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2134, { i64, [0 x i8*] }** %_gep2143
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2140, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2145
  %_strs2151 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2145
  %_ptr2149 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs2151, i32 0, i32 1, i32 1
  %_resPtr2150 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr2149
  %_ptr2147 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_resPtr2150, i32 0, i32 1, i32 1
  %_resPtr2148 = load i8*, i8** %_ptr2147
  call void @print_string(i8* %_resPtr2148)
  ret i64 0
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
