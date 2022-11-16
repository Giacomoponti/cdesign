; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_arr6110 to { i64, [0 x i64] }*)
@_arr6110 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_s6024 = global [1 x i8] c"\00"
@_s6025 = global i8* bitcast ([1 x i8]* @_s6024 to i8*)
@_s5989 = global [7 x i8] c"TOMATO\00"
@_s5990 = global i8* bitcast ([7 x i8]* @_s5989 to i8*)
@_s5994 = global [8 x i8] c"ORATING\00"
@_s5995 = global i8* bitcast ([8 x i8]* @_s5994 to i8*)

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars6029 = alloca { i64, [0 x i64] }*
  %_b_chars6033 = alloca { i64, [0 x i64] }*
  %_last_char_a6039 = alloca i64
  %_last_char_b6045 = alloca i64
  %_prev_lcs6061 = alloca i8*
  %_next_char6072 = alloca i8*
  %_left_lcs6083 = alloca i8*
  %_right_lcs6091 = alloca i8*
  %_left_len6095 = alloca i64
  %_right_len6099 = alloca i64
  %_i6004 = alloca i64
  %_j6006 = alloca i64
  %_a6008 = alloca i8*
  %_b6010 = alloca i8*
  store i8* %b, i8** %_b6010
  store i8* %a, i8** %_a6008
  store i64 %j, i64* %_j6006
  store i64 %i, i64* %_i6004
  %_i6015 = load i64, i64* %_i6011
  %_bop6016 = icmp slt i64 %_i6015, 0
  %_j6017 = load i64, i64* %_j6012
  %_bop6018 = icmp slt i64 %_j6017, 0
  %_bop6019 = or i1 %_bop6016, %_bop6018
  br i1 %_bop6019, label %_if6022, label %_else6021
_if6022:
  %_tmp6026 = load i8*, i8** @_s6025
  ret i8* %_tmp6026
_else6021:
  br label %_after6020
_after6020:
  %_a6027 = load i8*, i8** %_a6013
  %_id6028 = call { i64, [0 x i64] }* @array_of_string(i8* %_a6027)
  store { i64, [0 x i64] }* %_id6028, { i64, [0 x i64] }** %_a_chars6029
  %_b6031 = load i8*, i8** %_b6014
  %_id6032 = call { i64, [0 x i64] }* @array_of_string(i8* %_b6031)
  store { i64, [0 x i64] }* %_id6032, { i64, [0 x i64] }** %_b_chars6033
  %_a_chars6037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars6029
  %_i6038 = load i64, i64* %_i6011
  %_ptr6035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars6037, i32 0, i32 1, i64 %_i6038
  %_resPtr6036 = load i64, i64* %_ptr6035
  store i64 %_resPtr6036, i64* %_last_char_a6039
  %_b_chars6043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars6033
  %_j6044 = load i64, i64* %_j6012
  %_ptr6041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars6043, i32 0, i32 1, i64 %_j6044
  %_resPtr6042 = load i64, i64* %_ptr6041
  store i64 %_resPtr6042, i64* %_last_char_b6045
  %_last_char_a6047 = load i64, i64* %_last_char_a6039
  %_last_char_b6048 = load i64, i64* %_last_char_b6045
  %_bop6049 = icmp eq i64 %_last_char_a6047, %_last_char_b6048
  br i1 %_bop6049, label %_if6052, label %_else6051
_if6052:
  %_i6054 = load i64, i64* %_i6011
  %_bop6055 = sub i64 %_i6054, 1
  %_j6056 = load i64, i64* %_j6012
  %_bop6057 = sub i64 %_j6056, 1
  %_a6058 = load i8*, i8** %_a6013
  %_b6059 = load i8*, i8** %_b6014
  %_id6060 = call i8* @lcs(i64 %_bop6055, i64 %_bop6057, i8* %_a6058, i8* %_b6059)
  store i8* %_id6060, i8** %_prev_lcs6061
  %_a_chars6065 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars6029
  %_i6066 = load i64, i64* %_i6011
  %_ptr6063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars6065, i32 0, i32 1, i64 %_i6066
  %_resPtr6064 = load i64, i64* %_ptr6063
  %_buf6067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_ptr6068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf6067, i32 0, i32 1, i32 0
  store i64 %_resPtr6064, i64* %_ptr6068
  %_buf6070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_id6071 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf6070)
  store i8* %_id6071, i8** %_next_char6072
  %_prev_lcs6074 = load i8*, i8** %_prev_lcs6061
  %_next_char6075 = load i8*, i8** %_next_char6072
  %_id6076 = call i8* @string_cat(i8* %_prev_lcs6074, i8* %_next_char6075)
  ret i8* %_id6076
_else6051:
  br label %_after6050
_after6050:
  %_i6077 = load i64, i64* %_i6011
  %_j6078 = load i64, i64* %_j6012
  %_bop6079 = sub i64 %_j6078, 1
  %_a6080 = load i8*, i8** %_a6013
  %_b6081 = load i8*, i8** %_b6014
  %_id6082 = call i8* @lcs(i64 %_i6077, i64 %_bop6079, i8* %_a6080, i8* %_b6081)
  store i8* %_id6082, i8** %_left_lcs6083
  %_i6085 = load i64, i64* %_i6011
  %_bop6086 = sub i64 %_i6085, 1
  %_j6087 = load i64, i64* %_j6012
  %_a6088 = load i8*, i8** %_a6013
  %_b6089 = load i8*, i8** %_b6014
  %_id6090 = call i8* @lcs(i64 %_bop6086, i64 %_j6087, i8* %_a6088, i8* %_b6089)
  store i8* %_id6090, i8** %_right_lcs6091
  %_left_lcs6093 = load i8*, i8** %_left_lcs6083
  %_id6094 = call i64 @length_of_string(i8* %_left_lcs6093)
  store i64 %_id6094, i64* %_left_len6095
  %_right_lcs6097 = load i8*, i8** %_right_lcs6091
  %_id6098 = call i64 @length_of_string(i8* %_right_lcs6097)
  store i64 %_id6098, i64* %_right_len6099
  %_left_len6101 = load i64, i64* %_left_len6095
  %_right_len6102 = load i64, i64* %_right_len6099
  %_bop6103 = icmp slt i64 %_left_len6101, %_right_len6102
  br i1 %_bop6103, label %_if6106, label %_else6105
_if6106:
  %_right_lcs6109 = load i8*, i8** %_right_lcs6091
  ret i8* %_right_lcs6109
_else6105:
  %_left_lcs6108 = load i8*, i8** %_left_lcs6083
  ret i8* %_left_lcs6108
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato5992 = alloca i8*
  %_orating5997 = alloca i8*
  %_argc5984 = alloca i64
  %_argv5986 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5986
  store i64 %argc, i64* %_argc5984
  %_tmp5991 = load i8*, i8** @_s5990
  store i8* %_tmp5991, i8** %_tomato5992
  %_tmp5996 = load i8*, i8** @_s5995
  store i8* %_tmp5996, i8** %_orating5997
  %_tomato5999 = load i8*, i8** %_tomato5992
  %_orating6000 = load i8*, i8** %_orating5997
  %_id6001 = call i8* @lcs(i64 5, i64 6, i8* %_tomato5999, i8* %_orating6000)
  call void @print_string(i8* %_id6001)
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
