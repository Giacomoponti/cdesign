; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_arr6029 to { i64, [0 x i64] }*)
@_arr6029 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars5948 = alloca { i64, [0 x i64] }*
  %_b_chars5952 = alloca { i64, [0 x i64] }*
  %_last_char_a5958 = alloca i64
  %_last_char_b5964 = alloca i64
  %_prev_lcs5980 = alloca i8*
  %_next_char5991 = alloca i8*
  %_left_lcs6002 = alloca i8*
  %_right_lcs6010 = alloca i8*
  %_left_len6014 = alloca i64
  %_right_len6018 = alloca i64
  %_i5926 = alloca i64
  %_j5928 = alloca i64
  %_a5930 = alloca i8*
  %_b5932 = alloca i8*
  store i8* %b, i8** %_b5932
  store i8* %a, i8** %_a5930
  store i64 %j, i64* %_j5928
  store i64 %i, i64* %_i5926
  %_i5937 = load i64, i64* %_i5933
  %_bop5938 = icmp slt i64 %_i5937, 0
  %_j5939 = load i64, i64* %_j5934
  %_bop5940 = icmp slt i64 %_j5939, 0
  %_bop5941 = or i1 %_bop5938, %_bop5940
  br i1 %_bop5941, label %_if5944, label %_else5943
_if5944:
  ret void null
_else5943:
  br label %_after5942
_after5942:
  %_a5946 = load i8*, i8** %_a5935
  %_id5947 = call { i64, [0 x i64] }* @array_of_string(i8* %_a5946)
  store { i64, [0 x i64] }* %_id5947, { i64, [0 x i64] }** %_a_chars5948
  %_b5950 = load i8*, i8** %_b5936
  %_id5951 = call { i64, [0 x i64] }* @array_of_string(i8* %_b5950)
  store { i64, [0 x i64] }* %_id5951, { i64, [0 x i64] }** %_b_chars5952
  %_a_chars5956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5948
  %_i5957 = load i64, i64* %_i5933
  %_ptr5954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5956, i32 0, i32 1, i64 %_i5957
  %_resPtr5955 = load i64, i64* %_ptr5954
  store i64 %_resPtr5955, i64* %_last_char_a5958
  %_b_chars5962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars5952
  %_j5963 = load i64, i64* %_j5934
  %_ptr5960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars5962, i32 0, i32 1, i64 %_j5963
  %_resPtr5961 = load i64, i64* %_ptr5960
  store i64 %_resPtr5961, i64* %_last_char_b5964
  %_last_char_a5966 = load i64, i64* %_last_char_a5958
  %_last_char_b5967 = load i64, i64* %_last_char_b5964
  %_bop5968 = icmp eq i64 %_last_char_a5966, %_last_char_b5967
  br i1 %_bop5968, label %_if5971, label %_else5970
_if5971:
  %_i5973 = load i64, i64* %_i5933
  %_bop5974 = sub i64 %_i5973, 1
  %_j5975 = load i64, i64* %_j5934
  %_bop5976 = sub i64 %_j5975, 1
  %_a5977 = load i8*, i8** %_a5935
  %_b5978 = load i8*, i8** %_b5936
  %_id5979 = call i8* @lcs(i64 %_bop5974, i64 %_bop5976, i8* %_a5977, i8* %_b5978)
  store i8* %_id5979, i8** %_prev_lcs5980
  %_a_chars5984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5948
  %_i5985 = load i64, i64* %_i5933
  %_ptr5982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5984, i32 0, i32 1, i64 %_i5985
  %_resPtr5983 = load i64, i64* %_ptr5982
  %_buf5986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_ptr5987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf5986, i32 0, i32 1, i32 0
  store i64 %_resPtr5983, i64* %_ptr5987
  %_buf5989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_id5990 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf5989)
  store i8* %_id5990, i8** %_next_char5991
  %_prev_lcs5993 = load i8*, i8** %_prev_lcs5980
  %_next_char5994 = load i8*, i8** %_next_char5991
  %_id5995 = call i8* @string_cat(i8* %_prev_lcs5993, i8* %_next_char5994)
  ret i8* %_id5995
_else5970:
  br label %_after5969
_after5969:
  %_i5996 = load i64, i64* %_i5933
  %_j5997 = load i64, i64* %_j5934
  %_bop5998 = sub i64 %_j5997, 1
  %_a5999 = load i8*, i8** %_a5935
  %_b6000 = load i8*, i8** %_b5936
  %_id6001 = call i8* @lcs(i64 %_i5996, i64 %_bop5998, i8* %_a5999, i8* %_b6000)
  store i8* %_id6001, i8** %_left_lcs6002
  %_i6004 = load i64, i64* %_i5933
  %_bop6005 = sub i64 %_i6004, 1
  %_j6006 = load i64, i64* %_j5934
  %_a6007 = load i8*, i8** %_a5935
  %_b6008 = load i8*, i8** %_b5936
  %_id6009 = call i8* @lcs(i64 %_bop6005, i64 %_j6006, i8* %_a6007, i8* %_b6008)
  store i8* %_id6009, i8** %_right_lcs6010
  %_left_lcs6012 = load i8*, i8** %_left_lcs6002
  %_id6013 = call i64 @length_of_string(i8* %_left_lcs6012)
  store i64 %_id6013, i64* %_left_len6014
  %_right_lcs6016 = load i8*, i8** %_right_lcs6010
  %_id6017 = call i64 @length_of_string(i8* %_right_lcs6016)
  store i64 %_id6017, i64* %_right_len6018
  %_left_len6020 = load i64, i64* %_left_len6014
  %_right_len6021 = load i64, i64* %_right_len6018
  %_bop6022 = icmp slt i64 %_left_len6020, %_right_len6021
  br i1 %_bop6022, label %_if6025, label %_else6024
_if6025:
  %_right_lcs6028 = load i8*, i8** %_right_lcs6010
  ret i8* %_right_lcs6028
_else6024:
  %_left_lcs6027 = load i8*, i8** %_left_lcs6002
  ret i8* %_left_lcs6027
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato5917 = alloca void
  %_orating5919 = alloca void
  %_argc5912 = alloca i64
  %_argv5914 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5914
  store i64 %argc, i64* %_argc5912
  store void null, void* %_tomato5917
  store void null, void* %_orating5919
  %_tomato5921 = load void, void* %_tomato5917
  %_orating5922 = load void, void* %_orating5919
  %_id5923 = call i8* @lcs(i64 5, i64 6, void %_tomato5921, void %_orating5922)
  call void @print_string(i8* %_id5923)
  ret i64 0
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
