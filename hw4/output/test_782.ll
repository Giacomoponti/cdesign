; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_quotient4354 = alloca i64
  %_remainder4357 = alloca i64
  %_numerator4338 = alloca i64
  %_denominator4340 = alloca i64
  store i64 %denominator, i64* %_denominator4340
  store i64 %numerator, i64* %_numerator4338
  %_denominator4343 = load i64, i64* %_denominator4342
  %_bop4344 = icmp slt i64 %_denominator4343, 0
  br i1 %_bop4344, label %_if4347, label %_else4346
_if4347:
  %_numerator4349 = load i64, i64* %_numerator4341
  %_denominator4350 = load i64, i64* %_denominator4342
  %_uop4351 = mul i64 %_denominator4350, -1
  %_id4352 = call i64 @euclid_division(i64 %_numerator4349, i64 %_uop4351)
  %_uop4353 = mul i64 %_id4352, -1
  ret i64 %_uop4353
_else4346:
  br label %_after4345
_after4345:
  store i64 0, i64* %_quotient4354
  %_numerator4356 = load i64, i64* %_numerator4341
  store i64 %_numerator4356, i64* %_remainder4357
  %_numerator4359 = load i64, i64* %_numerator4341
  %_bop4360 = icmp slt i64 %_numerator4359, 0
  br i1 %_bop4360, label %_if4363, label %_else4362
_if4363:
  %_numerator4365 = load i64, i64* %_numerator4341
  %_uop4366 = mul i64 %_numerator4365, -1
  store i64 %_uop4366, i64* %_remainder4357
  br label %_pre4372
_pre4372:
  %_cnd4374 = icmp eq i1 %_bop4370, 0
  br i1 %_cnd4374, label %_post4371, label %_body4373
_body4373:
  %_remainder4368 = load i64, i64* %_remainder4357
  %_denominator4369 = load i64, i64* %_denominator4342
  %_bop4370 = icmp sge i64 %_remainder4368, %_denominator4369
  %_quotient4375 = load i64, i64* %_quotient4354
  %_bop4376 = add i64 %_quotient4375, 1
  store i64 %_bop4376, i64* %_quotient4354
  %_remainder4378 = load i64, i64* %_remainder4357
  %_denominator4379 = load i64, i64* %_denominator4342
  %_bop4380 = sub i64 %_remainder4378, %_denominator4379
  store i64 %_bop4380, i64* %_remainder4357
  br label %_pre4372
_post4371:
  %_remainder4382 = load i64, i64* %_remainder4357
  %_bop4383 = icmp eq i64 %_remainder4382, 0
  br i1 %_bop4383, label %_if4386, label %_else4385
_if4386:
  %_quotient4391 = load i64, i64* %_quotient4354
  %_uop4392 = mul i64 %_quotient4391, -1
  ret i64 %_uop4392
_else4385:
  %_quotient4388 = load i64, i64* %_quotient4354
  %_uop4389 = mul i64 %_quotient4388, -1
  %_bop4390 = sub i64 %_uop4389, 1
  ret i64 %_bop4390
_after4384:
  br label %_after4361
_else4362:
  br label %_after4361
_after4361:
  br label %_pre4397
_pre4397:
  %_cnd4399 = icmp eq i1 %_bop4395, 0
  br i1 %_cnd4399, label %_post4396, label %_body4398
_body4398:
  %_remainder4393 = load i64, i64* %_remainder4357
  %_denominator4394 = load i64, i64* %_denominator4342
  %_bop4395 = icmp sge i64 %_remainder4393, %_denominator4394
  %_quotient4400 = load i64, i64* %_quotient4354
  %_bop4401 = add i64 %_quotient4400, 1
  store i64 %_bop4401, i64* %_quotient4354
  %_remainder4403 = load i64, i64* %_remainder4357
  %_denominator4404 = load i64, i64* %_denominator4342
  %_bop4405 = sub i64 %_remainder4403, %_denominator4404
  store i64 %_bop4405, i64* %_remainder4357
  br label %_pre4397
_post4396:
  %_quotient4407 = load i64, i64* %_quotient4354
  ret i64 %_quotient4407
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_midpt4303 = alloca i64
  %_input4281 = alloca { i64, [0 x i64] }*
  %_key4283 = alloca i64
  %_min4285 = alloca i64
  %_max4287 = alloca i64
  store i64 %max, i64* %_max4287
  store i64 %min, i64* %_min4285
  store i64 %key, i64* %_key4283
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4281
  %_max4292 = load i64, i64* %_max4291
  %_min4293 = load i64, i64* %_min4290
  %_bop4294 = icmp slt i64 %_max4292, %_min4293
  br i1 %_bop4294, label %_if4297, label %_else4296
