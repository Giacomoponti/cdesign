; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r3348 = alloca i64
  %_i3346 = alloca i64
  store i64 %i, i64* %_i3346
  store i64 0, i64* %_r3348
  %_i3350 = load i64, i64* %_i3347
  %_bop3351 = icmp eq i64 %_i3350, 0
  br i1 %_bop3351, label %_if3354, label %_else3353
_if3354:
  store i64 1, i64* %_r3348
  br label %_after3352
_else3353:
  %_i3356 = load i64, i64* %_i3347
  %_i3357 = load i64, i64* %_i3347
  %_bop3358 = sub i64 %_i3357, 1
  %_id3359 = call i64 @f(i64 %_bop3358)
  %_bop3360 = mul i64 %_i3356, %_id3359
  store i64 %_bop3360, i64* %_r3348
  br label %_after3352
_after3352:
  %_r3363 = load i64, i64* %_r3348
  ret i64 %_r3363
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3339 = alloca i64
  %_argv3341 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3341
  store i64 %argc, i64* %_argc3339
  %_id3344 = call i64 @f(i64 5)
  ret i64 %_id3344
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
