; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_l5086 = alloca i64
  %_r5090 = alloca i64
  %_tmp5092 = alloca i64
  %_m5095 = alloca i64
  %_array5079 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array5079
  %_i5081 = alloca i64
  store i64 %i, i64* %_i5081
  %_len5083 = alloca i64
  store i64 %len, i64* %_len5083
  %_i5084 = load i64, i64* %_i5081
  %_bop5085 = mul i64 %_i5084, 2
  store i64 %_bop5085, i64* %_l5086
  %_i5088 = load i64, i64* %_i5081
  %_bop5089 = add i64 %_i5088, 1
  store i64 %_bop5089, i64* %_r5090
  store i64 0, i64* %_tmp5092
  %_i5094 = load i64, i64* %_i5081
  store i64 %_i5094, i64* %_m5095
  %_l5097 = load i64, i64* %_l5086
  %_len5098 = load i64, i64* %_len5083
  %_bop5099 = icmp slt i64 %_l5097, %_len5098
  br i1 %_bop5099, label %_if5102, label %_else5101
_if5102:
  %_array5106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_l5107 = load i64, i64* %_l5086
  %_ptr5104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5106, i32 0, i32 1, i64 %_l5107
  %_resPtr5105 = load i64, i64* %_ptr5104
  %_array5110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_m5111 = load i64, i64* %_m5095
  %_ptr5108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5110, i32 0, i32 1, i64 %_m5111
  %_resPtr5109 = load i64, i64* %_ptr5108
  %_bop5112 = icmp sgt i64 %_resPtr5105, %_resPtr5109
  br i1 %_bop5112, label %_if5115, label %_else5114
_if5115:
  %_l5117 = load i64, i64* %_l5086
  store i64 %_l5117, i64* %_m5095
  br label %_after5113
_else5114:
  br label %_after5113
_after5113:
  br label %_after5100
_else5101:
  br label %_after5100
_after5100:
  %_r5119 = load i64, i64* %_r5090
  %_len5120 = load i64, i64* %_len5083
  %_bop5121 = icmp slt i64 %_r5119, %_len5120
  br i1 %_bop5121, label %_if5124, label %_else5123
_if5124:
  %_array5128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_r5129 = load i64, i64* %_r5090
  %_ptr5126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5128, i32 0, i32 1, i64 %_r5129
  %_resPtr5127 = load i64, i64* %_ptr5126
  %_array5132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_m5133 = load i64, i64* %_m5095
  %_ptr5130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5132, i32 0, i32 1, i64 %_m5133
  %_resPtr5131 = load i64, i64* %_ptr5130
  %_bop5134 = icmp sgt i64 %_resPtr5127, %_resPtr5131
  br i1 %_bop5134, label %_if5137, label %_else5136
_if5137:
  %_r5139 = load i64, i64* %_r5090
  store i64 %_r5139, i64* %_m5095
  br label %_after5135
_else5136:
  br label %_after5135
_after5135:
  br label %_after5122
_else5123:
  br label %_after5122
_after5122:
  %_m5141 = load i64, i64* %_m5095
  %_i5142 = load i64, i64* %_i5081
  %_bop5143 = icmp ne i64 %_m5141, %_i5142
  br i1 %_bop5143, label %_if5146, label %_else5145
_if5146:
  %_array5150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_i5151 = load i64, i64* %_i5081
  %_ptr5148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5150, i32 0, i32 1, i64 %_i5151
  %_resPtr5149 = load i64, i64* %_ptr5148
  store i64 %_resPtr5149, i64* %_tmp5092
  %_array5155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_m5156 = load i64, i64* %_m5095
  %_ptr5153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5155, i32 0, i32 1, i64 %_m5156
  %_resPtr5154 = load i64, i64* %_ptr5153
  %_array5157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_i5158 = load i64, i64* %_i5081
  %_ptr5159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5157, i32 0, i32 1, i64 %_i5158
  store i64 %_resPtr5154, i64* %_ptr5159
  %_tmp5161 = load i64, i64* %_tmp5092
  %_array5162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_m5163 = load i64, i64* %_m5095
  %_ptr5164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5162, i32 0, i32 1, i64 %_m5163
  store i64 %_tmp5161, i64* %_ptr5164
  %_array5166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5079
  %_m5167 = load i64, i64* %_m5095
  %_len5168 = load i64, i64* %_len5083
  call void @min_heapify({ i64, [0 x i64] }* %_array5166, i64 %_m5167, i64 %_len5168)
  br label %_after5144
