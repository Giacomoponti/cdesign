; generated from: oatprograms/run44.oat
target triple = "x86_64-unknown-linux"
@str = global { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2176 = alloca i64
  %_argv2178 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2178
  store i64 %argc, i64* %_argc2176
  %_raw_array2181 = call i64* @oat_alloc_array(i64 1)
  %_array2182 = bitcast i64* %_raw_array2181 to { i64, [0 x i8*] }*
  %_gep2183 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2182, i32 0, i32 1, i32 0
  store void null, void* %_gep2183
  %_raw_array2185 = call i64* @oat_alloc_array(i64 1)
  %_array2186 = bitcast i64* %_raw_array2185 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_gep2187 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2186, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2182, { i64, [0 x i8*] }** %_gep2187
  %_raw_array2189 = call i64* @oat_alloc_array(i64 1)
  %_array2190 = bitcast i64* %_raw_array2189 to { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*
  %_gep2191 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array2190, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2186, { i64, [0 x { i64, [0 x i8*] }*] }** %_gep2191
  %_raw_array2193 = call i64* @oat_alloc_array(i64 1)
  %_array2194 = bitcast i64* %_raw_array2193 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*
  %_gep2195 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array2194, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array2190, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_gep2195
  %_raw_array2197 = call i64* @oat_alloc_array(i64 1)
  %_array2198 = bitcast i64* %_raw_array2197 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*
  %_gep2199 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array2198, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array2194, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_gep2199
  %_raw_array2201 = call i64* @oat_alloc_array(i64 1)
  %_array2202 = bitcast i64* %_raw_array2201 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*
  %_gep2203 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array2202, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array2198, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_gep2203
  %_raw_array2205 = call i64* @oat_alloc_array(i64 1)
  %_array2206 = bitcast i64* %_raw_array2205 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*
  %_gep2207 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array2206, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array2202, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_gep2207
  %_raw_array2209 = call i64* @oat_alloc_array(i64 1)
  %_array2210 = bitcast i64* %_raw_array2209 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*
  %_gep2211 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array2210, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array2206, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_gep2211
  %_raw_array2213 = call i64* @oat_alloc_array(i64 1)
  %_array2214 = bitcast i64* %_raw_array2213 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_gep2215 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2214, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array2210, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_gep2215
  %_raw_array2217 = call i64* @oat_alloc_array(i64 1)
  %_array2218 = bitcast i64* %_raw_array2217 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_gep2219 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2218, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2214, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_gep2219
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2218, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_str2242 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_ptr2240 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_str2242, i32 0, i32 1, i32 0
  %_resPtr2241 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_ptr2240
  %_ptr2238 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_resPtr2241, i32 0, i32 1, i32 0
  %_resPtr2239 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_ptr2238
  %_ptr2236 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_resPtr2239, i32 0, i32 1, i32 0
  %_resPtr2237 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_ptr2236
  %_ptr2234 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_resPtr2237, i32 0, i32 1, i32 0
  %_resPtr2235 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_ptr2234
  %_ptr2232 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_resPtr2235, i32 0, i32 1, i32 0
  %_resPtr2233 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_ptr2232
  %_ptr2230 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_resPtr2233, i32 0, i32 1, i32 0
  %_resPtr2231 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_ptr2230
  %_ptr2228 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_resPtr2231, i32 0, i32 1, i32 0
  %_resPtr2229 = load { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_ptr2228
  %_ptr2226 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_resPtr2229, i32 0, i32 1, i32 0
  %_resPtr2227 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_ptr2226
  %_ptr2224 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_resPtr2227, i32 0, i32 1, i32 0
  %_resPtr2225 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr2224
  %_ptr2222 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_resPtr2225, i32 0, i32 1, i32 0
  %_resPtr2223 = load i8*, i8** %_ptr2222
  call void @print_string(i8* %_resPtr2223)
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
