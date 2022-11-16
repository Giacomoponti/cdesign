; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b646 = alloca { i64, [0 x i1] }*
  %_i648 = alloca i64
  %_argc635 = alloca i64
  %_argv637 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv637
  store i64 %argc, i64* %_argc635
  %_raw_array640 = call i64* @oat_alloc_array(i64 2)
  %_array641 = bitcast i64* %_raw_array640 to { i64, [0 x i1] }*
  %_gep642 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array641, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep642
  %_gep644 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array641, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep644
  store { i64, [0 x i1] }* %_array641, { i64, [0 x i1] }** %_b646
  store i64 0, i64* %_i648
  %_b652 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b646
  %_ptr650 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b652, i32 0, i32 1, i32 0
  %_resPtr651 = load i1, i1* %_ptr650
  br i1 %_resPtr651, label %_if655, label %_else654
_if655:
  store i64 1, i64* %_i648
  br label %_after653
_else654:
  br label %_after653
_after653:
  %_i658 = load i64, i64* %_i648
  ret i64 %_i658
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
