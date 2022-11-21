; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_s2838 = global [6 x i8] c"hello\00"
@_s2839 = global i8* bitcast ([6 x i8]* @_s2838 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2841 = alloca i8*
  %_arr2845 = alloca { i64, [0 x i64] }*
  %_s2847 = alloca i64
  %_i2849 = alloca i64
  %_argc2835 = alloca i64
  store i64 %argc, i64* %_argc2835
  %_argv2837 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2837
  %_tmp2840 = load i8*, i8** @_s2839
  store i8* %_tmp2840, i8** %_str2841
  %_str2843 = load i8*, i8** %_str2841
  %_2844 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2843)
  store { i64, [0 x i64] }* %_2844, { i64, [0 x i64] }** %_arr2845
  store i64 0, i64* %_s2847
  store i64 0, i64* %_i2849
  br label %_pre2854
_pre2854:
  %_i2851 = load i64, i64* %_i2849
  %_bop2852 = icmp slt i64 %_i2851, 5
  %_cnd2856 = icmp eq i1 %_bop2852, 0
  br i1 %_cnd2856, label %_post2853, label %_body2855
_body2855:
  %_s2857 = load i64, i64* %_s2847
  %_arr2860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2845
  %_i2861 = load i64, i64* %_i2849
  %_ptr2858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2860, i32 0, i32 1, i64 %_i2861
  %_resPtr2859 = load i64, i64* %_ptr2858
  %_bop2862 = add i64 %_s2857, %_resPtr2859
  store i64 %_bop2862, i64* %_s2847
  %_i2864 = load i64, i64* %_i2849
  %_bop2865 = add i64 %_i2864, 1
  store i64 %_bop2865, i64* %_i2849
  br label %_pre2854
_post2853:
  %_s2867 = load i64, i64* %_s2847
  ret i64 %_s2867
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
