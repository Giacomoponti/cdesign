; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3235 = alloca { i64, [0 x i64] }*
  %_argc3208 = alloca i64
  %_argv3210 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3210
  store i64 %argc, i64* %_argc3208
  %_raw_array3213 = call i64* @oat_alloc_array(i64 10)
  %_array3214 = bitcast i64* %_raw_array3213 to { i64, [0 x i64] }*
  %_gep3215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep3215
  %_gep3217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3217
  %_gep3219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep3219
  %_gep3221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep3221
  %_gep3223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep3223
  %_gep3225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep3225
  %_gep3227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep3227
  %_gep3229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3229
  %_gep3231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep3231
  %_gep3233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3214, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep3233
  store { i64, [0 x i64] }* %_array3214, { i64, [0 x i64] }** %_a3235
  %_a3237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3235
  %_id3238 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3237)
  call void @print_string(i8* %_id3238)
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
