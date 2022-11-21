; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2781 = load i64, i64* @a
  %_bop2782 = add i64 %_a2781, 1
  store i64 %_bop2782, i64* @a
  %_a2784 = load i64, i64* @a
  ret i64 %_a2784
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2762 = alloca { i64, [0 x i64] }*
  %_argc2756 = alloca i64
  store i64 %argc, i64* %_argc2756
  %_argv2758 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2758
  %_2759 = call i64 @f()
  %_raw_array2760 = call i64* @oat_alloc_array(i64 %_2759)
  %_array2761 = bitcast i64* %_raw_array2760 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2761, { i64, [0 x i64] }** %_b2762
  %_2764 = call i64 @f()
  %_b2765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2762
  %_ptr2766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2765, i32 0, i32 1, i32 0
  store i64 %_2764, i64* %_ptr2766
  %_2768 = call i64 @f()
  %_b2769 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2762
  %_ptr2770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2769, i32 0, i32 1, i32 1
  store i64 %_2768, i64* %_ptr2770
  %_a2772 = load i64, i64* @a
  %_b2775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2762
  %_ptr2773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2775, i32 0, i32 1, i32 0
  %_resPtr2774 = load i64, i64* %_ptr2773
  %_bop2776 = add i64 %_a2772, %_resPtr2774
  %_b2779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2762
  %_ptr2777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2779, i32 0, i32 1, i32 1
  %_resPtr2778 = load i64, i64* %_ptr2777
  %_bop2780 = add i64 %_bop2776, %_resPtr2778
  ret i64 %_bop2780
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
