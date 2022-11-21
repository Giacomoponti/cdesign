; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_inserted6131 = alloca { i64, [0 x i64] }*
  %_i6133 = alloca i64
  %_not_yet_inserted6151 = alloca i1
  %_i6167 = alloca i64
  %_partial6122 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial6122
  %_len6124 = alloca i64
  store i64 %len, i64* %_len6124
  %_insertee6126 = alloca i64
  store i64 %insertee, i64* %_insertee6126
  %_len6127 = load i64, i64* %_len6124
  %_bop6128 = add i64 %_len6127, 1
  %_raw_array6129 = call i64* @oat_alloc_array(i64 %_bop6128)
  %_array6130 = bitcast i64* %_raw_array6129 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6130, { i64, [0 x i64] }** %_inserted6131
  store i64 0, i64* %_i6133
  br label %_pre6140
_pre6140:
  %_i6135 = load i64, i64* %_i6133
  %_len6136 = load i64, i64* %_len6124
  %_bop6137 = add i64 %_len6136, 1
  %_bop6138 = icmp slt i64 %_i6135, %_bop6137
  %_cnd6142 = icmp eq i1 %_bop6138, 0
  br i1 %_cnd6142, label %_post6139, label %_body6141
_body6141:
  %_uop6143 = mul i64 1, -1
  %_inserted6144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  %_i6145 = load i64, i64* %_i6133
  %_ptr6146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6144, i32 0, i32 1, i64 %_i6145
  store i64 %_uop6143, i64* %_ptr6146
  %_i6148 = load i64, i64* %_i6133
  %_bop6149 = add i64 %_i6148, 1
  store i64 %_bop6149, i64* %_i6133
  br label %_pre6140
_post6139:
  store i1 1, i1* %_not_yet_inserted6151
  %_insertee6153 = load i64, i64* %_insertee6126
  %_partial6156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6122
  %_ptr6154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6156, i32 0, i32 1, i32 0
  %_resPtr6155 = load i64, i64* %_ptr6154
  %_bop6157 = icmp slt i64 %_insertee6153, %_resPtr6155
  br i1 %_bop6157, label %_if6160, label %_else6159
_if6160:
  store i1 0, i1* %_not_yet_inserted6151
  %_insertee6163 = load i64, i64* %_insertee6126
  %_inserted6164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  %_ptr6165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6164, i32 0, i32 1, i32 0
  store i64 %_insertee6163, i64* %_ptr6165
  br label %_after6158
_else6159:
  br label %_after6158
_after6158:
  store i64 0, i64* %_i6167
  br label %_pre6173
_pre6173:
  %_i6169 = load i64, i64* %_i6167
  %_len6170 = load i64, i64* %_len6124
  %_bop6171 = icmp slt i64 %_i6169, %_len6170
  %_cnd6175 = icmp eq i1 %_bop6171, 0
  br i1 %_cnd6175, label %_post6172, label %_body6174
_body6174:
  %_not_yet_inserted6176 = load i1, i1* %_not_yet_inserted6151
  br i1 %_not_yet_inserted6176, label %_if6179, label %_else6178
_if6179:
  %_insertee6190 = load i64, i64* %_insertee6126
  %_partial6193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6122
  %_i6194 = load i64, i64* %_i6167
  %_ptr6191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6193, i32 0, i32 1, i64 %_i6194
  %_resPtr6192 = load i64, i64* %_ptr6191
  %_bop6195 = icmp sgt i64 %_insertee6190, %_resPtr6192
  br i1 %_bop6195, label %_if6198, label %_else6197
_if6198:
  store i1 0, i1* %_not_yet_inserted6151
  %_insertee6209 = load i64, i64* %_insertee6126
  %_inserted6210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  %_i6211 = load i64, i64* %_i6167
  %_bop6212 = add i64 %_i6211, 1
  %_ptr6213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6210, i32 0, i32 1, i64 %_bop6212
  store i64 %_insertee6209, i64* %_ptr6213
  %_partial6217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6122
  %_i6218 = load i64, i64* %_i6167
  %_ptr6215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6217, i32 0, i32 1, i64 %_i6218
  %_resPtr6216 = load i64, i64* %_ptr6215
  %_inserted6219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  %_i6220 = load i64, i64* %_i6167
  %_ptr6221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6219, i32 0, i32 1, i64 %_i6220
  store i64 %_resPtr6216, i64* %_ptr6221
  br label %_after6196
