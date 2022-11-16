; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_s2176 = global [4 x i8] c"abc\00"
@_s12177 = global i8* bitcast ([4 x i8]* @_s2176 to i8*)
@_s2179 = global [4 x i8] c"def\00"
@_s12180 = global i8* bitcast ([4 x i8]* @_s2179 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2188 = alloca { i64, [0 x i8*] }*
  %_argc2171 = alloca i64
  %_argv2173 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2173
  store i64 %argc, i64* %_argc2171
  %_tmp2178 = load i8*, i8** @_s12177
  %_tmp2181 = load i8*, i8** @_s12180
  %_raw_array2182 = call i64* @oat_alloc_array(i64 2)
  %_array2183 = bitcast i64* %_raw_array2182 to { i64, [0 x i8*] }*
  %_gep2184 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2183, i32 0, i32 1, i32 0
  store i8* %_tmp2178, i8** %_gep2184
  %_gep2186 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2183, i32 0, i32 1, i32 1
  store i8* %_tmp2181, i8** %_gep2186
  store { i64, [0 x i8*] }* %_array2183, { i64, [0 x i8*] }** %_strs2188
  %_strs2192 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs2188
  %_ptr2190 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs2192, i32 0, i32 1, i32 0
  %_resPtr2191 = load i8*, i8** %_ptr2190
  call void @print_string(i8* %_resPtr2191)
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
