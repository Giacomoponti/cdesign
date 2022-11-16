; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i203 = alloca { i64, [0 x i64] }*
  %_raw_array197 = call i64* @oat_alloc_array(i64 2)
  %_array198 = bitcast i64* %_raw_array197 to { i64, [0 x i64] }*
  %_gep199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array198, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep199
  %_gep201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array198, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep201
  store { i64, [0 x i64] }* %_array198, { i64, [0 x i64] }** %_i203
  %_i207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i203
  %_ptr205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i207, i32 0, i32 1, i32 0
  %_resPtr206 = load i64, i64* %_ptr205
  ret i64 %_resPtr206
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
