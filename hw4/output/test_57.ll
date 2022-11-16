; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x172 = alloca i64
  %_y174 = alloca i64
  store i64 17, i64* %_x172
  store i64 18, i64* %_y174
  %_x176 = load i64, i64* %_x172
  %_y177 = load i64, i64* %_y174
  %_bop178 = add i64 %_x176, %_y177
  ret i64 %_bop178
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
