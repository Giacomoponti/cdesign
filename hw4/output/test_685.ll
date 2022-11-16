; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2847 = load i64, i64* @a
  %_bop2848 = add i64 %_a2847, 1
  store i64 %_bop2848, i64* @a
  %_a2850 = load i64, i64* @a
  ret i64 %_a2850
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2830 = alloca { i64, [0 x i64] }*
  %_argc2822 = alloca i64
  %_argv2824 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2824
  store i64 %argc, i64* %_argc2822
  %_id2827 = call i64 @f()
  %_raw_array2828 = call i64* @oat_alloc_array(i64 %_id2827)
  %_array2829 = bitcast i64* %_raw_array2828 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2829, { i64, [0 x i64] }** %_b2830
  %_b2832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2830
  %_ptr2833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2832, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr2833
  %_b2835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2830
  %_ptr2836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2835, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr2836
  %_a2838 = load i64, i64* @a
  %_b2841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2830
  %_ptr2839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2841, i32 0, i32 1, i32 0
  %_resPtr2840 = load i64, i64* %_ptr2839
  %_bop2842 = add i64 %_a2838, %_resPtr2840
  %_b2845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2830
  %_ptr2843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2845, i32 0, i32 1, i32 1
  %_resPtr2844 = load i64, i64* %_ptr2843
  %_bop2846 = add i64 %_bop2842, %_resPtr2844
  ret i64 %_bop2846
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
