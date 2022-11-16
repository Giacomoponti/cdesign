; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_uop53 = icmp eq i1 1, 0
  %_uop54 = mul i64 4, -1
  %_bop55 = add i64 %_uop54, 5
  %_bop56 = icmp sgt i64 %_bop55, 0
  %_bop57 = mul i64 6, 4
  %_bop58 = icmp slt i64 %_bop57, 25
  %_bop59 = and i1 %_bop56, %_bop58
  %_bop60 = or i1 %_uop53, %_bop59
  br i1 %_bop60, label %_if63, label %_else62
_if63:
  ret i64 9
_else62:
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