_if4297:
  ret i1 0
_else4296:
  br label %_after4295
_after4295:
  %_max4299 = load i64, i64* %_max4291
  %_min4300 = load i64, i64* %_min4290
  %_bop4301 = add i64 %_max4299, %_min4300
  %_id4302 = call i64 @euclid_division(i64 %_bop4301, i64 2)
  store i64 %_id4302, i64* %_midpt4303
  %_input4307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4288
  %_midpt4308 = load i64, i64* %_midpt4303
  %_ptr4305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4307, i32 0, i32 1, i64 %_midpt4308
  %_resPtr4306 = load i64, i64* %_ptr4305
  %_key4309 = load i64, i64* %_key4289
  %_bop4310 = icmp sgt i64 %_resPtr4306, %_key4309
  br i1 %_bop4310, label %_if4313, label %_else4312
_if4313:
  %_input4315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4288
  %_key4316 = load i64, i64* %_key4289
  %_min4317 = load i64, i64* %_min4290
  %_midpt4318 = load i64, i64* %_midpt4303
  %_bop4319 = sub i64 %_midpt4318, 1
  %_id4320 = call i1 @binary_search({ i64, [0 x i64] }* %_input4315, i64 %_key4316, i64 %_min4317, i64 %_bop4319)
  ret i1 %_id4320
_else4312:
  br label %_after4311
_after4311:
  %_input4323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4288
  %_midpt4324 = load i64, i64* %_midpt4303
  %_ptr4321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4323, i32 0, i32 1, i64 %_midpt4324
  %_resPtr4322 = load i64, i64* %_ptr4321
  %_key4325 = load i64, i64* %_key4289
  %_bop4326 = icmp slt i64 %_resPtr4322, %_key4325
  br i1 %_bop4326, label %_if4329, label %_else4328
_if4329:
  %_input4331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4288
  %_key4332 = load i64, i64* %_key4289
  %_midpt4333 = load i64, i64* %_midpt4303
  %_bop4334 = add i64 %_midpt4333, 1
  %_max4335 = load i64, i64* %_max4291
  %_id4336 = call i1 @binary_search({ i64, [0 x i64] }* %_input4331, i64 %_key4332, i64 %_bop4334, i64 %_max4335)
  ret i1 %_id4336
_else4328:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_test_array4239 = alloca { i64, [0 x i64] }*
  %_i4241 = alloca i64
  %_even4261 = alloca i1
  %_odd4265 = alloca i1
  %_argc4232 = alloca i64
  %_argv4234 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4234
  store i64 %argc, i64* %_argc4232
  %_raw_array4237 = call i64* @oat_alloc_array(i64 100)
  %_array4238 = bitcast i64* %_raw_array4237 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4238, { i64, [0 x i64] }** %_test_array4239
  store i64 0, i64* %_i4241
  br label %_pre4246
_pre4246:
  %_cnd4248 = icmp eq i1 %_bop4244, 0
  br i1 %_cnd4248, label %_post4245, label %_body4247
_body4247:
  %_i4243 = load i64, i64* %_i4241
  %_bop4244 = icmp slt i64 %_i4243, 100
  %_i4249 = load i64, i64* %_i4241
  %_bop4250 = mul i64 2, %_i4249
  %_bop4251 = add i64 %_bop4250, 1
  %_test_array4252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4239
  %_i4253 = load i64, i64* %_i4241
  %_ptr4254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4252, i32 0, i32 1, i64 %_i4253
  store i64 %_bop4251, i64* %_ptr4254
  %_i4256 = load i64, i64* %_i4241
  %_bop4257 = add i64 %_i4256, 1
  store i64 %_bop4257, i64* %_i4241
  br label %_pre4246
_post4245:
  %_test_array4259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4239
  %_id4260 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4259, i64 80, i64 0, i64 99)
  store i1 %_id4260, i1* %_even4261
  %_test_array4263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4239
  %_id4264 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4263, i64 81, i64 0, i64 99)
  store i1 %_id4264, i1* %_odd4265
  %_even4267 = load i1, i1* %_even4261
  %_odd4268 = load i1, i1* %_odd4265
  %_bop4269 = and i1 %_even4267, %_odd4268
  %_uop4270 = icmp eq i1 %_bop4269, 0
  %_even4271 = load i1, i1* %_even4261
  %_odd4272 = load i1, i1* %_odd4265
  %_bop4273 = or i1 %_even4271, %_odd4272
  %_bop4274 = and i1 %_uop4270, %_bop4273
  br i1 %_bop4274, label %_if4277, label %_else4276
_if4277:
  call void @print_string(void null)
  br label %_after4275
_else4276:
  br label %_after4275
_after4275:
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
