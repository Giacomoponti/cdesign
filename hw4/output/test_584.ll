; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1849 = alloca i64
  %_x2851 = alloca i64
  %_x3853 = alloca i64
  %_x4855 = alloca i64
  %_x5857 = alloca i64
  %_x6859 = alloca i64
  %_x7861 = alloca i64
  %_x8863 = alloca i64
  store i64 %x8, i64* %_x8863
  store i64 %x7, i64* %_x7861
  store i64 %x6, i64* %_x6859
  store i64 %x5, i64* %_x5857
  store i64 %x4, i64* %_x4855
  store i64 %x3, i64* %_x3853
  store i64 %x2, i64* %_x2851
  store i64 %x1, i64* %_x1849
  %_x1872 = load i64, i64* %_x1864
  %_x2873 = load i64, i64* %_x2865
  %_bop874 = add i64 %_x1872, %_x2873
  %_x3875 = load i64, i64* %_x3866
  %_bop876 = add i64 %_bop874, %_x3875
  %_x4877 = load i64, i64* %_x4867
  %_bop878 = add i64 %_bop876, %_x4877
  %_x5879 = load i64, i64* %_x5868
  %_bop880 = add i64 %_bop878, %_x5879
  %_x6881 = load i64, i64* %_x6869
  %_bop882 = add i64 %_bop880, %_x6881
  %_x7883 = load i64, i64* %_x7870
  %_bop884 = add i64 %_bop882, %_x7883
  %_x8885 = load i64, i64* %_x8871
  %_bop886 = add i64 %_bop884, %_x8885
  ret i64 %_bop886
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc839 = alloca i64
  %_argv841 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv841
  store i64 %argc, i64* %_argc839
  %_uop844 = mul i64 5, -1
  %_uop845 = mul i64 4, -1
  %_uop846 = mul i64 3, -1
  %_id847 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop844, i64 %_uop845, i64 %_uop846)
  ret i64 %_id847
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
