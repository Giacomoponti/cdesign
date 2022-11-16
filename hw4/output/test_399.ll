; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2177 = load i64, i64* @a
  %_bop2178 = add i64 %_a2177, 1
  store i64 %_bop2178, i64* @a
  %_a2180 = load i64, i64* @a
  ret i64 %_a2180
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2160 = alloca { i64, [0 x i64] }*
  %_argc2152 = alloca i64
  %_argv2154 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2154
  store i64 %argc, i64* %_argc2152
  %_id2157 = call i64 @f()
  %_raw_array2158 = call i64* @oat_alloc_array(i64 %_id2157)
  %_array2159 = bitcast i64* %_raw_array2158 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2159, { i64, [0 x i64] }** %_b2160
  %_b2162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2160
  %_ptr2163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2162, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr2163
  %_b2165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2160
  %_ptr2166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2165, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr2166
  %_a2168 = load i64, i64* @a
  %_b2171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2160
  %_ptr2169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2171, i32 0, i32 1, i32 0
  %_resPtr2170 = load i64, i64* %_ptr2169
  %_bop2172 = add i64 %_a2168, %_resPtr2170
  %_b2175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2160
  %_ptr2173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2175, i32 0, i32 1, i32 1
  %_resPtr2174 = load i64, i64* %_ptr2173
  %_bop2176 = add i64 %_bop2172, %_resPtr2174
  ret i64 %_bop2176
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
