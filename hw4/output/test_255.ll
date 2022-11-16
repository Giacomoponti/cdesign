; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i300 = alloca i64
  store i64 12, i64* %_i300
  %_i302 = load i64, i64* %_i300
  ret i64 %_i302
}

define i64 @g() {
  %_i297 = alloca i64
  store i64 10, i64* %_i297
  %_i299 = load i64, i64* %_i297
  ret i64 %_i299
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id292 = call i64 @f()
  %_id293 = call i64 @g()
  %_bop294 = add i64 %_id292, %_id293
  %_i295 = load i64, i64* @i
  %_bop296 = add i64 %_bop294, %_i295
  ret i64 %_bop296
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
