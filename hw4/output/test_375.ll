; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i819 = alloca i64
  store i64 %i, i64* %_i819
  %_i821 = load i64, i64* %_i820
  %_id822 = call i64 @f2(i64 %_i821)
  ret i64 %_id822
}

define i64 @f2(i64 %i) {
  %_i814 = alloca i64
  store i64 %i, i64* %_i814
  %_i816 = load i64, i64* %_i815
  %_id817 = call i64 @f3(i64 %_i816)
  ret i64 %_id817
}

define i64 @f3(i64 %i) {
  %_i809 = alloca i64
  store i64 %i, i64* %_i809
  %_i811 = load i64, i64* %_i810
  %_id812 = call i64 @f4(i64 %_i811)
  ret i64 %_id812
}

define i64 @f4(i64 %i) {
  %_i804 = alloca i64
  store i64 %i, i64* %_i804
  %_i806 = load i64, i64* %_i805
  %_id807 = call i64 @f5(i64 %_i806)
  ret i64 %_id807
}

define i64 @f5(i64 %i) {
  %_i799 = alloca i64
  store i64 %i, i64* %_i799
  %_i801 = load i64, i64* %_i800
  %_id802 = call i64 @f6(i64 %_i801)
  ret i64 %_id802
}

define i64 @f6(i64 %i) {
  %_i794 = alloca i64
  store i64 %i, i64* %_i794
  %_i796 = load i64, i64* %_i795
  %_id797 = call i64 @f7(i64 %_i796)
  ret i64 %_id797
}

define i64 @f7(i64 %i) {
  %_i789 = alloca i64
  store i64 %i, i64* %_i789
  %_i791 = load i64, i64* %_i790
  %_id792 = call i64 @f8(i64 %_i791)
  ret i64 %_id792
}

define i64 @f8(i64 %i) {
  %_i784 = alloca i64
  store i64 %i, i64* %_i784
  %_i786 = load i64, i64* %_i785
  %_id787 = call i64 @f9(i64 %_i786)
  ret i64 %_id787
}

define i64 @f9(i64 %i) {
  %_i780 = alloca i64
  store i64 %i, i64* %_i780
  %_i782 = load i64, i64* %_i781
  ret i64 %_i782
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc772 = alloca i64
  %_argv774 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv774
  store i64 %argc, i64* %_argc772
  %_argc777 = load i64, i64* %_argc775
  %_id778 = call i64 @f1(i64 %_argc777)
  ret i64 %_id778
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
