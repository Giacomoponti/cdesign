; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i261 = alloca i64
  %_j266 = alloca i64
  store i64 9, i64* %_i261
  %_i263 = load i64, i64* %_i261
  %_i264 = load i64, i64* %_i261
  %_bop265 = add i64 %_i263, %_i264
  store i64 %_bop265, i64* %_j266
  %_i268 = load i64, i64* %_i261
  %_i269 = load i64, i64* %_i261
  %_i270 = load i64, i64* %_i261
  %_bop271 = mul i64 %_i269, %_i270
  %_bop272 = add i64 %_i268, %_bop271
  %_j273 = load i64, i64* %_j266
  %_bop274 = sub i64 %_bop272, %_j273
  %_bop275 = lshr i64 %_bop274, 2
  %_bop276 = shl i64 %_bop275, 2
  %_bop277 = ashr i64 %_bop276, 2
  ret i64 %_bop277
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
