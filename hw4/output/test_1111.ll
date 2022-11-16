; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc91 = alloca i64
  %_argv93 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv93
  store i64 %argc, i64* %_argc91
  %_uop96 = icmp eq i1 1, 0
  %_uop97 = mul i64 4, -1
  %_bop98 = add i64 %_uop97, 5
  %_bop99 = icmp sgt i64 %_bop98, 0
  %_bop100 = mul i64 6, 4
  %_bop101 = icmp slt i64 %_bop100, 25
  %_bop102 = and i1 %_bop99, %_bop101
  %_bop103 = or i1 %_uop96, %_bop102
  br i1 %_bop103, label %_if106, label %_else105
_if106:
  ret i64 9
_else105:
  ret i64 4
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
