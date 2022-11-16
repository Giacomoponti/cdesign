; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1959 = alloca i64
  %_x2961 = alloca i64
  %_x3963 = alloca i64
  %_x4965 = alloca i64
  %_x5967 = alloca i64
  %_x6969 = alloca i64
  %_x7971 = alloca i64
  %_x8973 = alloca i64
  store i64 %x8, i64* %_x8973
  store i64 %x7, i64* %_x7971
  store i64 %x6, i64* %_x6969
  store i64 %x5, i64* %_x5967
  store i64 %x4, i64* %_x4965
  store i64 %x3, i64* %_x3963
  store i64 %x2, i64* %_x2961
  store i64 %x1, i64* %_x1959
  %_x1982 = load i64, i64* %_x1974
  %_x2983 = load i64, i64* %_x2975
  %_bop984 = add i64 %_x1982, %_x2983
  %_x3985 = load i64, i64* %_x3976
  %_bop986 = add i64 %_bop984, %_x3985
  %_x4987 = load i64, i64* %_x4977
  %_bop988 = add i64 %_bop986, %_x4987
  %_x5989 = load i64, i64* %_x5978
  %_bop990 = add i64 %_bop988, %_x5989
  %_x6991 = load i64, i64* %_x6979
  %_bop992 = add i64 %_bop990, %_x6991
  %_x7993 = load i64, i64* %_x7980
  %_bop994 = add i64 %_bop992, %_x7993
  %_x8995 = load i64, i64* %_x8981
  %_bop996 = add i64 %_bop994, %_x8995
  ret i64 %_bop996
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc949 = alloca i64
  %_argv951 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv951
  store i64 %argc, i64* %_argc949
  %_uop954 = mul i64 5, -1
  %_uop955 = mul i64 4, -1
  %_uop956 = mul i64 3, -1
  %_id957 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop954, i64 %_uop955, i64 %_uop956)
  ret i64 %_id957
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
