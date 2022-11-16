; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b259 = alloca { i64, [0 x i1] }*
  %_i261 = alloca i64
  %_raw_array253 = call i64* @oat_alloc_array(i64 2)
  %_array254 = bitcast i64* %_raw_array253 to { i64, [0 x i1] }*
  %_gep255 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array254, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep255
  %_gep257 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array254, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep257
  store { i64, [0 x i1] }* %_array254, { i64, [0 x i1] }** %_b259
  store i64 0, i64* %_i261
  %_b265 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b259
  %_ptr263 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b265, i32 0, i32 1, i32 0
  %_resPtr264 = load i1, i1* %_ptr263
  br i1 %_resPtr264, label %_if268, label %_else267
_if268:
  store i64 1, i64* %_i261
  br label %_after266
_else267:
  br label %_after266
_after266:
  %_i271 = load i64, i64* %_i261
  ret i64 %_i271
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
