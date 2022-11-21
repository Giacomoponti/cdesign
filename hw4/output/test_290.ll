; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_str2833 to i8*)
@_str2833 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr2808 = alloca { i64, [0 x i64] }*
  %_s2810 = alloca i64
  %_i2812 = alloca i64
  %_argc2803 = alloca i64
  store i64 %argc, i64* %_argc2803
  %_argv2805 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2805
  %_str2806 = load i8*, i8** @str
  %_2807 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2806)
  store { i64, [0 x i64] }* %_2807, { i64, [0 x i64] }** %_arr2808
  store i64 0, i64* %_s2810
  store i64 0, i64* %_i2812
  br label %_pre2817
_pre2817:
  %_i2814 = load i64, i64* %_i2812
  %_bop2815 = icmp slt i64 %_i2814, 5
  %_cnd2819 = icmp eq i1 %_bop2815, 0
  br i1 %_cnd2819, label %_post2816, label %_body2818
_body2818:
  %_s2820 = load i64, i64* %_s2810
  %_arr2823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2808
  %_i2824 = load i64, i64* %_i2812
  %_ptr2821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2823, i32 0, i32 1, i64 %_i2824
  %_resPtr2822 = load i64, i64* %_ptr2821
  %_bop2825 = add i64 %_s2820, %_resPtr2822
  store i64 %_bop2825, i64* %_s2810
  %_i2827 = load i64, i64* %_i2812
  %_bop2828 = add i64 %_i2827, 1
  store i64 %_bop2828, i64* %_i2812
  br label %_pre2817
_post2816:
  %_s2830 = load i64, i64* %_s2810
  call void @print_int(i64 %_s2830)
  %_s2832 = load i64, i64* %_s2810
  ret i64 %_s2832
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
