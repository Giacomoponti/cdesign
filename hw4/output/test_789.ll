; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_arr5353 to { i64, [0 x i1] }*)
@_arr5353 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 0, i1 1, i1 0, i1 1 ] }

define i1 @xor(i1 %x, i1 %y) {
  %_x5339 = alloca i1
  %_y5341 = alloca i1
  store i1 %y, i1* %_y5341
  store i1 %x, i1* %_x5339
  %_x5344 = load i1, i1* %_x5342
  %_y5345 = load i1, i1* %_y5343
  %_uop5346 = icmp eq i1 %_y5345, 0
  %_bop5347 = and i1 %_x5344, %_uop5346
  %_x5348 = load i1, i1* %_x5342
  %_uop5349 = icmp eq i1 %_x5348, 0
  %_y5350 = load i1, i1* %_y5343
  %_bop5351 = and i1 %_uop5349, %_y5350
  %_bop5352 = or i1 %_bop5347, %_bop5351
  ret i1 %_bop5352
}

define i8* @string_of_bool(i1 %b) {
  %_b5331 = alloca i1
  store i1 %b, i1* %_b5331
  %_b5333 = load i1, i1* %_b5332
  br i1 %_b5333, label %_if5336, label %_else5335
_if5336:
  ret void null
_else5335:
  ret void null
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_i5312 = alloca i64
  %_lfsr_register5307 = alloca { i64, [0 x i1] }*
  %_len5309 = alloca i64
  store i64 %len, i64* %_len5309
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register5307
  store i64 0, i64* %_i5312
  br label %_pre5318
_pre5318:
  %_cnd5320 = icmp eq i1 %_bop5316, 0
  br i1 %_cnd5320, label %_post5317, label %_body5319
_body5319:
  %_i5314 = load i64, i64* %_i5312
  %_len5315 = load i64, i64* %_len5311
  %_bop5316 = icmp slt i64 %_i5314, %_len5315
  %_lfsr_register5323 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5310
  %_i5324 = load i64, i64* %_i5312
  %_ptr5321 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5323, i32 0, i32 1, i64 %_i5324
  %_resPtr5322 = load i1, i1* %_ptr5321
  %_id5325 = call i8* @string_of_bool(i1 %_resPtr5322)
  call void @print_string(i8* %_id5325)
  %_i5327 = load i64, i64* %_i5312
  %_bop5328 = add i64 %_i5327, 1
  store i64 %_bop5328, i64* %_i5312
  br label %_pre5318
_post5317:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_lfsr_register5226 = alloca { i64, [0 x i1] }*
  %_i5228 = alloca i64
  %_i5248 = alloca i64
  %_new_first5268 = alloca i1
  %_j5272 = alloca i64
  %_argc5218 = alloca i64
  %_argv5220 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5220
  store i64 %argc, i64* %_argc5218
  %_lfsr_length5223 = load i64, i64* @lfsr_length
  %_raw_array5224 = call i64* @oat_alloc_array(i64 %_lfsr_length5223)
  %_array5225 = bitcast i64* %_raw_array5224 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5225, { i64, [0 x i1] }** %_lfsr_register5226
  store i64 0, i64* %_i5228
  br label %_pre5234
_pre5234:
  %_cnd5236 = icmp eq i1 %_bop5232, 0
  br i1 %_cnd5236, label %_post5233, label %_body5235
_body5235:
  %_i5230 = load i64, i64* %_i5228
  %_lfsr_length5231 = load i64, i64* @lfsr_length
  %_bop5232 = icmp slt i64 %_i5230, %_lfsr_length5231
  %_lfsr_init_values5239 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_i5240 = load i64, i64* %_i5228
  %_ptr5237 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_init_values5239, i32 0, i32 1, i64 %_i5240
  %_resPtr5238 = load i1, i1* %_ptr5237
  %_lfsr_register5241 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_i5242 = load i64, i64* %_i5228
  %_ptr5243 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5241, i32 0, i32 1, i64 %_i5242
  store i1 %_resPtr5238, i1* %_ptr5243
  %_i5245 = load i64, i64* %_i5228
  %_bop5246 = add i64 %_i5245, 1
  store i64 %_bop5246, i64* %_i5228
  br label %_pre5234
_post5233:
  store i64 0, i64* %_i5248
  br label %_pre5254
_pre5254:
  %_cnd5256 = icmp eq i1 %_bop5252, 0
  br i1 %_cnd5256, label %_post5253, label %_body5255
_body5255:
  %_i5250 = load i64, i64* %_i5248
  %_lfsr_iterations5251 = load i64, i64* @lfsr_iterations
  %_bop5252 = icmp slt i64 %_i5250, %_lfsr_iterations5251
  %_lfsr_register5259 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_lfsr_length5260 = load i64, i64* @lfsr_length
  %_bop5261 = sub i64 %_lfsr_length5260, 1
  %_ptr5257 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5259, i32 0, i32 1, i64 %_bop5261
  %_resPtr5258 = load i1, i1* %_ptr5257
  %_lfsr_register5264 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_lfsr_length5265 = load i64, i64* @lfsr_length
  %_bop5266 = sub i64 %_lfsr_length5265, 2
  %_ptr5262 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5264, i32 0, i32 1, i64 %_bop5266
  %_resPtr5263 = load i1, i1* %_ptr5262
  %_id5267 = call i1 @xor(i1 %_resPtr5258, i1 %_resPtr5263)
  store i1 %_id5267, i1* %_new_first5268
  %_lfsr_length5270 = load i64, i64* @lfsr_length
  %_bop5271 = sub i64 %_lfsr_length5270, 1
  store i64 %_bop5271, i64* %_j5272
  br label %_pre5277
_pre5277:
  %_cnd5279 = icmp eq i1 %_bop5275, 0
  br i1 %_cnd5279, label %_post5276, label %_body5278
_body5278:
  %_j5274 = load i64, i64* %_j5272
  %_bop5275 = icmp sgt i64 %_j5274, 0
  %_lfsr_register5282 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_j5283 = load i64, i64* %_j5272
  %_bop5284 = sub i64 %_j5283, 1
  %_ptr5280 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5282, i32 0, i32 1, i64 %_bop5284
  %_resPtr5281 = load i1, i1* %_ptr5280
  %_lfsr_register5285 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_j5286 = load i64, i64* %_j5272
  %_ptr5287 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5285, i32 0, i32 1, i64 %_j5286
  store i1 %_resPtr5281, i1* %_ptr5287
  %_j5289 = load i64, i64* %_j5272
  %_bop5290 = sub i64 %_j5289, 1
  store i64 %_bop5290, i64* %_j5272
  br label %_pre5277
_post5276:
  %_new_first5292 = load i1, i1* %_new_first5268
  %_lfsr_register5293 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_ptr5294 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5293, i32 0, i32 1, i32 0
  store i1 %_new_first5292, i1* %_ptr5294
  %_i5296 = load i64, i64* %_i5248
  %_bop5297 = add i64 %_i5296, 1
  store i64 %_bop5297, i64* %_i5248
  br label %_pre5254
_post5253:
  %_lfsr_init_values5299 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_lfsr_length5300 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_init_values5299, i64 %_lfsr_length5300)
  call void @print_string(void null)
  %_lfsr_register5303 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5226
  %_lfsr_length5304 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5303, i64 %_lfsr_length5304)
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
