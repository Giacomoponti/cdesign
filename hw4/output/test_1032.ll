; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i610 = alloca i64
  %_argc605 = alloca i64
  %_argv607 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv607
  store i64 %argc, i64* %_argc605
  store i64 0, i64* %_i610
  %_b612 = load i1, i1* @b
  br i1 %_b612, label %_if615, label %_else614
_if615:
  store i64 1, i64* %_i610
  br label %_after613
_else614:
  br label %_after613
_after613:
  %_i618 = load i64, i64* %_i610
  ret i64 %_i618
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
