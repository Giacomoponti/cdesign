; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_l5099 = alloca i64
  %_r5103 = alloca i64
  %_tmp5105 = alloca i64
  %_m5108 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array5089
  store i64 %i, i64* %_i5091
  store i64 %len, i64* %_len5093
  %_len5093 = alloca i64
  %_i5091 = alloca i64
  %_array5089 = alloca { i64, [0 x i64] }*
  %_i5097 = load i64, i64* %_i5095
  %_bop5098 = mul i64 %_i5097, 2
  store i64 %_bop5098, i64* %_l5099
  %_i5101 = load i64, i64* %_i5095
  %_bop5102 = add i64 %_i5101, 1
  store i64 %_bop5102, i64* %_r5103
  store i64 0, i64* %_tmp5105
  %_i5107 = load i64, i64* %_i5095
  store i64 %_i5107, i64* %_m5108
  %_l5110 = load i64, i64* %_l5099
  %_len5111 = load i64, i64* %_len5096
  %_bop5112 = icmp slt i64 %_l5110, %_len5111
  br i1 %_bop5112, label %_if5115, label %_else5114
_if5115:
  %_array5119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_l5120 = load i64, i64* %_l5099
  %_ptr5117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5119, i32 0, i32 1, i64 %_l5120
  %_resPtr5118 = load i64, i64* %_ptr5117
  %_array5123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_m5124 = load i64, i64* %_m5108
  %_ptr5121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5123, i32 0, i32 1, i64 %_m5124
  %_resPtr5122 = load i64, i64* %_ptr5121
  %_bop5125 = icmp sgt i64 %_resPtr5118, %_resPtr5122
  br i1 %_bop5125, label %_if5128, label %_else5127
_if5128:
  %_l5130 = load i64, i64* %_l5099
  store i64 %_l5130, i64* %_m5108
  br label %_after5126
_else5127:
  br label %_after5126
_after5126:
  br label %_after5113
_else5114:
  br label %_after5113
_after5113:
  %_r5132 = load i64, i64* %_r5103
  %_len5133 = load i64, i64* %_len5096
  %_bop5134 = icmp slt i64 %_r5132, %_len5133
  br i1 %_bop5134, label %_if5137, label %_else5136
_if5137:
  %_array5141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_r5142 = load i64, i64* %_r5103
  %_ptr5139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5141, i32 0, i32 1, i64 %_r5142
  %_resPtr5140 = load i64, i64* %_ptr5139
  %_array5145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_m5146 = load i64, i64* %_m5108
  %_ptr5143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5145, i32 0, i32 1, i64 %_m5146
  %_resPtr5144 = load i64, i64* %_ptr5143
  %_bop5147 = icmp sgt i64 %_resPtr5140, %_resPtr5144
  br i1 %_bop5147, label %_if5150, label %_else5149
_if5150:
  %_r5152 = load i64, i64* %_r5103
  store i64 %_r5152, i64* %_m5108
  br label %_after5148
_else5149:
  br label %_after5148
_after5148:
  br label %_after5135
_else5136:
  br label %_after5135
_after5135:
  %_m5154 = load i64, i64* %_m5108
  %_i5155 = load i64, i64* %_i5095
  %_bop5156 = icmp ne i64 %_m5154, %_i5155
  br i1 %_bop5156, label %_if5159, label %_else5158
_if5159:
  %_array5163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_i5164 = load i64, i64* %_i5095
  %_ptr5161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5163, i32 0, i32 1, i64 %_i5164
  %_resPtr5162 = load i64, i64* %_ptr5161
  store i64 %_resPtr5162, i64* %_tmp5105
  %_array5168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_m5169 = load i64, i64* %_m5108
  %_ptr5166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5168, i32 0, i32 1, i64 %_m5169
  %_resPtr5167 = load i64, i64* %_ptr5166
  %_array5170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_i5171 = load i64, i64* %_i5095
  %_ptr5172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5170, i32 0, i32 1, i64 %_i5171
  store i64 %_resPtr5167, i64* %_ptr5172
  %_tmp5174 = load i64, i64* %_tmp5105
  %_array5175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_m5176 = load i64, i64* %_m5108
  %_ptr5177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5175, i32 0, i32 1, i64 %_m5176
  store i64 %_tmp5174, i64* %_ptr5177
  %_array5179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5094
  %_m5180 = load i64, i64* %_m5108
  %_len5181 = load i64, i64* %_len5096
  call void @min_heapify({ i64, [0 x i64] }* %_array5179, i64 %_m5180, i64 %_len5181)
  br label %_after5157
