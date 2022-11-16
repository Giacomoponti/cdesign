; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i253 = alloca i64
  %_j258 = alloca i64
  store i64 9, i64* %_i253
  %_i255 = load i64, i64* %_i253
  %_i256 = load i64, i64* %_i253
  %_bop257 = add i64 %_i255, %_i256
  store i64 %_bop257, i64* %_j258
  %_i260 = load i64, i64* %_i253
  %_i261 = load i64, i64* %_i253
  %_i262 = load i64, i64* %_i253
  %_bop263 = mul i64 %_i261, %_i262
  %_bop264 = add i64 %_i260, %_bop263
  %_j265 = load i64, i64* %_j258
  %_bop266 = sub i64 %_bop264, %_j265
  %_bop267 = lshr i64 %_bop266, 2
  %_bop268 = shl i64 %_bop267, 2
  %_bop269 = ashr i64 %_bop268, 2
  ret i64 %_bop269
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
