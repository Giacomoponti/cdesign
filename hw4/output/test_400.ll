; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2209 = load i64, i64* @a
  %_bop2210 = add i64 %_a2209, 1
  store i64 %_bop2210, i64* @a
  %_a2212 = load i64, i64* @a
  ret i64 %_a2212
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2190 = alloca { i64, [0 x i64] }*
  %_argc2182 = alloca i64
  %_argv2184 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2184
  store i64 %argc, i64* %_argc2182
  %_id2187 = call i64 @f()
  %_raw_array2188 = call i64* @oat_alloc_array(i64 %_id2187)
  %_array2189 = bitcast i64* %_raw_array2188 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2189, { i64, [0 x i64] }** %_b2190
  %_id2192 = call i64 @f()
  %_b2193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2190
  %_ptr2194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2193, i32 0, i32 1, i32 0
  store i64 %_id2192, i64* %_ptr2194
  %_id2196 = call i64 @f()
  %_b2197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2190
  %_ptr2198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2197, i32 0, i32 1, i32 1
  store i64 %_id2196, i64* %_ptr2198
  %_a2200 = load i64, i64* @a
  %_b2203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2190
  %_ptr2201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2203, i32 0, i32 1, i32 0
  %_resPtr2202 = load i64, i64* %_ptr2201
  %_bop2204 = add i64 %_a2200, %_resPtr2202
  %_b2207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2190
  %_ptr2205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2207, i32 0, i32 1, i32 1
  %_resPtr2206 = load i64, i64* %_ptr2205
  %_bop2208 = add i64 %_bop2204, %_resPtr2206
  ret i64 %_bop2208
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
