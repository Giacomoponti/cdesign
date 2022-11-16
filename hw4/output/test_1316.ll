; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x70 = alloca i64
  %_y73 = alloca i64
  %_argc64 = alloca i64
  %_argv66 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv66
  store i64 %argc, i64* %_argc64
  %_bop69 = lshr i64 100, 3
  store i64 %_bop69, i64* %_x70
  %_bop72 = shl i64 100, 3
  store i64 %_bop72, i64* %_y73
  %_x75 = load i64, i64* %_x70
  %_y76 = load i64, i64* %_y73
  %_bop77 = sub i64 %_x75, %_y76
  %_bop78 = icmp sle i64 %_bop77, 0
  br i1 %_bop78, label %_if81, label %_else80
_if81:
  %_x86 = load i64, i64* %_x70
  %_uop87 = mul i64 %_x86, -1
  %_y88 = load i64, i64* %_y73
  %_bop89 = sub i64 %_uop87, %_y88
  ret i64 %_bop89
_else80:
  %_x83 = load i64, i64* %_x70
  %_y84 = load i64, i64* %_y73
  %_bop85 = sub i64 %_x83, %_y84
  ret i64 %_bop85
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
