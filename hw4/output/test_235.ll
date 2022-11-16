; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x33 = alloca i64
  %_y36 = alloca i64
  %_bop32 = lshr i64 100, 3
  store i64 %_bop32, i64* %_x33
  %_bop35 = shl i64 100, 3
  store i64 %_bop35, i64* %_y36
  %_x38 = load i64, i64* %_x33
  %_y39 = load i64, i64* %_y36
  %_bop40 = sub i64 %_x38, %_y39
  %_bop41 = icmp sle i64 %_bop40, 0
  br i1 %_bop41, label %_if44, label %_else43
_if44:
  %_x49 = load i64, i64* %_x33
  %_uop50 = mul i64 %_x49, -1
  %_y51 = load i64, i64* %_y36
  %_bop52 = sub i64 %_uop50, %_y51
  ret i64 %_bop52
_else43:
  %_x46 = load i64, i64* %_x33
  %_y47 = load i64, i64* %_y36
  %_bop48 = sub i64 %_x46, %_y47
  ret i64 %_bop48
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
