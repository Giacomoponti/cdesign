; generated from: oatprograms/run31.oat
target triple = "x86_64-unknown-linux"
@i = global i64 9

define i64 @program(i64 %_argc8321, { i64, [0 x i8*] }* %_argv8318) {
  %_j8325 = alloca i64
  %_i8324 = load i64, i64* @i
  store i64 %_i8324, i64* %_j8325
  %_j8327 = load i64, i64* %_j8325
  ret i64 %_j8327
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
