; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b665 = alloca { i64, [0 x i1] }*
  %_i667 = alloca i64
  store i64 %argc, i64* %_argc654
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv656
  %_argv656 = alloca { i64, [0 x i8*] }*
  %_argc654 = alloca i64
  %_raw_array659 = call i64* @oat_alloc_array(i64 2)
  %_array660 = bitcast i64* %_raw_array659 to { i64, [0 x i1] }*
  %_gep661 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array660, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep661
  %_gep663 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array660, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep663
  store { i64, [0 x i1] }* %_array660, { i64, [0 x i1] }** %_b665
  store i64 0, i64* %_i667
  %_b671 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b665
  %_ptr669 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b671, i32 0, i32 1, i32 0
  %_resPtr670 = load i1, i1* %_ptr669
  br i1 %_resPtr670, label %_if674, label %_else673
_if674:
  store i64 1, i64* %_i667
  br label %_after672
_else673:
  br label %_after672
_after672:
  %_i677 = load i64, i64* %_i667
  ret i64 %_i677
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
