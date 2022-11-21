; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1871 = alloca i64
  store i64 %x1, i64* %_x1871
  %_x2873 = alloca i64
  store i64 %x2, i64* %_x2873
  %_x3875 = alloca i64
  store i64 %x3, i64* %_x3875
  %_x4877 = alloca i64
  store i64 %x4, i64* %_x4877
  %_x5879 = alloca i64
  store i64 %x5, i64* %_x5879
  %_x6881 = alloca i64
  store i64 %x6, i64* %_x6881
  %_x7883 = alloca i64
  store i64 %x7, i64* %_x7883
  %_x8885 = alloca i64
  store i64 %x8, i64* %_x8885
  %_x1886 = load i64, i64* %_x1871
  %_x2887 = load i64, i64* %_x2873
  %_bop888 = add i64 %_x1886, %_x2887
  %_x3889 = load i64, i64* %_x3875
  %_bop890 = add i64 %_bop888, %_x3889
  %_x4891 = load i64, i64* %_x4877
  %_bop892 = add i64 %_bop890, %_x4891
  %_x5893 = load i64, i64* %_x5879
  %_bop894 = add i64 %_bop892, %_x5893
  %_x6895 = load i64, i64* %_x6881
  %_bop896 = add i64 %_bop894, %_x6895
  %_x7897 = load i64, i64* %_x7883
  %_bop898 = add i64 %_bop896, %_x7897
  %_x8899 = load i64, i64* %_x8885
  %_bop900 = add i64 %_bop898, %_x8899
  ret i64 %_bop900
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc863 = alloca i64
  store i64 %argc, i64* %_argc863
  %_argv865 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv865
  %_uop866 = mul i64 5, -1
  %_uop867 = mul i64 4, -1
  %_uop868 = mul i64 3, -1
  %_869 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop866, i64 %_uop867, i64 %_uop868)
  ret i64 %_869
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