_else5158:
  br label %_after5157
_after5157:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_i5073 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array5067
  store i64 %len, i64* %_len5069
  %_len5069 = alloca i64
  %_array5067 = alloca { i64, [0 x i64] }*
  %_len5072 = load i64, i64* %_len5071
  store i64 %_len5072, i64* %_i5073
  br label %_pre5078
_pre5078:
  %_i5075 = load i64, i64* %_i5073
  %_bop5076 = icmp sge i64 %_i5075, 1
  %_cnd5080 = icmp eq i1 %_bop5076, 0
  br i1 %_cnd5080, label %_post5077, label %_body5079
_body5079:
  %_array5081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5070
  %_i5082 = load i64, i64* %_i5073
  %_len5083 = load i64, i64* %_len5071
  call void @min_heapify({ i64, [0 x i64] }* %_array5081, i64 %_i5082, i64 %_len5083)
  %_i5085 = load i64, i64* %_i5073
  %_bop5086 = sub i64 %_i5085, 1
  store i64 %_bop5086, i64* %_i5073
  br label %_pre5078
_post5077:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array5008 = alloca { i64, [0 x i64] }*
  %_end_result5034 = alloca { i64, [0 x i64] }*
  %_same5038 = alloca i64
  %_i5040 = alloca i64
  store i64 %argc, i64* %_argc4979
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4981
  %_argv4981 = alloca { i64, [0 x i8*] }*
  %_argc4979 = alloca i64
  %_raw_array4984 = call i64* @oat_alloc_array(i64 11)
  %_array4985 = bitcast i64* %_raw_array4984 to { i64, [0 x i64] }*
  %_gep4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4986
  %_gep4988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep4988
  %_gep4990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4990
  %_gep4992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4992
  %_gep4994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep4994
  %_gep4996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 5
  store i64 10, i64* %_gep4996
  %_gep4998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep4998
  %_gep5000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep5000
  %_gep5002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep5002
  %_gep5004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 9
  store i64 4, i64* %_gep5004
  %_gep5006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 10
  store i64 5, i64* %_gep5006
  store { i64, [0 x i64] }* %_array4985, { i64, [0 x i64] }** %_array5008
  %_raw_array5010 = call i64* @oat_alloc_array(i64 11)
  %_array5011 = bitcast i64* %_raw_array5010 to { i64, [0 x i64] }*
  %_gep5012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5012
  %_gep5014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5014
  %_gep5016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep5016
  %_gep5018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep5018
  %_gep5020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep5020
  %_gep5022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 5
  store i64 5, i64* %_gep5022
  %_gep5024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep5024
  %_gep5026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep5026
  %_gep5028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep5028
  %_gep5030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 9
  store i64 9, i64* %_gep5030
  %_gep5032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5011, i32 0, i32 1, i32 10
  store i64 10, i64* %_gep5032
  store { i64, [0 x i64] }* %_array5011, { i64, [0 x i64] }** %_end_result5034
  %_array5036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5008
  call void @make_min_heap({ i64, [0 x i64] }* %_array5036, i64 10)
  store i64 0, i64* %_same5038
  store i64 0, i64* %_i5040
  br label %_pre5045
_pre5045:
  %_i5042 = load i64, i64* %_i5040
  %_bop5043 = icmp slt i64 %_i5042, 11
  %_cnd5047 = icmp eq i1 %_bop5043, 0
  br i1 %_cnd5047, label %_post5044, label %_body5046
_body5046:
  %_array5050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5008
  %_i5051 = load i64, i64* %_i5040
  %_ptr5048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5050, i32 0, i32 1, i64 %_i5051
  %_resPtr5049 = load i64, i64* %_ptr5048
  %_end_result5054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result5034
  %_i5055 = load i64, i64* %_i5040
  %_ptr5052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result5054, i32 0, i32 1, i64 %_i5055
  %_resPtr5053 = load i64, i64* %_ptr5052
  %_bop5056 = icmp ne i64 %_resPtr5049, %_resPtr5053
  br i1 %_bop5056, label %_if5059, label %_else5058
_if5059:
  store i64 1, i64* %_same5038
  br label %_after5057
_else5058:
  br label %_after5057
_after5057:
  %_i5062 = load i64, i64* %_i5040
  %_bop5063 = add i64 %_i5062, 1
  store i64 %_bop5063, i64* %_i5040
  br label %_pre5045
_post5044:
  %_same5065 = load i64, i64* %_same5038
  ret i64 %_same5065
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
