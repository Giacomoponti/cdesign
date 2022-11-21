; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr12884 = alloca { i64, [0 x i64] }*
  %_str2888 = alloca i8*
  %_arr22892 = alloca { i64, [0 x i64] }*
  %_s2894 = alloca i64
  %_i2896 = alloca i64
  %_argc2869 = alloca i64
  store i64 %argc, i64* %_argc2869
  %_argv2871 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2871
  %_raw_array2872 = call i64* @oat_alloc_array(i64 5)
  %_array2873 = bitcast i64* %_raw_array2872 to { i64, [0 x i64] }*
  %_gep2874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2873, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep2874
  %_gep2876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2873, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep2876
  %_gep2878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2873, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep2878
  %_gep2880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2873, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep2880
  %_gep2882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2873, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep2882
  store { i64, [0 x i64] }* %_array2873, { i64, [0 x i64] }** %_arr12884
  %_arr12886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12884
  %_2887 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12886)
  store i8* %_2887, i8** %_str2888
  %_str2890 = load i8*, i8** %_str2888
  %_2891 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2890)
  store { i64, [0 x i64] }* %_2891, { i64, [0 x i64] }** %_arr22892
  store i64 0, i64* %_s2894
  store i64 0, i64* %_i2896
  br label %_pre2901
_pre2901:
  %_i2898 = load i64, i64* %_i2896
  %_bop2899 = icmp slt i64 %_i2898, 5
  %_cnd2903 = icmp eq i1 %_bop2899, 0
  br i1 %_cnd2903, label %_post2900, label %_body2902
_body2902:
  %_s2904 = load i64, i64* %_s2894
  %_arr22907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22892
  %_i2908 = load i64, i64* %_i2896
  %_ptr2905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22907, i32 0, i32 1, i64 %_i2908
  %_resPtr2906 = load i64, i64* %_ptr2905
  %_bop2909 = add i64 %_s2904, %_resPtr2906
  store i64 %_bop2909, i64* %_s2894
  %_i2911 = load i64, i64* %_i2896
  %_bop2912 = add i64 %_i2911, 1
  store i64 %_bop2912, i64* %_i2896
  br label %_pre2901
_post2900:
  %_s2914 = load i64, i64* %_s2894
  call void @print_int(i64 %_s2914)
  %_s2916 = load i64, i64* %_s2894
  ret i64 %_s2916
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
