; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x14 = alloca i64
  %_i16 = alloca i64
  %_argc11 = alloca i64
  store i64 %argc, i64* %_argc11
  %_argv13 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv13
  store i64 0, i64* %_x14
  store i64 0, i64* %_i16
  br label %_pre21
_pre21:
  %_i18 = load i64, i64* %_i16
  %_bop19 = icmp slt i64 %_i18, 10
  %_cnd23 = icmp eq i1 %_bop19, 0
  br i1 %_cnd23, label %_post20, label %_body22
_body22:
  %_x24 = load i64, i64* %_x14
  %_i25 = load i64, i64* %_i16
  %_bop26 = add i64 %_x24, %_i25
  %_i27 = load i64, i64* %_i16
  %_bop28 = mul i64 %_bop26, %_i27
  store i64 %_bop28, i64* %_x14
  %_i30 = load i64, i64* %_i16
  %_bop31 = add i64 %_i30, 1
  store i64 %_bop31, i64* %_i16
  br label %_pre21
_post20:
  %_x33 = load i64, i64* %_x14
  ret i64 %_x33
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