_else6197:
  %_partial6202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6122
  %_i6203 = load i64, i64* %_i6167
  %_ptr6200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6202, i32 0, i32 1, i64 %_i6203
  %_resPtr6201 = load i64, i64* %_ptr6200
  %_inserted6204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  %_i6205 = load i64, i64* %_i6167
  %_ptr6206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6204, i32 0, i32 1, i64 %_i6205
  store i64 %_resPtr6201, i64* %_ptr6206
  br label %_after6196
_after6196:
  br label %_after6177
_else6178:
  %_partial6183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6122
  %_i6184 = load i64, i64* %_i6167
  %_ptr6181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6183, i32 0, i32 1, i64 %_i6184
  %_resPtr6182 = load i64, i64* %_ptr6181
  %_inserted6185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  %_i6186 = load i64, i64* %_i6167
  %_bop6187 = add i64 %_i6186, 1
  %_ptr6188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6185, i32 0, i32 1, i64 %_bop6187
  store i64 %_resPtr6182, i64* %_ptr6188
  br label %_after6177
_after6177:
  %_i6223 = load i64, i64* %_i6167
  %_bop6224 = add i64 %_i6223, 1
  store i64 %_bop6224, i64* %_i6167
  br label %_pre6173
_post6172:
  %_inserted6226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6131
  ret { i64, [0 x i64] }* %_inserted6226
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_out6092 = alloca { i64, [0 x i64] }*
  %_i6100 = alloca i64
  %_unsorted6085 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted6085
  %_len6087 = alloca i64
  store i64 %len, i64* %_len6087
  %_raw_array6088 = call i64* @oat_alloc_array(i64 1)
  %_array6089 = bitcast i64* %_raw_array6088 to { i64, [0 x i64] }*
  %_gep6090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6089, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep6090
  store { i64, [0 x i64] }* %_array6089, { i64, [0 x i64] }** %_out6092
  %_unsorted6096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6085
  %_ptr6094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6096, i32 0, i32 1, i32 0
  %_resPtr6095 = load i64, i64* %_ptr6094
  %_out6097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6092
  %_ptr6098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out6097, i32 0, i32 1, i32 0
  store i64 %_resPtr6095, i64* %_ptr6098
  store i64 1, i64* %_i6100
  br label %_pre6106
_pre6106:
  %_i6102 = load i64, i64* %_i6100
  %_len6103 = load i64, i64* %_len6087
  %_bop6104 = icmp slt i64 %_i6102, %_len6103
  %_cnd6108 = icmp eq i1 %_bop6104, 0
  br i1 %_cnd6108, label %_post6105, label %_body6107
_body6107:
  %_out6109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6092
  %_i6110 = load i64, i64* %_i6100
  %_unsorted6113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6085
  %_i6114 = load i64, i64* %_i6100
  %_ptr6111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6113, i32 0, i32 1, i64 %_i6114
  %_resPtr6112 = load i64, i64* %_ptr6111
  %_6115 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out6109, i64 %_i6110, i64 %_resPtr6112)
  store { i64, [0 x i64] }* %_6115, { i64, [0 x i64] }** %_out6092
  %_i6117 = load i64, i64* %_i6100
  %_bop6118 = add i64 %_i6117, 1
  store i64 %_bop6118, i64* %_i6100
  br label %_pre6106
_post6105:
  %_out6120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6092
  ret { i64, [0 x i64] }* %_out6120
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array6075 = alloca { i64, [0 x i64] }*
  %_result6079 = alloca { i64, [0 x i64] }*
  %_argc6058 = alloca i64
  store i64 %argc, i64* %_argc6058
  %_argv6060 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6060
  %_raw_array6061 = call i64* @oat_alloc_array(i64 6)
  %_array6062 = bitcast i64* %_raw_array6061 to { i64, [0 x i64] }*
  %_gep6063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6062, i32 0, i32 1, i32 0
  store i64 13, i64* %_gep6063
  %_gep6065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6062, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep6065
  %_gep6067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6062, i32 0, i32 1, i32 2
  store i64 32, i64* %_gep6067
  %_gep6069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6062, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep6069
  %_gep6071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6062, i32 0, i32 1, i32 4
  store i64 2, i64* %_gep6071
  %_gep6073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6062, i32 0, i32 1, i32 5
  store i64 6, i64* %_gep6073
  store { i64, [0 x i64] }* %_array6062, { i64, [0 x i64] }** %_array6075
  %_array6077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6075
  %_6078 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array6077, i64 6)
  store { i64, [0 x i64] }* %_6078, { i64, [0 x i64] }** %_result6079
  %_result6083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result6079
  %_ptr6081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result6083, i32 0, i32 1, i32 5
  %_resPtr6082 = load i64, i64* %_ptr6081
  ret i64 %_resPtr6082
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
