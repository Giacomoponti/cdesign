; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2751 = load i64, i64* @a
  %_bop2752 = add i64 %_a2751, 1
  store i64 %_bop2752, i64* @a
  %_a2754 = load i64, i64* @a
  ret i64 %_a2754
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2734 = alloca { i64, [0 x i64] }*
  %_argc2728 = alloca i64
  store i64 %argc, i64* %_argc2728
  %_argv2730 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2730
  %_2731 = call i64 @f()
  %_raw_array2732 = call i64* @oat_alloc_array(i64 %_2731)
  %_array2733 = bitcast i64* %_raw_array2732 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2733, { i64, [0 x i64] }** %_b2734
  %_b2736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2734
  %_ptr2737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2736, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr2737
  %_b2739 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2734
  %_ptr2740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2739, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr2740
  %_a2742 = load i64, i64* @a
  %_b2745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2734
  %_ptr2743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2745, i32 0, i32 1, i32 0
  %_resPtr2744 = load i64, i64* %_ptr2743
  %_bop2746 = add i64 %_a2742, %_resPtr2744
  %_b2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2734
  %_ptr2747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2749, i32 0, i32 1, i32 1
  %_resPtr2748 = load i64, i64* %_ptr2747
  %_bop2750 = add i64 %_bop2746, %_resPtr2748
  ret i64 %_bop2750
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
