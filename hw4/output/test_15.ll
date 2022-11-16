; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i211 = alloca i64
  %_j216 = alloca i64
  store i64 9, i64* %_i211
  %_i213 = load i64, i64* %_i211
  %_i214 = load i64, i64* %_i211
  %_bop215 = add i64 %_i213, %_i214
  store i64 %_bop215, i64* %_j216
  %_i218 = load i64, i64* %_i211
  %_i219 = load i64, i64* %_i211
  %_i220 = load i64, i64* %_i211
  %_bop221 = mul i64 %_i219, %_i220
  %_bop222 = add i64 %_i218, %_bop221
  %_j223 = load i64, i64* %_j216
  %_bop224 = sub i64 %_bop222, %_j223
  %_bop225 = lshr i64 %_bop224, 2
  %_bop226 = shl i64 %_bop225, 2
  %_bop227 = ashr i64 %_bop226, 2
  ret i64 %_bop227
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
