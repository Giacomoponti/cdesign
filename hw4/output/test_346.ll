; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x63 = alloca i64
  %_y66 = alloca i64
  %_argc57 = alloca i64
  %_argv59 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv59
  store i64 %argc, i64* %_argc57
  %_bop62 = lshr i64 100, 3
  store i64 %_bop62, i64* %_x63
  %_bop65 = shl i64 100, 3
  store i64 %_bop65, i64* %_y66
  %_x68 = load i64, i64* %_x63
  %_y69 = load i64, i64* %_y66
  %_bop70 = sub i64 %_x68, %_y69
  %_bop71 = icmp sle i64 %_bop70, 0
  br i1 %_bop71, label %_if74, label %_else73
_if74:
  %_x79 = load i64, i64* %_x63
  %_uop80 = mul i64 %_x79, -1
  %_y81 = load i64, i64* %_y66
  %_bop82 = sub i64 %_uop80, %_y81
  ret i64 %_bop82
_else73:
  %_x76 = load i64, i64* %_x63
  %_y77 = load i64, i64* %_y66
  %_bop78 = sub i64 %_x76, %_y77
  ret i64 %_bop78
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
