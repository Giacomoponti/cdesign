; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i931 = alloca i64
  store i64 %i, i64* %_i931
  %_i933 = load i64, i64* %_i932
  %_id934 = call i64 @f2(i64 %_i933)
  ret i64 %_id934
}

define i64 @f2(i64 %i) {
  %_i926 = alloca i64
  store i64 %i, i64* %_i926
  %_i928 = load i64, i64* %_i927
  %_id929 = call i64 @f3(i64 %_i928)
  ret i64 %_id929
}

define i64 @f3(i64 %i) {
  %_i921 = alloca i64
  store i64 %i, i64* %_i921
  %_i923 = load i64, i64* %_i922
  %_id924 = call i64 @f4(i64 %_i923)
  ret i64 %_id924
}

define i64 @f4(i64 %i) {
  %_i916 = alloca i64
  store i64 %i, i64* %_i916
  %_i918 = load i64, i64* %_i917
  %_id919 = call i64 @f5(i64 %_i918)
  ret i64 %_id919
}

define i64 @f5(i64 %i) {
  %_i911 = alloca i64
  store i64 %i, i64* %_i911
  %_i913 = load i64, i64* %_i912
  %_id914 = call i64 @f6(i64 %_i913)
  ret i64 %_id914
}

define i64 @f6(i64 %i) {
  %_i906 = alloca i64
  store i64 %i, i64* %_i906
  %_i908 = load i64, i64* %_i907
  %_id909 = call i64 @f7(i64 %_i908)
  ret i64 %_id909
}

define i64 @f7(i64 %i) {
  %_i901 = alloca i64
  store i64 %i, i64* %_i901
  %_i903 = load i64, i64* %_i902
  %_id904 = call i64 @f8(i64 %_i903)
  ret i64 %_id904
}

define i64 @f8(i64 %i) {
  %_i896 = alloca i64
  store i64 %i, i64* %_i896
  %_i898 = load i64, i64* %_i897
  %_id899 = call i64 @f9(i64 %_i898)
  ret i64 %_id899
}

define i64 @f9(i64 %i) {
  %_i892 = alloca i64
  store i64 %i, i64* %_i892
  %_i894 = load i64, i64* %_i893
  ret i64 %_i894
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc884 = alloca i64
  %_argv886 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv886
  store i64 %argc, i64* %_argc884
  %_argc889 = load i64, i64* %_argc887
  %_id890 = call i64 @f1(i64 %_argc889)
  ret i64 %_id890
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
