; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x60 = alloca i64
  %_y63 = alloca i64
  %_argc56 = alloca i64
  store i64 %argc, i64* %_argc56
  %_argv58 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv58
  %_bop59 = lshr i64 100, 3
  store i64 %_bop59, i64* %_x60
  %_bop62 = shl i64 100, 3
  store i64 %_bop62, i64* %_y63
  %_x65 = load i64, i64* %_x60
  %_y66 = load i64, i64* %_y63
  %_bop67 = sub i64 %_x65, %_y66
  %_bop68 = icmp sle i64 %_bop67, 0
  br i1 %_bop68, label %_if71, label %_else70
_if71:
  %_x76 = load i64, i64* %_x60
  %_uop77 = mul i64 %_x76, -1
  %_y78 = load i64, i64* %_y63
  %_bop79 = sub i64 %_uop77, %_y78
  ret i64 %_bop79
_else70:
  %_x73 = load i64, i64* %_x60
  %_y74 = load i64, i64* %_y63
  %_bop75 = sub i64 %_x73, %_y74
  ret i64 %_bop75
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
