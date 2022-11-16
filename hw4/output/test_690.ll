; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r3244 = alloca i64
  %_i3242 = alloca i64
  store i64 %i, i64* %_i3242
  store i64 0, i64* %_r3244
  %_i3246 = load i64, i64* %_i3243
  %_bop3247 = icmp eq i64 %_i3246, 0
  br i1 %_bop3247, label %_if3250, label %_else3249
_if3250:
  store i64 1, i64* %_r3244
  br label %_after3248
_else3249:
  %_i3252 = load i64, i64* %_i3243
  %_i3253 = load i64, i64* %_i3243
  %_bop3254 = sub i64 %_i3253, 1
  %_id3255 = call i64 @f(i64 %_bop3254)
  %_bop3256 = mul i64 %_i3252, %_id3255
  store i64 %_bop3256, i64* %_r3244
  br label %_after3248
_after3248:
  %_r3259 = load i64, i64* %_r3244
  ret i64 %_r3259
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3235 = alloca i64
  %_argv3237 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3237
  store i64 %argc, i64* %_argc3235
  %_id3240 = call i64 @f(i64 5)
  ret i64 %_id3240
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
