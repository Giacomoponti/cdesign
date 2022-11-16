; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r2430 = alloca i64
  %_i2428 = alloca i64
  store i64 %i, i64* %_i2428
  store i64 0, i64* %_r2430
  %_i2432 = load i64, i64* %_i2429
  %_bop2433 = icmp eq i64 %_i2432, 0
  br i1 %_bop2433, label %_if2436, label %_else2435
_if2436:
  store i64 1, i64* %_r2430
  br label %_after2434
_else2435:
  %_i2438 = load i64, i64* %_i2429
  %_i2439 = load i64, i64* %_i2429
  %_bop2440 = sub i64 %_i2439, 1
  %_id2441 = call i64 @f(i64 %_bop2440)
  %_bop2442 = mul i64 %_i2438, %_id2441
  store i64 %_bop2442, i64* %_r2430
  br label %_after2434
_after2434:
  %_r2445 = load i64, i64* %_r2430
  ret i64 %_r2445
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2421 = alloca i64
  %_argv2423 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2423
  store i64 %argc, i64* %_argc2421
  %_id2426 = call i64 @f(i64 5)
  ret i64 %_id2426
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
