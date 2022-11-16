; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  store i64 %i, i64* %_i950
  %_i950 = alloca i64
  %_i952 = load i64, i64* %_i951
  %_id953 = call i64 @f2(i64 %_i952)
  ret i64 %_id953
}

define i64 @f2(i64 %i) {
  store i64 %i, i64* %_i945
  %_i945 = alloca i64
  %_i947 = load i64, i64* %_i946
  %_id948 = call i64 @f3(i64 %_i947)
  ret i64 %_id948
}

define i64 @f3(i64 %i) {
  store i64 %i, i64* %_i940
  %_i940 = alloca i64
  %_i942 = load i64, i64* %_i941
  %_id943 = call i64 @f4(i64 %_i942)
  ret i64 %_id943
}

define i64 @f4(i64 %i) {
  store i64 %i, i64* %_i935
  %_i935 = alloca i64
  %_i937 = load i64, i64* %_i936
  %_id938 = call i64 @f5(i64 %_i937)
  ret i64 %_id938
}

define i64 @f5(i64 %i) {
  store i64 %i, i64* %_i930
  %_i930 = alloca i64
  %_i932 = load i64, i64* %_i931
  %_id933 = call i64 @f6(i64 %_i932)
  ret i64 %_id933
}

define i64 @f6(i64 %i) {
  store i64 %i, i64* %_i925
  %_i925 = alloca i64
  %_i927 = load i64, i64* %_i926
  %_id928 = call i64 @f7(i64 %_i927)
  ret i64 %_id928
}

define i64 @f7(i64 %i) {
  store i64 %i, i64* %_i920
  %_i920 = alloca i64
  %_i922 = load i64, i64* %_i921
  %_id923 = call i64 @f8(i64 %_i922)
  ret i64 %_id923
}

define i64 @f8(i64 %i) {
  store i64 %i, i64* %_i915
  %_i915 = alloca i64
  %_i917 = load i64, i64* %_i916
  %_id918 = call i64 @f9(i64 %_i917)
  ret i64 %_id918
}

define i64 @f9(i64 %i) {
  store i64 %i, i64* %_i911
  %_i911 = alloca i64
  %_i913 = load i64, i64* %_i912
  ret i64 %_i913
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc903
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv905
  %_argv905 = alloca { i64, [0 x i8*] }*
  %_argc903 = alloca i64
  %_argc908 = load i64, i64* %_argc906
  %_id909 = call i64 @f1(i64 %_argc908)
  ret i64 %_id909
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
