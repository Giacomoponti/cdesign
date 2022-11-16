; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_inserted6111 = alloca { i64, [0 x i64] }*
  %_i6113 = alloca i64
  %_not_yet_inserted6131 = alloca i1
  %_i6147 = alloca i64
  %_partial6099 = alloca { i64, [0 x i64] }*
  %_len6101 = alloca i64
  %_insertee6103 = alloca i64
  store i64 %insertee, i64* %_insertee6103
  store i64 %len, i64* %_len6101
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial6099
  %_len6107 = load i64, i64* %_len6105
  %_bop6108 = add i64 %_len6107, 1
  %_raw_array6109 = call i64* @oat_alloc_array(i64 %_bop6108)
  %_array6110 = bitcast i64* %_raw_array6109 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6110, { i64, [0 x i64] }** %_inserted6111
  store i64 0, i64* %_i6113
  br label %_pre6120
_pre6120:
  %_cnd6122 = icmp eq i1 %_bop6118, 0
  br i1 %_cnd6122, label %_post6119, label %_body6121
_body6121:
  %_i6115 = load i64, i64* %_i6113
  %_len6116 = load i64, i64* %_len6105
  %_bop6117 = add i64 %_len6116, 1
  %_bop6118 = icmp slt i64 %_i6115, %_bop6117
  %_uop6123 = mul i64 1, -1
  %_inserted6124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  %_i6125 = load i64, i64* %_i6113
  %_ptr6126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6124, i32 0, i32 1, i64 %_i6125
  store i64 %_uop6123, i64* %_ptr6126
  %_i6128 = load i64, i64* %_i6113
  %_bop6129 = add i64 %_i6128, 1
  store i64 %_bop6129, i64* %_i6113
  br label %_pre6120
_post6119:
  store i1 1, i1* %_not_yet_inserted6131
  %_insertee6133 = load i64, i64* %_insertee6106
  %_partial6136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6104
  %_ptr6134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6136, i32 0, i32 1, i32 0
  %_resPtr6135 = load i64, i64* %_ptr6134
  %_bop6137 = icmp slt i64 %_insertee6133, %_resPtr6135
  br i1 %_bop6137, label %_if6140, label %_else6139
_if6140:
  store i1 0, i1* %_not_yet_inserted6131
  %_insertee6143 = load i64, i64* %_insertee6106
  %_inserted6144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  %_ptr6145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6144, i32 0, i32 1, i32 0
  store i64 %_insertee6143, i64* %_ptr6145
  br label %_after6138
_else6139:
  br label %_after6138
_after6138:
  store i64 0, i64* %_i6147
  br label %_pre6153
_pre6153:
  %_cnd6155 = icmp eq i1 %_bop6151, 0
  br i1 %_cnd6155, label %_post6152, label %_body6154
_body6154:
  %_i6149 = load i64, i64* %_i6147
  %_len6150 = load i64, i64* %_len6105
  %_bop6151 = icmp slt i64 %_i6149, %_len6150
  %_not_yet_inserted6156 = load i1, i1* %_not_yet_inserted6131
  br i1 %_not_yet_inserted6156, label %_if6159, label %_else6158
_if6159:
  %_insertee6170 = load i64, i64* %_insertee6106
  %_partial6173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6104
  %_i6174 = load i64, i64* %_i6147
  %_ptr6171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6173, i32 0, i32 1, i64 %_i6174
  %_resPtr6172 = load i64, i64* %_ptr6171
  %_bop6175 = icmp sgt i64 %_insertee6170, %_resPtr6172
  br i1 %_bop6175, label %_if6178, label %_else6177
_if6178:
  store i1 0, i1* %_not_yet_inserted6131
  %_insertee6189 = load i64, i64* %_insertee6106
  %_inserted6190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  %_i6191 = load i64, i64* %_i6147
  %_bop6192 = add i64 %_i6191, 1
  %_ptr6193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6190, i32 0, i32 1, i64 %_bop6192
  store i64 %_insertee6189, i64* %_ptr6193
  %_partial6197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6104
  %_i6198 = load i64, i64* %_i6147
  %_ptr6195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6197, i32 0, i32 1, i64 %_i6198
  %_resPtr6196 = load i64, i64* %_ptr6195
  %_inserted6199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  %_i6200 = load i64, i64* %_i6147
  %_ptr6201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6199, i32 0, i32 1, i64 %_i6200
  store i64 %_resPtr6196, i64* %_ptr6201
  br label %_after6176
