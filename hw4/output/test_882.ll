; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r3303 = alloca i64
  %_i3301 = alloca i64
  store i64 %i, i64* %_i3301
  store i64 0, i64* %_r3303
  %_i3305 = load i64, i64* %_i3302
  %_bop3306 = icmp eq i64 %_i3305, 0
  br i1 %_bop3306, label %_if3309, label %_else3308
_if3309:
  store i64 1, i64* %_r3303
  br label %_after3307
_else3308:
  %_i3311 = load i64, i64* %_i3302
  %_i3312 = load i64, i64* %_i3302
  %_bop3313 = sub i64 %_i3312, 1
  %_id3314 = call i64 @f(i64 %_bop3313)
  %_bop3315 = mul i64 %_i3311, %_id3314
  store i64 %_bop3315, i64* %_r3303
  br label %_after3307
_after3307:
  %_r3318 = load i64, i64* %_r3303
  ret i64 %_r3318
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3294 = alloca i64
  %_argv3296 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3296
  store i64 %argc, i64* %_argc3294
  %_id3299 = call i64 @f(i64 5)
  ret i64 %_id3299
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
