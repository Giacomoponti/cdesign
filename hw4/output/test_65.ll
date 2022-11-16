; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i292 = alloca i64
  store i64 12, i64* %_i292
  %_i294 = load i64, i64* %_i292
  ret i64 %_i294
}

define i64 @g() {
  %_i289 = alloca i64
  store i64 10, i64* %_i289
  %_i291 = load i64, i64* %_i289
  ret i64 %_i291
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id284 = call i64 @f()
  %_id285 = call i64 @g()
  %_bop286 = add i64 %_id284, %_id285
  %_i287 = load i64, i64* @i
  %_bop288 = add i64 %_bop286, %_i287
  ret i64 %_bop288
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
