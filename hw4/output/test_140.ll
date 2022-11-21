; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b583 = alloca { i64, [0 x i1] }*
  %_i585 = alloca i64
  %_argc574 = alloca i64
  store i64 %argc, i64* %_argc574
  %_argv576 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv576
  %_raw_array577 = call i64* @oat_alloc_array(i64 2)
  %_array578 = bitcast i64* %_raw_array577 to { i64, [0 x i1] }*
  %_gep579 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array578, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep579
  %_gep581 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array578, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep581
  store { i64, [0 x i1] }* %_array578, { i64, [0 x i1] }** %_b583
  store i64 0, i64* %_i585
  %_b589 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b583
  %_ptr587 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b589, i32 0, i32 1, i32 0
  %_resPtr588 = load i1, i1* %_ptr587
  br i1 %_resPtr588, label %_if592, label %_else591
_if592:
  store i64 1, i64* %_i585
  br label %_after590
_else591:
  br label %_after590
_after590:
  %_i595 = load i64, i64* %_i585
  ret i64 %_i595
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