_else6177:
  %_partial6182 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6104
  %_i6183 = load i64, i64* %_i6147
  %_ptr6180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6182, i32 0, i32 1, i64 %_i6183
  %_resPtr6181 = load i64, i64* %_ptr6180
  %_inserted6184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  %_i6185 = load i64, i64* %_i6147
  %_ptr6186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6184, i32 0, i32 1, i64 %_i6185
  store i64 %_resPtr6181, i64* %_ptr6186
  br label %_after6176
_after6176:
  br label %_after6157
_else6158:
  %_partial6163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6104
  %_i6164 = load i64, i64* %_i6147
  %_ptr6161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6163, i32 0, i32 1, i64 %_i6164
  %_resPtr6162 = load i64, i64* %_ptr6161
  %_inserted6165 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  %_i6166 = load i64, i64* %_i6147
  %_bop6167 = add i64 %_i6166, 1
  %_ptr6168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6165, i32 0, i32 1, i64 %_bop6167
  store i64 %_resPtr6162, i64* %_ptr6168
  br label %_after6157
_after6157:
  %_i6203 = load i64, i64* %_i6147
  %_bop6204 = add i64 %_i6203, 1
  store i64 %_bop6204, i64* %_i6147
  br label %_pre6153
_post6152:
  %_inserted6206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6111
  ret { i64, [0 x i64] }* %_inserted6206
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_out6069 = alloca { i64, [0 x i64] }*
  %_i6077 = alloca i64
  %_unsorted6060 = alloca { i64, [0 x i64] }*
  %_len6062 = alloca i64
  store i64 %len, i64* %_len6062
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted6060
  %_raw_array6065 = call i64* @oat_alloc_array(i64 1)
  %_array6066 = bitcast i64* %_raw_array6065 to { i64, [0 x i64] }*
  %_gep6067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6066, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep6067
  store { i64, [0 x i64] }* %_array6066, { i64, [0 x i64] }** %_out6069
  %_unsorted6073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6063
  %_ptr6071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6073, i32 0, i32 1, i32 0
  %_resPtr6072 = load i64, i64* %_ptr6071
  %_out6074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6069
  %_ptr6075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out6074, i32 0, i32 1, i32 0
  store i64 %_resPtr6072, i64* %_ptr6075
  store i64 1, i64* %_i6077
  br label %_pre6083
_pre6083:
  %_cnd6085 = icmp eq i1 %_bop6081, 0
  br i1 %_cnd6085, label %_post6082, label %_body6084
_body6084:
  %_i6079 = load i64, i64* %_i6077
  %_len6080 = load i64, i64* %_len6064
  %_bop6081 = icmp slt i64 %_i6079, %_len6080
  %_out6086 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6069
  %_i6087 = load i64, i64* %_i6077
  %_unsorted6090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6063
  %_i6091 = load i64, i64* %_i6077
  %_ptr6088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6090, i32 0, i32 1, i64 %_i6091
  %_resPtr6089 = load i64, i64* %_ptr6088
  %_id6092 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out6086, i64 %_i6087, i64 %_resPtr6089)
  store { i64, [0 x i64] }* %_id6092, { i64, [0 x i64] }** %_out6069
  %_i6094 = load i64, i64* %_i6077
  %_bop6095 = add i64 %_i6094, 1
  store i64 %_bop6095, i64* %_i6077
  br label %_pre6083
_post6082:
  %_out6097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6069
  ret { i64, [0 x i64] }* %_out6097
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array6050 = alloca { i64, [0 x i64] }*
  %_result6054 = alloca { i64, [0 x i64] }*
  %_argc6031 = alloca i64
  %_argv6033 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6033
  store i64 %argc, i64* %_argc6031
  %_raw_array6036 = call i64* @oat_alloc_array(i64 6)
  %_array6037 = bitcast i64* %_raw_array6036 to { i64, [0 x i64] }*
  %_gep6038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6037, i32 0, i32 1, i32 0
  store i64 13, i64* %_gep6038
  %_gep6040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6037, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep6040
  %_gep6042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6037, i32 0, i32 1, i32 2
  store i64 32, i64* %_gep6042
  %_gep6044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6037, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep6044
  %_gep6046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6037, i32 0, i32 1, i32 4
  store i64 2, i64* %_gep6046
  %_gep6048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6037, i32 0, i32 1, i32 5
  store i64 6, i64* %_gep6048
  store { i64, [0 x i64] }* %_array6037, { i64, [0 x i64] }** %_array6050
  %_array6052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6050
  %_id6053 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array6052, i64 6)
  store { i64, [0 x i64] }* %_id6053, { i64, [0 x i64] }** %_result6054
  %_result6058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result6054
  %_ptr6056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result6058, i32 0, i32 1, i32 5
  %_resPtr6057 = load i64, i64* %_ptr6056
  ret i64 %_resPtr6057
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
