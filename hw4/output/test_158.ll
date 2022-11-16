; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b301 = alloca { i64, [0 x i1] }*
  %_i303 = alloca i64
  %_raw_array295 = call i64* @oat_alloc_array(i64 2)
  %_array296 = bitcast i64* %_raw_array295 to { i64, [0 x i1] }*
  %_gep297 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array296, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep297
  %_gep299 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array296, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep299
  store { i64, [0 x i1] }* %_array296, { i64, [0 x i1] }** %_b301
  store i64 0, i64* %_i303
  %_b307 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b301
  %_ptr305 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b307, i32 0, i32 1, i32 0
  %_resPtr306 = load i1, i1* %_ptr305
  br i1 %_resPtr306, label %_if310, label %_else309
_if310:
  store i64 1, i64* %_i303
  br label %_after308
_else309:
  br label %_after308
_after308:
  %_i313 = load i64, i64* %_i303
  ret i64 %_i313
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
