; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_maxarr6245 = alloca { i64, [0 x i64] }*
  %_maxs6247 = alloca i64
  %_i6255 = alloca i64
  %_j6264 = alloca i64
  %_arr6237 = alloca { i64, [0 x i64] }*
  %_size6239 = alloca i64
  store i64 %size, i64* %_size6239
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr6237
  %_size6242 = load i64, i64* %_size6241
  %_raw_array6243 = call i64* @oat_alloc_array(i64 %_size6242)
  %_array6244 = bitcast i64* %_raw_array6243 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6244, { i64, [0 x i64] }** %_maxarr6245
  store i64 0, i64* %_maxs6247
  %_arr6251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6240
  %_ptr6249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6251, i32 0, i32 1, i32 0
  %_resPtr6250 = load i64, i64* %_ptr6249
  %_maxarr6252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_ptr6253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6252, i32 0, i32 1, i32 0
  store i64 %_resPtr6250, i64* %_ptr6253
  store i64 0, i64* %_i6255
  br label %_pre6261
_pre6261:
  %_cnd6263 = icmp eq i1 %_bop6259, 0
  br i1 %_cnd6263, label %_post6260, label %_body6262
_body6262:
  %_i6257 = load i64, i64* %_i6255
  %_size6258 = load i64, i64* %_size6241
  %_bop6259 = icmp slt i64 %_i6257, %_size6258
  store i64 0, i64* %_j6264
  br label %_pre6270
_pre6270:
  %_cnd6272 = icmp eq i1 %_bop6268, 0
  br i1 %_cnd6272, label %_post6269, label %_body6271
_body6271:
  %_j6266 = load i64, i64* %_j6264
  %_i6267 = load i64, i64* %_i6255
  %_bop6268 = icmp slt i64 %_j6266, %_i6267
  %_arr6275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6240
  %_i6276 = load i64, i64* %_i6255
  %_ptr6273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6275, i32 0, i32 1, i64 %_i6276
  %_resPtr6274 = load i64, i64* %_ptr6273
  %_arr6279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6240
  %_j6280 = load i64, i64* %_j6264
  %_ptr6277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6279, i32 0, i32 1, i64 %_j6280
  %_resPtr6278 = load i64, i64* %_ptr6277
  %_bop6281 = icmp sgt i64 %_resPtr6274, %_resPtr6278
  %_maxarr6284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_i6285 = load i64, i64* %_i6255
  %_ptr6282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6284, i32 0, i32 1, i64 %_i6285
  %_resPtr6283 = load i64, i64* %_ptr6282
  %_maxarr6288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_j6289 = load i64, i64* %_j6264
  %_ptr6286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6288, i32 0, i32 1, i64 %_j6289
  %_resPtr6287 = load i64, i64* %_ptr6286
  %_arr6292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6240
  %_i6293 = load i64, i64* %_i6255
  %_ptr6290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6292, i32 0, i32 1, i64 %_i6293
  %_resPtr6291 = load i64, i64* %_ptr6290
  %_bop6294 = add i64 %_resPtr6287, %_resPtr6291
  %_bop6295 = icmp slt i64 %_resPtr6283, %_bop6294
  %_bop6296 = and i1 %_bop6281, %_bop6295
  br i1 %_bop6296, label %_if6299, label %_else6298
_if6299:
  %_maxarr6303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_j6304 = load i64, i64* %_j6264
  %_ptr6301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6303, i32 0, i32 1, i64 %_j6304
  %_resPtr6302 = load i64, i64* %_ptr6301
  %_arr6307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6240
  %_i6308 = load i64, i64* %_i6255
  %_ptr6305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6307, i32 0, i32 1, i64 %_i6308
  %_resPtr6306 = load i64, i64* %_ptr6305
  %_bop6309 = add i64 %_resPtr6302, %_resPtr6306
  %_maxarr6310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_i6311 = load i64, i64* %_i6255
  %_ptr6312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6310, i32 0, i32 1, i64 %_i6311
  store i64 %_bop6309, i64* %_ptr6312
  br label %_after6297
_else6298:
  br label %_after6297
_after6297:
  %_j6314 = load i64, i64* %_j6264
  %_bop6315 = add i64 %_j6314, 1
  store i64 %_bop6315, i64* %_j6264
  br label %_pre6270
_post6269:
  %_maxs6317 = load i64, i64* %_maxs6247
  %_maxarr6320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_i6321 = load i64, i64* %_i6255
  %_ptr6318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6320, i32 0, i32 1, i64 %_i6321
  %_resPtr6319 = load i64, i64* %_ptr6318
  %_bop6322 = icmp slt i64 %_maxs6317, %_resPtr6319
  br i1 %_bop6322, label %_if6325, label %_else6324
_if6325:
  %_maxarr6329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6245
  %_i6330 = load i64, i64* %_i6255
  %_ptr6327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6329, i32 0, i32 1, i64 %_i6330
  %_resPtr6328 = load i64, i64* %_ptr6327
  store i64 %_resPtr6328, i64* %_maxs6247
  br label %_after6323
_else6324:
  br label %_after6323
_after6323:
  %_i6332 = load i64, i64* %_i6255
  %_bop6333 = add i64 %_i6332, 1
  store i64 %_bop6333, i64* %_i6255
  br label %_pre6261
_post6260:
  %_maxs6335 = load i64, i64* %_maxs6247
  ret i64 %_maxs6335
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array6229 = alloca { i64, [0 x i64] }*
  %_max_ans6233 = alloca i64
  %_argc6208 = alloca i64
  %_argv6210 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6210
  store i64 %argc, i64* %_argc6208
  %_raw_array6213 = call i64* @oat_alloc_array(i64 7)
  %_array6214 = bitcast i64* %_raw_array6213 to { i64, [0 x i64] }*
  %_gep6215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep6215
  %_gep6217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 1
  store i64 101, i64* %_gep6217
  %_gep6219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep6219
  %_gep6221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep6221
  %_gep6223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 4
  store i64 101, i64* %_gep6223
  %_gep6225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 5
  store i64 4, i64* %_gep6225
  %_gep6227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6214, i32 0, i32 1, i32 6
  store i64 5, i64* %_gep6227
  store { i64, [0 x i64] }* %_array6214, { i64, [0 x i64] }** %_array6229
  %_array6231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6229
  %_id6232 = call i64 @maxsum({ i64, [0 x i64] }* %_array6231, i64 7)
  store i64 %_id6232, i64* %_max_ans6233
  %_max_ans6235 = load i64, i64* %_max_ans6233
  ret i64 %_max_ans6235
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
