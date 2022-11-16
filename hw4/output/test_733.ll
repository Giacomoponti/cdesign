; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i947 = alloca i64
  store i64 %i, i64* %_i947
  %_i949 = load i64, i64* %_i948
  %_id950 = call i64 @f2(i64 %_i949)
  ret i64 %_id950
}

define i64 @f2(i64 %i) {
  %_i942 = alloca i64
  store i64 %i, i64* %_i942
  %_i944 = load i64, i64* %_i943
  %_id945 = call i64 @f3(i64 %_i944)
  ret i64 %_id945
}

define i64 @f3(i64 %i) {
  %_i937 = alloca i64
  store i64 %i, i64* %_i937
  %_i939 = load i64, i64* %_i938
  %_id940 = call i64 @f4(i64 %_i939)
  ret i64 %_id940
}

define i64 @f4(i64 %i) {
  %_i932 = alloca i64
  store i64 %i, i64* %_i932
  %_i934 = load i64, i64* %_i933
  %_id935 = call i64 @f5(i64 %_i934)
  ret i64 %_id935
}

define i64 @f5(i64 %i) {
  %_i927 = alloca i64
  store i64 %i, i64* %_i927
  %_i929 = load i64, i64* %_i928
  %_id930 = call i64 @f6(i64 %_i929)
  ret i64 %_id930
}

define i64 @f6(i64 %i) {
  %_i922 = alloca i64
  store i64 %i, i64* %_i922
  %_i924 = load i64, i64* %_i923
  %_id925 = call i64 @f7(i64 %_i924)
  ret i64 %_id925
}

define i64 @f7(i64 %i) {
  %_i917 = alloca i64
  store i64 %i, i64* %_i917
  %_i919 = load i64, i64* %_i918
  %_id920 = call i64 @f8(i64 %_i919)
  ret i64 %_id920
}

define i64 @f8(i64 %i) {
  %_i912 = alloca i64
  store i64 %i, i64* %_i912
  %_i914 = load i64, i64* %_i913
  %_id915 = call i64 @f9(i64 %_i914)
  ret i64 %_id915
}

define i64 @f9(i64 %i) {
  %_i908 = alloca i64
  store i64 %i, i64* %_i908
  %_i910 = load i64, i64* %_i909
  ret i64 %_i910
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc900 = alloca i64
  %_argv902 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv902
  store i64 %argc, i64* %_argc900
  %_argc905 = load i64, i64* %_argc903
  %_id906 = call i64 @f1(i64 %_argc905)
  ret i64 %_id906
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
