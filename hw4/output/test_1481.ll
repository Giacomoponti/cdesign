; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_s2200 = global [4 x i8] c"abc\00"
@_s2201 = global i8* bitcast ([4 x i8]* @_s2200 to i8*)
@_s2203 = global [4 x i8] c"def\00"
@_s2204 = global i8* bitcast ([4 x i8]* @_s2203 to i8*)
@_s2212 = global [4 x i8] c"789\00"
@_s2213 = global i8* bitcast ([4 x i8]* @_s2212 to i8*)
@_s2215 = global [4 x i8] c"123\00"
@_s2216 = global i8* bitcast ([4 x i8]* @_s2215 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2230 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc2195 = alloca i64
  %_argv2197 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2197
  store i64 %argc, i64* %_argc2195
  %_tmp2202 = load i8*, i8** @_s2201
  %_tmp2205 = load i8*, i8** @_s2204
  %_raw_array2206 = call i64* @oat_alloc_array(i64 2)
  %_array2207 = bitcast i64* %_raw_array2206 to { i64, [0 x i8*] }*
  %_gep2208 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2207, i32 0, i32 1, i32 0
  store i8* %_tmp2205, i8** %_gep2208
  %_gep2210 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2207, i32 0, i32 1, i32 1
  store i8* %_tmp2202, i8** %_gep2210
  %_tmp2214 = load i8*, i8** @_s2213
  %_tmp2217 = load i8*, i8** @_s2216
  %_raw_array2218 = call i64* @oat_alloc_array(i64 2)
  %_array2219 = bitcast i64* %_raw_array2218 to { i64, [0 x i8*] }*
  %_gep2220 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2219, i32 0, i32 1, i32 0
  store i8* %_tmp2217, i8** %_gep2220
  %_gep2222 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2219, i32 0, i32 1, i32 1
  store i8* %_tmp2214, i8** %_gep2222
  %_raw_array2224 = call i64* @oat_alloc_array(i64 2)
  %_array2225 = bitcast i64* %_raw_array2224 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_gep2226 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2225, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2219, { i64, [0 x i8*] }** %_gep2226
  %_gep2228 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2225, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2207, { i64, [0 x i8*] }** %_gep2228
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2225, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2230
  %_strs2236 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2230
  %_ptr2234 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs2236, i32 0, i32 1, i32 1
  %_resPtr2235 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr2234
  %_ptr2232 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_resPtr2235, i32 0, i32 1, i32 1
  %_resPtr2233 = load i8*, i8** %_ptr2232
  call void @print_string(i8* %_resPtr2233)
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
