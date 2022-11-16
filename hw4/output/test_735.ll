; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1975 = alloca i64
  %_x2977 = alloca i64
  %_x3979 = alloca i64
  %_x4981 = alloca i64
  %_x5983 = alloca i64
  %_x6985 = alloca i64
  %_x7987 = alloca i64
  %_x8989 = alloca i64
  store i64 %x8, i64* %_x8989
  store i64 %x7, i64* %_x7987
  store i64 %x6, i64* %_x6985
  store i64 %x5, i64* %_x5983
  store i64 %x4, i64* %_x4981
  store i64 %x3, i64* %_x3979
  store i64 %x2, i64* %_x2977
  store i64 %x1, i64* %_x1975
  %_x1998 = load i64, i64* %_x1990
  %_x2999 = load i64, i64* %_x2991
  %_bop1000 = add i64 %_x1998, %_x2999
  %_x31001 = load i64, i64* %_x3992
  %_bop1002 = add i64 %_bop1000, %_x31001
  %_x41003 = load i64, i64* %_x4993
  %_bop1004 = add i64 %_bop1002, %_x41003
  %_x51005 = load i64, i64* %_x5994
  %_bop1006 = add i64 %_bop1004, %_x51005
  %_x61007 = load i64, i64* %_x6995
  %_bop1008 = add i64 %_bop1006, %_x61007
  %_x71009 = load i64, i64* %_x7996
  %_bop1010 = add i64 %_bop1008, %_x71009
  %_x81011 = load i64, i64* %_x8997
  %_bop1012 = add i64 %_bop1010, %_x81011
  ret i64 %_bop1012
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc965 = alloca i64
  %_argv967 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv967
  store i64 %argc, i64* %_argc965
  %_uop970 = mul i64 5, -1
  %_uop971 = mul i64 4, -1
  %_uop972 = mul i64 3, -1
  %_id973 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop970, i64 %_uop971, i64 %_uop972)
  ret i64 %_id973
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
