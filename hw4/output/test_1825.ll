; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_inserted6192 = alloca { i64, [0 x i64] }*
  %_i6194 = alloca i64
  %_not_yet_inserted6212 = alloca i1
  %_i6228 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial6180
  store i64 %len, i64* %_len6182
  store i64 %insertee, i64* %_insertee6184
  %_insertee6184 = alloca i64
  %_len6182 = alloca i64
  %_partial6180 = alloca { i64, [0 x i64] }*
  %_len6188 = load i64, i64* %_len6186
  %_bop6189 = add i64 %_len6188, 1
  %_raw_array6190 = call i64* @oat_alloc_array(i64 %_bop6189)
  %_array6191 = bitcast i64* %_raw_array6190 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6191, { i64, [0 x i64] }** %_inserted6192
  store i64 0, i64* %_i6194
  br label %_pre6201
_pre6201:
  %_i6196 = load i64, i64* %_i6194
  %_len6197 = load i64, i64* %_len6186
  %_bop6198 = add i64 %_len6197, 1
  %_bop6199 = icmp slt i64 %_i6196, %_bop6198
  %_cnd6203 = icmp eq i1 %_bop6199, 0
  br i1 %_cnd6203, label %_post6200, label %_body6202
_body6202:
  %_uop6204 = mul i64 1, -1
  %_inserted6205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  %_i6206 = load i64, i64* %_i6194
  %_ptr6207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6205, i32 0, i32 1, i64 %_i6206
  store i64 %_uop6204, i64* %_ptr6207
  %_i6209 = load i64, i64* %_i6194
  %_bop6210 = add i64 %_i6209, 1
  store i64 %_bop6210, i64* %_i6194
  br label %_pre6201
_post6200:
  store i1 1, i1* %_not_yet_inserted6212
  %_insertee6214 = load i64, i64* %_insertee6187
  %_partial6217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6185
  %_ptr6215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6217, i32 0, i32 1, i32 0
  %_resPtr6216 = load i64, i64* %_ptr6215
  %_bop6218 = icmp slt i64 %_insertee6214, %_resPtr6216
  br i1 %_bop6218, label %_if6221, label %_else6220
_if6221:
  store i1 0, i1* %_not_yet_inserted6212
  %_insertee6224 = load i64, i64* %_insertee6187
  %_inserted6225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  %_ptr6226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6225, i32 0, i32 1, i32 0
  store i64 %_insertee6224, i64* %_ptr6226
  br label %_after6219
_else6220:
  br label %_after6219
_after6219:
  store i64 0, i64* %_i6228
  br label %_pre6234
_pre6234:
  %_i6230 = load i64, i64* %_i6228
  %_len6231 = load i64, i64* %_len6186
  %_bop6232 = icmp slt i64 %_i6230, %_len6231
  %_cnd6236 = icmp eq i1 %_bop6232, 0
  br i1 %_cnd6236, label %_post6233, label %_body6235
_body6235:
  %_not_yet_inserted6237 = load i1, i1* %_not_yet_inserted6212
  br i1 %_not_yet_inserted6237, label %_if6240, label %_else6239
_if6240:
  %_insertee6251 = load i64, i64* %_insertee6187
  %_partial6254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6185
  %_i6255 = load i64, i64* %_i6228
  %_ptr6252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6254, i32 0, i32 1, i64 %_i6255
  %_resPtr6253 = load i64, i64* %_ptr6252
  %_bop6256 = icmp sgt i64 %_insertee6251, %_resPtr6253
  br i1 %_bop6256, label %_if6259, label %_else6258
_if6259:
  store i1 0, i1* %_not_yet_inserted6212
  %_insertee6270 = load i64, i64* %_insertee6187
  %_inserted6271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  %_i6272 = load i64, i64* %_i6228
  %_bop6273 = add i64 %_i6272, 1
  %_ptr6274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6271, i32 0, i32 1, i64 %_bop6273
  store i64 %_insertee6270, i64* %_ptr6274
  %_partial6278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6185
  %_i6279 = load i64, i64* %_i6228
  %_ptr6276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6278, i32 0, i32 1, i64 %_i6279
  %_resPtr6277 = load i64, i64* %_ptr6276
  %_inserted6280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  %_i6281 = load i64, i64* %_i6228
  %_ptr6282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6280, i32 0, i32 1, i64 %_i6281
  store i64 %_resPtr6277, i64* %_ptr6282
  br label %_after6257
