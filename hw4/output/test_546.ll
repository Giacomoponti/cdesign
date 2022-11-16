; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r2936 = alloca i64
  %_i2934 = alloca i64
  store i64 %i, i64* %_i2934
  store i64 0, i64* %_r2936
  %_i2938 = load i64, i64* %_i2935
  %_bop2939 = icmp eq i64 %_i2938, 0
  br i1 %_bop2939, label %_if2942, label %_else2941
_if2942:
  store i64 1, i64* %_r2936
  br label %_after2940
_else2941:
  %_i2944 = load i64, i64* %_i2935
  %_i2945 = load i64, i64* %_i2935
  %_bop2946 = sub i64 %_i2945, 1
  %_id2947 = call i64 @f(i64 %_bop2946)
  %_bop2948 = mul i64 %_i2944, %_id2947
  store i64 %_bop2948, i64* %_r2936
  br label %_after2940
_after2940:
  %_r2951 = load i64, i64* %_r2936
  ret i64 %_r2951
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2927 = alloca i64
  %_argv2929 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2929
  store i64 %argc, i64* %_argc2927
  %_id2932 = call i64 @f(i64 5)
  ret i64 %_id2932
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
