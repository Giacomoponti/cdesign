; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b309 = alloca { i64, [0 x i1] }*
  %_i311 = alloca i64
  %_raw_array303 = call i64* @oat_alloc_array(i64 2)
  %_array304 = bitcast i64* %_raw_array303 to { i64, [0 x i1] }*
  %_gep305 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array304, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep305
  %_gep307 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array304, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep307
  store { i64, [0 x i1] }* %_array304, { i64, [0 x i1] }** %_b309
  store i64 0, i64* %_i311
  %_b315 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b309
  %_ptr313 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b315, i32 0, i32 1, i32 0
  %_resPtr314 = load i1, i1* %_ptr313
  br i1 %_resPtr314, label %_if318, label %_else317
_if318:
  store i64 1, i64* %_i311
  br label %_after316
_else317:
  br label %_after316
_after316:
  %_i321 = load i64, i64* %_i311
  ret i64 %_i321
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
