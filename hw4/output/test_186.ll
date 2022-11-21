; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr12933 = alloca { i64, [0 x i64] }*
  %_str2937 = alloca i8*
  %_arr22941 = alloca { i64, [0 x i64] }*
  %_s2943 = alloca i64
  %_i2945 = alloca i64
  %_argc2918 = alloca i64
  store i64 %argc, i64* %_argc2918
  %_argv2920 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2920
  %_raw_array2921 = call i64* @oat_alloc_array(i64 5)
  %_array2922 = bitcast i64* %_raw_array2921 to { i64, [0 x i64] }*
  %_gep2923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2922, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep2923
  %_gep2925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2922, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep2925
  %_gep2927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2922, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep2927
  %_gep2929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2922, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep2929
  %_gep2931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2922, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep2931
  store { i64, [0 x i64] }* %_array2922, { i64, [0 x i64] }** %_arr12933
  %_arr12935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12933
  %_2936 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12935)
  store i8* %_2936, i8** %_str2937
  %_str2939 = load i8*, i8** %_str2937
  %_2940 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2939)
  store { i64, [0 x i64] }* %_2940, { i64, [0 x i64] }** %_arr22941
  store i64 0, i64* %_s2943
  store i64 0, i64* %_i2945
  br label %_pre2950
_pre2950:
  %_i2947 = load i64, i64* %_i2945
  %_bop2948 = icmp slt i64 %_i2947, 5
  %_cnd2952 = icmp eq i1 %_bop2948, 0
  br i1 %_cnd2952, label %_post2949, label %_body2951
_body2951:
  %_s2953 = load i64, i64* %_s2943
  %_arr22956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22941
  %_i2957 = load i64, i64* %_i2945
  %_ptr2954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22956, i32 0, i32 1, i64 %_i2957
  %_resPtr2955 = load i64, i64* %_ptr2954
  %_bop2958 = add i64 %_s2953, %_resPtr2955
  store i64 %_bop2958, i64* %_s2943
  %_i2960 = load i64, i64* %_i2945
  %_bop2961 = add i64 %_i2960, 1
  store i64 %_bop2961, i64* %_i2945
  br label %_pre2950
_post2949:
  %_s2963 = load i64, i64* %_s2943
  ret i64 %_s2963
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
