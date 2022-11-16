; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  store i64 %x1, i64* %_x1978
  store i64 %x2, i64* %_x2980
  store i64 %x3, i64* %_x3982
  store i64 %x4, i64* %_x4984
  store i64 %x5, i64* %_x5986
  store i64 %x6, i64* %_x6988
  store i64 %x7, i64* %_x7990
  store i64 %x8, i64* %_x8992
  %_x8992 = alloca i64
  %_x7990 = alloca i64
  %_x6988 = alloca i64
  %_x5986 = alloca i64
  %_x4984 = alloca i64
  %_x3982 = alloca i64
  %_x2980 = alloca i64
  %_x1978 = alloca i64
  %_x11001 = load i64, i64* %_x1993
  %_x21002 = load i64, i64* %_x2994
  %_bop1003 = add i64 %_x11001, %_x21002
  %_x31004 = load i64, i64* %_x3995
  %_bop1005 = add i64 %_bop1003, %_x31004
  %_x41006 = load i64, i64* %_x4996
  %_bop1007 = add i64 %_bop1005, %_x41006
  %_x51008 = load i64, i64* %_x5997
  %_bop1009 = add i64 %_bop1007, %_x51008
  %_x61010 = load i64, i64* %_x6998
  %_bop1011 = add i64 %_bop1009, %_x61010
  %_x71012 = load i64, i64* %_x7999
  %_bop1013 = add i64 %_bop1011, %_x71012
  %_x81014 = load i64, i64* %_x81000
  %_bop1015 = add i64 %_bop1013, %_x81014
  ret i64 %_bop1015
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc968
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv970
  %_argv970 = alloca { i64, [0 x i8*] }*
  %_argc968 = alloca i64
  %_uop973 = mul i64 5, -1
  %_uop974 = mul i64 4, -1
  %_uop975 = mul i64 3, -1
  %_id976 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop973, i64 %_uop974, i64 %_uop975)
  ret i64 %_id976
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
