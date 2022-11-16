; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b568 = alloca { i64, [0 x i1] }*
  %_i570 = alloca i64
  store i64 %argc, i64* %_argc557
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv559
  %_argv559 = alloca { i64, [0 x i8*] }*
  %_argc557 = alloca i64
  %_raw_array562 = call i64* @oat_alloc_array(i64 2)
  %_array563 = bitcast i64* %_raw_array562 to { i64, [0 x i1] }*
  %_gep564 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array563, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep564
  %_gep566 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array563, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep566
  store { i64, [0 x i1] }* %_array563, { i64, [0 x i1] }** %_b568
  store i64 0, i64* %_i570
  %_b574 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b568
  %_ptr572 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b574, i32 0, i32 1, i32 0
  %_resPtr573 = load i1, i1* %_ptr572
  br i1 %_resPtr573, label %_if577, label %_else576
_if577:
  store i64 1, i64* %_i570
  br label %_after575
_else576:
  br label %_after575
_after575:
  %_i580 = load i64, i64* %_i570
  ret i64 %_i580
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