_else6258:
  %_partial6263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6185
  %_i6264 = load i64, i64* %_i6228
  %_ptr6261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6263, i32 0, i32 1, i64 %_i6264
  %_resPtr6262 = load i64, i64* %_ptr6261
  %_inserted6265 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  %_i6266 = load i64, i64* %_i6228
  %_ptr6267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6265, i32 0, i32 1, i64 %_i6266
  store i64 %_resPtr6262, i64* %_ptr6267
  br label %_after6257
_after6257:
  br label %_after6238
_else6239:
  %_partial6244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6185
  %_i6245 = load i64, i64* %_i6228
  %_ptr6242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6244, i32 0, i32 1, i64 %_i6245
  %_resPtr6243 = load i64, i64* %_ptr6242
  %_inserted6246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  %_i6247 = load i64, i64* %_i6228
  %_bop6248 = add i64 %_i6247, 1
  %_ptr6249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6246, i32 0, i32 1, i64 %_bop6248
  store i64 %_resPtr6243, i64* %_ptr6249
  br label %_after6238
_after6238:
  %_i6284 = load i64, i64* %_i6228
  %_bop6285 = add i64 %_i6284, 1
  store i64 %_bop6285, i64* %_i6228
  br label %_pre6234
_post6233:
  %_inserted6287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6192
  ret { i64, [0 x i64] }* %_inserted6287
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_out6150 = alloca { i64, [0 x i64] }*
  %_i6158 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted6141
  store i64 %len, i64* %_len6143
  %_len6143 = alloca i64
  %_unsorted6141 = alloca { i64, [0 x i64] }*
  %_raw_array6146 = call i64* @oat_alloc_array(i64 1)
  %_array6147 = bitcast i64* %_raw_array6146 to { i64, [0 x i64] }*
  %_gep6148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6147, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep6148
  store { i64, [0 x i64] }* %_array6147, { i64, [0 x i64] }** %_out6150
  %_unsorted6154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6144
  %_ptr6152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6154, i32 0, i32 1, i32 0
  %_resPtr6153 = load i64, i64* %_ptr6152
  %_out6155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6150
  %_ptr6156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out6155, i32 0, i32 1, i32 0
  store i64 %_resPtr6153, i64* %_ptr6156
  store i64 1, i64* %_i6158
  br label %_pre6164
_pre6164:
  %_i6160 = load i64, i64* %_i6158
  %_len6161 = load i64, i64* %_len6145
  %_bop6162 = icmp slt i64 %_i6160, %_len6161
  %_cnd6166 = icmp eq i1 %_bop6162, 0
  br i1 %_cnd6166, label %_post6163, label %_body6165
_body6165:
  %_out6167 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6150
  %_i6168 = load i64, i64* %_i6158
  %_unsorted6171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6144
  %_i6172 = load i64, i64* %_i6158
  %_ptr6169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6171, i32 0, i32 1, i64 %_i6172
  %_resPtr6170 = load i64, i64* %_ptr6169
  %_id6173 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out6167, i64 %_i6168, i64 %_resPtr6170)
  store { i64, [0 x i64] }* %_id6173, { i64, [0 x i64] }** %_out6150
  %_i6175 = load i64, i64* %_i6158
  %_bop6176 = add i64 %_i6175, 1
  store i64 %_bop6176, i64* %_i6158
  br label %_pre6164
_post6163:
  %_out6178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6150
  ret { i64, [0 x i64] }* %_out6178
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array6131 = alloca { i64, [0 x i64] }*
  %_result6135 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc6112
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6114
  %_argv6114 = alloca { i64, [0 x i8*] }*
  %_argc6112 = alloca i64
  %_raw_array6117 = call i64* @oat_alloc_array(i64 6)
  %_array6118 = bitcast i64* %_raw_array6117 to { i64, [0 x i64] }*
  %_gep6119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 0
  store i64 13, i64* %_gep6119
  %_gep6121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep6121
  %_gep6123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 2
  store i64 32, i64* %_gep6123
  %_gep6125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep6125
  %_gep6127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 4
  store i64 2, i64* %_gep6127
  %_gep6129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 5
  store i64 6, i64* %_gep6129
  store { i64, [0 x i64] }* %_array6118, { i64, [0 x i64] }** %_array6131
  %_array6133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6131
  %_id6134 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array6133, i64 6)
  store { i64, [0 x i64] }* %_id6134, { i64, [0 x i64] }** %_result6135
  %_result6139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result6135
  %_ptr6137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result6139, i32 0, i32 1, i32 5
  %_resPtr6138 = load i64, i64* %_ptr6137
  ret i64 %_resPtr6138
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
