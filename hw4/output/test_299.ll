; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r3130 = alloca i64
  %_i3129 = alloca i64
  store i64 %i, i64* %_i3129
  store i64 0, i64* %_r3130
  %_i3132 = load i64, i64* %_i3129
  %_bop3133 = icmp eq i64 %_i3132, 0
  br i1 %_bop3133, label %_if3136, label %_else3135
_if3136:
  store i64 1, i64* %_r3130
  br label %_after3134
_else3135:
  %_i3138 = load i64, i64* %_i3129
  %_i3139 = load i64, i64* %_i3129
  %_bop3140 = sub i64 %_i3139, 1
  %_3141 = call i64 @f(i64 %_bop3140)
  %_bop3142 = mul i64 %_i3138, %_3141
  store i64 %_bop3142, i64* %_r3130
  br label %_after3134
_after3134:
  %_r3145 = load i64, i64* %_r3130
  ret i64 %_r3145
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3124 = alloca i64
  store i64 %argc, i64* %_argc3124
  %_argv3126 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3126
  %_3127 = call i64 @f(i64 5)
  ret i64 %_3127
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
