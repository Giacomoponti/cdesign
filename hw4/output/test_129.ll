; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i1185 = alloca i64
  %_a1195 = alloca { i64, [0 x i64] }*
  store i64 999, i64* %_i1185
  %_raw_array1187 = call i64* @oat_alloc_array(i64 3)
  %_array1188 = bitcast i64* %_raw_array1187 to { i64, [0 x i64] }*
  %_gep1189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1188, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1189
  %_gep1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1188, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1191
  %_gep1193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1188, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1193
  store { i64, [0 x i64] }* %_array1188, { i64, [0 x i64] }** %_a1195
  %_a1199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1195
  %_ptr1197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1199, i32 0, i32 1, i32 2
  %_resPtr1198 = load i64, i64* %_ptr1197
  ret i64 %_resPtr1198
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
