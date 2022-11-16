; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b570 = alloca { i64, [0 x i1] }*
  %_i572 = alloca i64
  %_argc559 = alloca i64
  %_argv561 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv561
  store i64 %argc, i64* %_argc559
  %_raw_array564 = call i64* @oat_alloc_array(i64 2)
  %_array565 = bitcast i64* %_raw_array564 to { i64, [0 x i1] }*
  %_gep566 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array565, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep566
  %_gep568 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array565, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep568
  store { i64, [0 x i1] }* %_array565, { i64, [0 x i1] }** %_b570
  store i64 0, i64* %_i572
  %_b576 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b570
  %_ptr574 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b576, i32 0, i32 1, i32 0
  %_resPtr575 = load i1, i1* %_ptr574
  br i1 %_resPtr575, label %_if579, label %_else578
_if579:
  store i64 1, i64* %_i572
  br label %_after577
_else578:
  br label %_after577
_after577:
  %_i582 = load i64, i64* %_i572
  ret i64 %_i582
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
