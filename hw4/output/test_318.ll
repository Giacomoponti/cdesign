; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_arr6056 to { i64, [0 x i64] }*)
@_arr6056 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_s5970 = global [1 x i8] c"\00"
@_s5971 = global i8* bitcast ([1 x i8]* @_s5970 to i8*)
@_s5939 = global [7 x i8] c"TOMATO\00"
@_s5940 = global i8* bitcast ([7 x i8]* @_s5939 to i8*)
@_s5944 = global [8 x i8] c"ORATING\00"
@_s5945 = global i8* bitcast ([8 x i8]* @_s5944 to i8*)

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars5975 = alloca { i64, [0 x i64] }*
  %_b_chars5979 = alloca { i64, [0 x i64] }*
  %_last_char_a5985 = alloca i64
  %_last_char_b5991 = alloca i64
  %_prev_lcs6007 = alloca i8*
  %_next_char6018 = alloca i8*
  %_left_lcs6029 = alloca i8*
  %_right_lcs6037 = alloca i8*
  %_left_len6041 = alloca i64
  %_right_len6045 = alloca i64
  %_i5954 = alloca i64
  store i64 %i, i64* %_i5954
  %_j5956 = alloca i64
  store i64 %j, i64* %_j5956
  %_a5958 = alloca i8*
  store i8* %a, i8** %_a5958
  %_b5960 = alloca i8*
  store i8* %b, i8** %_b5960
  %_i5961 = load i64, i64* %_i5954
  %_bop5962 = icmp slt i64 %_i5961, 0
  %_j5963 = load i64, i64* %_j5956
  %_bop5964 = icmp slt i64 %_j5963, 0
  %_bop5965 = or i1 %_bop5962, %_bop5964
  br i1 %_bop5965, label %_if5968, label %_else5967
_if5968:
  %_tmp5972 = load i8*, i8** @_s5971
  ret i8* %_tmp5972
_else5967:
  br label %_after5966
_after5966:
  %_a5973 = load i8*, i8** %_a5958
  %_5974 = call { i64, [0 x i64] }* @array_of_string(i8* %_a5973)
  store { i64, [0 x i64] }* %_5974, { i64, [0 x i64] }** %_a_chars5975
  %_b5977 = load i8*, i8** %_b5960
  %_5978 = call { i64, [0 x i64] }* @array_of_string(i8* %_b5977)
  store { i64, [0 x i64] }* %_5978, { i64, [0 x i64] }** %_b_chars5979
  %_a_chars5983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5975
  %_i5984 = load i64, i64* %_i5954
  %_ptr5981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5983, i32 0, i32 1, i64 %_i5984
  %_resPtr5982 = load i64, i64* %_ptr5981
  store i64 %_resPtr5982, i64* %_last_char_a5985
  %_b_chars5989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars5979
  %_j5990 = load i64, i64* %_j5956
  %_ptr5987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars5989, i32 0, i32 1, i64 %_j5990
  %_resPtr5988 = load i64, i64* %_ptr5987
  store i64 %_resPtr5988, i64* %_last_char_b5991
  %_last_char_a5993 = load i64, i64* %_last_char_a5985
  %_last_char_b5994 = load i64, i64* %_last_char_b5991
  %_bop5995 = icmp eq i64 %_last_char_a5993, %_last_char_b5994
  br i1 %_bop5995, label %_if5998, label %_else5997
_if5998:
  %_i6000 = load i64, i64* %_i5954
  %_bop6001 = sub i64 %_i6000, 1
  %_j6002 = load i64, i64* %_j5956
  %_bop6003 = sub i64 %_j6002, 1
  %_a6004 = load i8*, i8** %_a5958
  %_b6005 = load i8*, i8** %_b5960
  %_6006 = call i8* @lcs(i64 %_bop6001, i64 %_bop6003, i8* %_a6004, i8* %_b6005)
  store i8* %_6006, i8** %_prev_lcs6007
  %_a_chars6011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5975
  %_i6012 = load i64, i64* %_i5954
  %_ptr6009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars6011, i32 0, i32 1, i64 %_i6012
  %_resPtr6010 = load i64, i64* %_ptr6009
  %_buf6013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_ptr6014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf6013, i32 0, i32 1, i32 0
  store i64 %_resPtr6010, i64* %_ptr6014
  %_buf6016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_6017 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf6016)
  store i8* %_6017, i8** %_next_char6018
  %_prev_lcs6020 = load i8*, i8** %_prev_lcs6007
  %_next_char6021 = load i8*, i8** %_next_char6018
  %_6022 = call i8* @string_cat(i8* %_prev_lcs6020, i8* %_next_char6021)
  ret i8* %_6022
_else5997:
  br label %_after5996
_after5996:
  %_i6023 = load i64, i64* %_i5954
  %_j6024 = load i64, i64* %_j5956
  %_bop6025 = sub i64 %_j6024, 1
  %_a6026 = load i8*, i8** %_a5958
  %_b6027 = load i8*, i8** %_b5960
  %_6028 = call i8* @lcs(i64 %_i6023, i64 %_bop6025, i8* %_a6026, i8* %_b6027)
  store i8* %_6028, i8** %_left_lcs6029
  %_i6031 = load i64, i64* %_i5954
  %_bop6032 = sub i64 %_i6031, 1
  %_j6033 = load i64, i64* %_j5956
  %_a6034 = load i8*, i8** %_a5958
  %_b6035 = load i8*, i8** %_b5960
  %_6036 = call i8* @lcs(i64 %_bop6032, i64 %_j6033, i8* %_a6034, i8* %_b6035)
  store i8* %_6036, i8** %_right_lcs6037
  %_left_lcs6039 = load i8*, i8** %_left_lcs6029
  %_6040 = call i64 @length_of_string(i8* %_left_lcs6039)
  store i64 %_6040, i64* %_left_len6041
  %_right_lcs6043 = load i8*, i8** %_right_lcs6037
  %_6044 = call i64 @length_of_string(i8* %_right_lcs6043)
  store i64 %_6044, i64* %_right_len6045
  %_left_len6047 = load i64, i64* %_left_len6041
  %_right_len6048 = load i64, i64* %_right_len6045
  %_bop6049 = icmp slt i64 %_left_len6047, %_right_len6048
  br i1 %_bop6049, label %_if6052, label %_else6051
_if6052:
  %_right_lcs6055 = load i8*, i8** %_right_lcs6037
  ret i8* %_right_lcs6055
_else6051:
  %_left_lcs6054 = load i8*, i8** %_left_lcs6029
  ret i8* %_left_lcs6054
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato5942 = alloca i8*
  %_orating5947 = alloca i8*
  %_argc5936 = alloca i64
  store i64 %argc, i64* %_argc5936
  %_argv5938 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5938
  %_tmp5941 = load i8*, i8** @_s5940
  store i8* %_tmp5941, i8** %_tomato5942
  %_tmp5946 = load i8*, i8** @_s5945
  store i8* %_tmp5946, i8** %_orating5947
  %_tomato5949 = load i8*, i8** %_tomato5942
  %_orating5950 = load i8*, i8** %_orating5947
  %_5951 = call i8* @lcs(i64 5, i64 6, i8* %_tomato5949, i8* %_orating5950)
  call void @print_string(i8* %_5951)
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
