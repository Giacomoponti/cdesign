; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3092 = alloca i64
  store i64 %n, i64* %_n3092
  %_n3094 = load i64, i64* %_n3093
  %_bop3095 = icmp eq i64 %_n3094, 0
  br i1 %_bop3095, label %_if3098, label %_else3097
_if3098:
  ret i64 0
_else3097:
  br label %_after3096
_after3096:
  %_n3100 = load i64, i64* %_n3093
  %_bop3101 = icmp eq i64 %_n3100, 1
  br i1 %_bop3101, label %_if3104, label %_else3103
_if3104:
  ret i64 1
_else3103:
  br label %_after3102
_after3102:
  %_n3106 = load i64, i64* %_n3093
  %_bop3107 = sub i64 %_n3106, 1
  %_id3108 = call i64 @fibR(i64 %_bop3107)
  %_n3109 = load i64, i64* %_n3093
  %_bop3110 = sub i64 %_n3109, 2
  %_id3111 = call i64 @fibR(i64 %_bop3110)
  %_bop3112 = add i64 %_id3108, %_id3111
  ret i64 %_bop3112
}

define i64 @fibI(i64 %n) {
  %_a3051 = alloca i64
  %_b3053 = alloca i64
  %_old3077 = alloca i64
  %_n3049 = alloca i64
  store i64 %n, i64* %_n3049
  store i64 0, i64* %_a3051
  store i64 1, i64* %_b3053
  %_n3055 = load i64, i64* %_n3050
  %_bop3056 = icmp eq i64 %_n3055, 0
  br i1 %_bop3056, label %_if3059, label %_else3058
_if3059:
  %_a3061 = load i64, i64* %_a3051
  ret i64 %_a3061
_else3058:
  br label %_after3057
_after3057:
  %_n3062 = load i64, i64* %_n3050
  %_bop3063 = icmp eq i64 %_n3062, 1
  br i1 %_bop3063, label %_if3066, label %_else3065
_if3066:
  %_b3068 = load i64, i64* %_b3053
  ret i64 %_b3068
_else3065:
  br label %_after3064
_pre3073:
  br label %_pre3073
_post3072:
  br label %_pre3073
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val3035 = alloca i64
  %_argc3030 = alloca i64
  %_argv3032 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3032
  store i64 %argc, i64* %_argc3030
  store i64 1, i64* %_val3035
  %_id3037 = call i64 @fibR(i64 12)
  %_bop3038 = icmp eq i64 %_id3037, 144
  %_id3039 = call i64 @fibI(i64 12)
  %_bop3040 = icmp eq i64 %_id3039, 144
  %_bop3041 = and i1 %_bop3038, %_bop3040
  br i1 %_bop3041, label %_if3044, label %_else3043
_if3044:
  store i64 0, i64* %_val3035
  br label %_after3042
_else3043:
  br label %_after3042
_after3042:
  %_val3047 = load i64, i64* %_val3035
  ret i64 %_val3047
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
