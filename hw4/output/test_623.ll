; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i199 = alloca i64
  %_j204 = alloca i64
  store i64 9, i64* %_i199
  %_i201 = load i64, i64* %_i199
  %_i202 = load i64, i64* %_i199
  %_bop203 = add i64 %_i201, %_i202
  store i64 %_bop203, i64* %_j204
  %_i206 = load i64, i64* %_i199
  %_i207 = load i64, i64* %_i199
  %_i208 = load i64, i64* %_i199
  %_bop209 = mul i64 %_i207, %_i208
  %_bop210 = add i64 %_i206, %_bop209
  %_j211 = load i64, i64* %_j204
  %_bop212 = sub i64 %_bop210, %_j211
  %_bop213 = lshr i64 %_bop212, 2
  %_bop214 = shl i64 %_bop213, 2
  %_bop215 = ashr i64 %_bop214, 2
  ret i64 %_bop215
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
