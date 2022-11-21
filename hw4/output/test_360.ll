; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i848 = alloca i64
  store i64 %i, i64* %_i848
  %_i849 = load i64, i64* %_i848
  %_850 = call i64 @f2(i64 %_i849)
  ret i64 %_850
}

define i64 @f2(i64 %i) {
  %_i844 = alloca i64
  store i64 %i, i64* %_i844
  %_i845 = load i64, i64* %_i844
  %_846 = call i64 @f3(i64 %_i845)
  ret i64 %_846
}

define i64 @f3(i64 %i) {
  %_i840 = alloca i64
  store i64 %i, i64* %_i840
  %_i841 = load i64, i64* %_i840
  %_842 = call i64 @f4(i64 %_i841)
  ret i64 %_842
}

define i64 @f4(i64 %i) {
  %_i836 = alloca i64
  store i64 %i, i64* %_i836
  %_i837 = load i64, i64* %_i836
  %_838 = call i64 @f5(i64 %_i837)
  ret i64 %_838
}

define i64 @f5(i64 %i) {
  %_i832 = alloca i64
  store i64 %i, i64* %_i832
  %_i833 = load i64, i64* %_i832
  %_834 = call i64 @f6(i64 %_i833)
  ret i64 %_834
}

define i64 @f6(i64 %i) {
  %_i828 = alloca i64
  store i64 %i, i64* %_i828
  %_i829 = load i64, i64* %_i828
  %_830 = call i64 @f7(i64 %_i829)
  ret i64 %_830
}

define i64 @f7(i64 %i) {
  %_i824 = alloca i64
  store i64 %i, i64* %_i824
  %_i825 = load i64, i64* %_i824
  %_826 = call i64 @f8(i64 %_i825)
  ret i64 %_826
}

define i64 @f8(i64 %i) {
  %_i820 = alloca i64
  store i64 %i, i64* %_i820
  %_i821 = load i64, i64* %_i820
  %_822 = call i64 @f9(i64 %_i821)
  ret i64 %_822
}

define i64 @f9(i64 %i) {
  %_i817 = alloca i64
  store i64 %i, i64* %_i817
  %_i818 = load i64, i64* %_i817
  ret i64 %_i818
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc811 = alloca i64
  store i64 %argc, i64* %_argc811
  %_argv813 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv813
  %_argc814 = load i64, i64* %_argc811
  %_815 = call i64 @f1(i64 %_argc814)
  ret i64 %_815
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
