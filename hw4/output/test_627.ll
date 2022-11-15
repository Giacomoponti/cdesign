; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i238 = alloca i64
  store i64 12, i64* %_i238
  %_i240 = load i64, i64* %_i238
  ret i64 %_i240
}

define i64 @g() {
  %_i235 = alloca i64
  store i64 10, i64* %_i235
  %_i237 = load i64, i64* %_i235
  ret i64 %_i237
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id230 = call i64 @f()
  %_id231 = call i64 @g()
  %_bop232 = add i64 %_id230, %_id231
  %_i233 = load i64, i64* @i
  %_bop234 = add i64 %_bop232, %_i233
  ret i64 %_bop234
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
