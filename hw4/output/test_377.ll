; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1847 = alloca i64
  %_x2849 = alloca i64
  %_x3851 = alloca i64
  %_x4853 = alloca i64
  %_x5855 = alloca i64
  %_x6857 = alloca i64
  %_x7859 = alloca i64
  %_x8861 = alloca i64
  store i64 %x8, i64* %_x8861
  store i64 %x7, i64* %_x7859
  store i64 %x6, i64* %_x6857
  store i64 %x5, i64* %_x5855
  store i64 %x4, i64* %_x4853
  store i64 %x3, i64* %_x3851
  store i64 %x2, i64* %_x2849
  store i64 %x1, i64* %_x1847
  %_x1870 = load i64, i64* %_x1862
  %_x2871 = load i64, i64* %_x2863
  %_bop872 = add i64 %_x1870, %_x2871
  %_x3873 = load i64, i64* %_x3864
  %_bop874 = add i64 %_bop872, %_x3873
  %_x4875 = load i64, i64* %_x4865
  %_bop876 = add i64 %_bop874, %_x4875
  %_x5877 = load i64, i64* %_x5866
  %_bop878 = add i64 %_bop876, %_x5877
  %_x6879 = load i64, i64* %_x6867
  %_bop880 = add i64 %_bop878, %_x6879
  %_x7881 = load i64, i64* %_x7868
  %_bop882 = add i64 %_bop880, %_x7881
  %_x8883 = load i64, i64* %_x8869
  %_bop884 = add i64 %_bop882, %_x8883
  ret i64 %_bop884
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc837 = alloca i64
  %_argv839 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv839
  store i64 %argc, i64* %_argc837
  %_uop842 = mul i64 5, -1
  %_uop843 = mul i64 4, -1
  %_uop844 = mul i64 3, -1
  %_id845 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop842, i64 %_uop843, i64 %_uop844)
  ret i64 %_id845
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
