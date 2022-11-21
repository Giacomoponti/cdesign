; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_maxarr6261 = alloca { i64, [0 x i64] }*
  %_maxs6263 = alloca i64
  %_i6271 = alloca i64
  %_j6280 = alloca i64
  %_arr6255 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr6255
  %_size6257 = alloca i64
  store i64 %size, i64* %_size6257
  %_size6258 = load i64, i64* %_size6257
  %_raw_array6259 = call i64* @oat_alloc_array(i64 %_size6258)
  %_array6260 = bitcast i64* %_raw_array6259 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6260, { i64, [0 x i64] }** %_maxarr6261
  store i64 0, i64* %_maxs6263
  %_arr6267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6255
  %_ptr6265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6267, i32 0, i32 1, i32 0
  %_resPtr6266 = load i64, i64* %_ptr6265
  %_maxarr6268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_ptr6269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6268, i32 0, i32 1, i32 0
  store i64 %_resPtr6266, i64* %_ptr6269
  store i64 0, i64* %_i6271
  br label %_pre6277
_pre6277:
  %_i6273 = load i64, i64* %_i6271
  %_size6274 = load i64, i64* %_size6257
  %_bop6275 = icmp slt i64 %_i6273, %_size6274
  %_cnd6279 = icmp eq i1 %_bop6275, 0
  br i1 %_cnd6279, label %_post6276, label %_body6278
_body6278:
  store i64 0, i64* %_j6280
  br label %_pre6286
_pre6286:
  %_j6282 = load i64, i64* %_j6280
  %_i6283 = load i64, i64* %_i6271
  %_bop6284 = icmp slt i64 %_j6282, %_i6283
  %_cnd6288 = icmp eq i1 %_bop6284, 0
  br i1 %_cnd6288, label %_post6285, label %_body6287
_body6287:
  %_arr6291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6255
  %_i6292 = load i64, i64* %_i6271
  %_ptr6289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6291, i32 0, i32 1, i64 %_i6292
  %_resPtr6290 = load i64, i64* %_ptr6289
  %_arr6295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6255
  %_j6296 = load i64, i64* %_j6280
  %_ptr6293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6295, i32 0, i32 1, i64 %_j6296
  %_resPtr6294 = load i64, i64* %_ptr6293
  %_bop6297 = icmp sgt i64 %_resPtr6290, %_resPtr6294
  %_maxarr6300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_i6301 = load i64, i64* %_i6271
  %_ptr6298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6300, i32 0, i32 1, i64 %_i6301
  %_resPtr6299 = load i64, i64* %_ptr6298
  %_maxarr6304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_j6305 = load i64, i64* %_j6280
  %_ptr6302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6304, i32 0, i32 1, i64 %_j6305
  %_resPtr6303 = load i64, i64* %_ptr6302
  %_arr6308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6255
  %_i6309 = load i64, i64* %_i6271
  %_ptr6306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6308, i32 0, i32 1, i64 %_i6309
  %_resPtr6307 = load i64, i64* %_ptr6306
  %_bop6310 = add i64 %_resPtr6303, %_resPtr6307
  %_bop6311 = icmp slt i64 %_resPtr6299, %_bop6310
  %_bop6312 = and i1 %_bop6297, %_bop6311
  br i1 %_bop6312, label %_if6315, label %_else6314
_if6315:
  %_maxarr6319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_j6320 = load i64, i64* %_j6280
  %_ptr6317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6319, i32 0, i32 1, i64 %_j6320
  %_resPtr6318 = load i64, i64* %_ptr6317
  %_arr6323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6255
  %_i6324 = load i64, i64* %_i6271
  %_ptr6321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6323, i32 0, i32 1, i64 %_i6324
  %_resPtr6322 = load i64, i64* %_ptr6321
  %_bop6325 = add i64 %_resPtr6318, %_resPtr6322
  %_maxarr6326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_i6327 = load i64, i64* %_i6271
  %_ptr6328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6326, i32 0, i32 1, i64 %_i6327
  store i64 %_bop6325, i64* %_ptr6328
  br label %_after6313
_else6314:
  br label %_after6313
_after6313:
  %_j6330 = load i64, i64* %_j6280
  %_bop6331 = add i64 %_j6330, 1
  store i64 %_bop6331, i64* %_j6280
  br label %_pre6286
_post6285:
  %_maxs6333 = load i64, i64* %_maxs6263
  %_maxarr6336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_i6337 = load i64, i64* %_i6271
  %_ptr6334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6336, i32 0, i32 1, i64 %_i6337
  %_resPtr6335 = load i64, i64* %_ptr6334
  %_bop6338 = icmp slt i64 %_maxs6333, %_resPtr6335
  br i1 %_bop6338, label %_if6341, label %_else6340
_if6341:
  %_maxarr6345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6261
  %_i6346 = load i64, i64* %_i6271
  %_ptr6343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6345, i32 0, i32 1, i64 %_i6346
  %_resPtr6344 = load i64, i64* %_ptr6343
  store i64 %_resPtr6344, i64* %_maxs6263
  br label %_after6339
_else6340:
  br label %_after6339
_after6339:
  %_i6348 = load i64, i64* %_i6271
  %_bop6349 = add i64 %_i6348, 1
  store i64 %_bop6349, i64* %_i6271
  br label %_pre6277
_post6276:
  %_maxs6351 = load i64, i64* %_maxs6263
  ret i64 %_maxs6351
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array6247 = alloca { i64, [0 x i64] }*
  %_max_ans6251 = alloca i64
  %_argc6228 = alloca i64
  store i64 %argc, i64* %_argc6228
  %_argv6230 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6230
  %_raw_array6231 = call i64* @oat_alloc_array(i64 7)
  %_array6232 = bitcast i64* %_raw_array6231 to { i64, [0 x i64] }*
  %_gep6233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep6233
  %_gep6235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 1
  store i64 101, i64* %_gep6235
  %_gep6237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep6237
  %_gep6239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep6239
  %_gep6241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 4
  store i64 101, i64* %_gep6241
  %_gep6243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 5
  store i64 4, i64* %_gep6243
  %_gep6245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6232, i32 0, i32 1, i32 6
  store i64 5, i64* %_gep6245
  store { i64, [0 x i64] }* %_array6232, { i64, [0 x i64] }** %_array6247
  %_array6249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6247
  %_6250 = call i64 @maxsum({ i64, [0 x i64] }* %_array6249, i64 7)
  store i64 %_6250, i64* %_max_ans6251
  %_max_ans6253 = load i64, i64* %_max_ans6251
  ret i64 %_max_ans6253
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
