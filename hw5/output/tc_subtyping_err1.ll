; generated from: /home/gponti/cdesign/hw5/hw5programs/tc_subtyping_err1.oat
target triple = "x86_64-unknown-linux"
define void @f({ i64, [0 x i64] }* %_x3, { i64, [0 x i64] }* %_y1) {
  %_x4 = alloca { i64, [0 x i64] }*
  %_y2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x3, { i64, [0 x i64] }** %_x4
  store { i64, [0 x i64] }* %_y1, { i64, [0 x i64] }** %_y2
  %_y5 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y2
  store { i64, [0 x i64] }* %_y5, { i64, [0 x i64] }** %_x4
  ret void
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
