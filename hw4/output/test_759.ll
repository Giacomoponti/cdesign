; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2173 = alloca { i64, [0 x i8*] }*
  %_argc2162 = alloca i64
  %_argv2164 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2164
  store i64 %argc, i64* %_argc2162
  %_raw_array2167 = call i64* @oat_alloc_array(i64 2)
  %_array2168 = bitcast i64* %_raw_array2167 to { i64, [0 x i8*] }*
  %_gep2169 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2168, i32 0, i32 1, i32 0
  store void null, void* %_gep2169
  %_gep2171 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2168, i32 0, i32 1, i32 1
  store void null, void* %_gep2171
  store { i64, [0 x i8*] }* %_array2168, { i64, [0 x i8*] }** %_strs2173
  %_strs2177 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs2173
  %_ptr2175 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs2177, i32 0, i32 1, i32 0
  %_resPtr2176 = load i8*, i8** %_ptr2175
  call void @print_string(i8* %_resPtr2176)
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
