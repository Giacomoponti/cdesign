; generated from: oatprograms/globals3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  store i64 %argc, i64* %_argc270
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args272
  %_args272 = alloca { i64, [0 x i8*] }*
  %_argc270 = alloca i64
  ret i64 17
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
