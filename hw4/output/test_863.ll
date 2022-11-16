; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2203 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc2180 = alloca i64
  %_argv2182 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2182
  store i64 %argc, i64* %_argc2180
  %_raw_array2185 = call i64* @oat_alloc_array(i64 2)
  %_array2186 = bitcast i64* %_raw_array2185 to { i64, [0 x i8*] }*
  %_gep2187 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2186, i32 0, i32 1, i32 0
  store void null, void* %_gep2187
  %_gep2189 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2186, i32 0, i32 1, i32 1
  store void null, void* %_gep2189
  %_raw_array2191 = call i64* @oat_alloc_array(i64 2)
  %_array2192 = bitcast i64* %_raw_array2191 to { i64, [0 x i8*] }*
  %_gep2193 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2192, i32 0, i32 1, i32 0
  store void null, void* %_gep2193
  %_gep2195 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2192, i32 0, i32 1, i32 1
  store void null, void* %_gep2195
  %_raw_array2197 = call i64* @oat_alloc_array(i64 2)
  %_array2198 = bitcast i64* %_raw_array2197 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_gep2199 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2198, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2186, { i64, [0 x i8*] }** %_gep2199
  %_gep2201 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2198, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2192, { i64, [0 x i8*] }** %_gep2201
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2198, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2203
  %_strs2209 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2203
  %_ptr2207 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs2209, i32 0, i32 1, i32 1
  %_resPtr2208 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr2207
  %_ptr2205 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_resPtr2208, i32 0, i32 1, i32 1
  %_resPtr2206 = load i8*, i8** %_ptr2205
  call void @print_string(i8* %_resPtr2206)
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