_else5145:
  br label %_after5144
_after5144:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_i5063 = alloca i64
  %_array5059 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array5059
  %_len5061 = alloca i64
  store i64 %len, i64* %_len5061
  %_len5062 = load i64, i64* %_len5061
  store i64 %_len5062, i64* %_i5063
  br label %_pre5068
_pre5068:
  %_i5065 = load i64, i64* %_i5063
  %_bop5066 = icmp sge i64 %_i5065, 1
  %_cnd5070 = icmp eq i1 %_bop5066, 0
  br i1 %_cnd5070, label %_post5067, label %_body5069
_body5069:
  %_array5071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5059
  %_i5072 = load i64, i64* %_i5063
  %_len5073 = load i64, i64* %_len5061
  call void @min_heapify({ i64, [0 x i64] }* %_array5071, i64 %_i5072, i64 %_len5073)
  %_i5075 = load i64, i64* %_i5063
  %_bop5076 = sub i64 %_i5075, 1
  store i64 %_bop5076, i64* %_i5063
  br label %_pre5068
_post5067:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array5000 = alloca { i64, [0 x i64] }*
  %_end_result5026 = alloca { i64, [0 x i64] }*
  %_same5030 = alloca i64
  %_i5032 = alloca i64
  %_argc4973 = alloca i64
  store i64 %argc, i64* %_argc4973
  %_argv4975 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4975
  %_raw_array4976 = call i64* @oat_alloc_array(i64 11)
  %_array4977 = bitcast i64* %_raw_array4976 to { i64, [0 x i64] }*
  %_gep4978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4978
  %_gep4980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep4980
  %_gep4982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4982
  %_gep4984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4984
  %_gep4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep4986
  %_gep4988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 5
  store i64 10, i64* %_gep4988
  %_gep4990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep4990
  %_gep4992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep4992
  %_gep4994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep4994
  %_gep4996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 9
  store i64 4, i64* %_gep4996
  %_gep4998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4977, i32 0, i32 1, i32 10
  store i64 5, i64* %_gep4998
  store { i64, [0 x i64] }* %_array4977, { i64, [0 x i64] }** %_array5000
  %_raw_array5002 = call i64* @oat_alloc_array(i64 11)
  %_array5003 = bitcast i64* %_raw_array5002 to { i64, [0 x i64] }*
  %_gep5004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5004
  %_gep5006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5006
  %_gep5008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep5008
  %_gep5010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep5010
  %_gep5012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep5012
  %_gep5014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 5
  store i64 5, i64* %_gep5014
  %_gep5016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep5016
  %_gep5018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep5018
  %_gep5020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep5020
  %_gep5022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 9
  store i64 9, i64* %_gep5022
  %_gep5024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5003, i32 0, i32 1, i32 10
  store i64 10, i64* %_gep5024
  store { i64, [0 x i64] }* %_array5003, { i64, [0 x i64] }** %_end_result5026
  %_array5028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5000
  call void @make_min_heap({ i64, [0 x i64] }* %_array5028, i64 10)
  store i64 0, i64* %_same5030
  store i64 0, i64* %_i5032
  br label %_pre5037
_pre5037:
  %_i5034 = load i64, i64* %_i5032
  %_bop5035 = icmp slt i64 %_i5034, 11
  %_cnd5039 = icmp eq i1 %_bop5035, 0
  br i1 %_cnd5039, label %_post5036, label %_body5038
_body5038:
  %_array5042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5000
  %_i5043 = load i64, i64* %_i5032
  %_ptr5040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5042, i32 0, i32 1, i64 %_i5043
  %_resPtr5041 = load i64, i64* %_ptr5040
  %_end_result5046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result5026
  %_i5047 = load i64, i64* %_i5032
  %_ptr5044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result5046, i32 0, i32 1, i64 %_i5047
  %_resPtr5045 = load i64, i64* %_ptr5044
  %_bop5048 = icmp ne i64 %_resPtr5041, %_resPtr5045
  br i1 %_bop5048, label %_if5051, label %_else5050
_if5051:
  store i64 1, i64* %_same5030
  br label %_after5049
_else5050:
  br label %_after5049
_after5049:
  %_i5054 = load i64, i64* %_i5032
  %_bop5055 = add i64 %_i5054, 1
  store i64 %_bop5055, i64* %_i5032
  br label %_pre5037
_post5036:
  %_same5057 = load i64, i64* %_same5030
  ret i64 %_same5057
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
