; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i821 = alloca i64
  store i64 %i, i64* %_i821
  %_i823 = load i64, i64* %_i822
  %_id824 = call i64 @f2(i64 %_i823)
  ret i64 %_id824
}

define i64 @f2(i64 %i) {
  %_i816 = alloca i64
  store i64 %i, i64* %_i816
  %_i818 = load i64, i64* %_i817
  %_id819 = call i64 @f3(i64 %_i818)
  ret i64 %_id819
}

define i64 @f3(i64 %i) {
  %_i811 = alloca i64
  store i64 %i, i64* %_i811
  %_i813 = load i64, i64* %_i812
  %_id814 = call i64 @f4(i64 %_i813)
  ret i64 %_id814
}

define i64 @f4(i64 %i) {
  %_i806 = alloca i64
  store i64 %i, i64* %_i806
  %_i808 = load i64, i64* %_i807
  %_id809 = call i64 @f5(i64 %_i808)
  ret i64 %_id809
}

define i64 @f5(i64 %i) {
  %_i801 = alloca i64
  store i64 %i, i64* %_i801
  %_i803 = load i64, i64* %_i802
  %_id804 = call i64 @f6(i64 %_i803)
  ret i64 %_id804
}

define i64 @f6(i64 %i) {
  %_i796 = alloca i64
  store i64 %i, i64* %_i796
  %_i798 = load i64, i64* %_i797
  %_id799 = call i64 @f7(i64 %_i798)
  ret i64 %_id799
}

define i64 @f7(i64 %i) {
  %_i791 = alloca i64
  store i64 %i, i64* %_i791
  %_i793 = load i64, i64* %_i792
  %_id794 = call i64 @f8(i64 %_i793)
  ret i64 %_id794
}

define i64 @f8(i64 %i) {
  %_i786 = alloca i64
  store i64 %i, i64* %_i786
  %_i788 = load i64, i64* %_i787
  %_id789 = call i64 @f9(i64 %_i788)
  ret i64 %_id789
}

define i64 @f9(i64 %i) {
  %_i782 = alloca i64
  store i64 %i, i64* %_i782
  %_i784 = load i64, i64* %_i783
  ret i64 %_i784
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc774 = alloca i64
  %_argv776 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv776
  store i64 %argc, i64* %_argc774
  %_argc779 = load i64, i64* %_argc777
  %_id780 = call i64 @f1(i64 %_argc779)
  ret i64 %_id780
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
