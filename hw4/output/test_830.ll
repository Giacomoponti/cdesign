; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b662 = alloca { i64, [0 x i1] }*
  %_i664 = alloca i64
  %_argc651 = alloca i64
  %_argv653 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv653
  store i64 %argc, i64* %_argc651
  %_raw_array656 = call i64* @oat_alloc_array(i64 2)
  %_array657 = bitcast i64* %_raw_array656 to { i64, [0 x i1] }*
  %_gep658 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array657, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep658
  %_gep660 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array657, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep660
  store { i64, [0 x i1] }* %_array657, { i64, [0 x i1] }** %_b662
  store i64 0, i64* %_i664
  %_b668 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b662
  %_ptr666 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b668, i32 0, i32 1, i32 0
  %_resPtr667 = load i1, i1* %_ptr666
  br i1 %_resPtr667, label %_if671, label %_else670
_if671:
  store i64 1, i64* %_i664
  br label %_after669
_else670:
  br label %_after669
_after669:
  %_i674 = load i64, i64* %_i664
  ret i64 %_i674
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
