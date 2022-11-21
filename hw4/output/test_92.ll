; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_s4353 = global [9 x i8] c"Correct!\00"
@_s4354 = global i8* bitcast ([9 x i8]* @_s4353 to i8*)

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_quotient4425 = alloca i64
  %_remainder4428 = alloca i64
  %_numerator4411 = alloca i64
  store i64 %numerator, i64* %_numerator4411
  %_denominator4413 = alloca i64
  store i64 %denominator, i64* %_denominator4413
  %_denominator4414 = load i64, i64* %_denominator4413
  %_bop4415 = icmp slt i64 %_denominator4414, 0
  br i1 %_bop4415, label %_if4418, label %_else4417
_if4418:
  %_numerator4420 = load i64, i64* %_numerator4411
  %_denominator4421 = load i64, i64* %_denominator4413
  %_uop4422 = mul i64 %_denominator4421, -1
  %_4423 = call i64 @euclid_division(i64 %_numerator4420, i64 %_uop4422)
  %_uop4424 = mul i64 %_4423, -1
  ret i64 %_uop4424
_else4417:
  br label %_after4416
_after4416:
  store i64 0, i64* %_quotient4425
  %_numerator4427 = load i64, i64* %_numerator4411
  store i64 %_numerator4427, i64* %_remainder4428
  %_numerator4430 = load i64, i64* %_numerator4411
  %_bop4431 = icmp slt i64 %_numerator4430, 0
  br i1 %_bop4431, label %_if4434, label %_else4433
_if4434:
  %_numerator4436 = load i64, i64* %_numerator4411
  %_uop4437 = mul i64 %_numerator4436, -1
  store i64 %_uop4437, i64* %_remainder4428
  br label %_pre4443
_pre4443:
  %_remainder4439 = load i64, i64* %_remainder4428
  %_denominator4440 = load i64, i64* %_denominator4413
  %_bop4441 = icmp sge i64 %_remainder4439, %_denominator4440
  %_cnd4445 = icmp eq i1 %_bop4441, 0
  br i1 %_cnd4445, label %_post4442, label %_body4444
_body4444:
  %_quotient4446 = load i64, i64* %_quotient4425
  %_bop4447 = add i64 %_quotient4446, 1
  store i64 %_bop4447, i64* %_quotient4425
  %_remainder4449 = load i64, i64* %_remainder4428
  %_denominator4450 = load i64, i64* %_denominator4413
  %_bop4451 = sub i64 %_remainder4449, %_denominator4450
  store i64 %_bop4451, i64* %_remainder4428
  br label %_pre4443
_post4442:
  %_remainder4453 = load i64, i64* %_remainder4428
  %_bop4454 = icmp eq i64 %_remainder4453, 0
  br i1 %_bop4454, label %_if4457, label %_else4456
_if4457:
  %_quotient4462 = load i64, i64* %_quotient4425
  %_uop4463 = mul i64 %_quotient4462, -1
  ret i64 %_uop4463
_else4456:
  %_quotient4459 = load i64, i64* %_quotient4425
  %_uop4460 = mul i64 %_quotient4459, -1
  %_bop4461 = sub i64 %_uop4460, 1
  ret i64 %_bop4461
_after4455:
  br label %_after4432
_else4433:
  br label %_after4432
_after4432:
  br label %_pre4468
_pre4468:
  %_remainder4464 = load i64, i64* %_remainder4428
  %_denominator4465 = load i64, i64* %_denominator4413
  %_bop4466 = icmp sge i64 %_remainder4464, %_denominator4465
  %_cnd4470 = icmp eq i1 %_bop4466, 0
  br i1 %_cnd4470, label %_post4467, label %_body4469
_body4469:
  %_quotient4471 = load i64, i64* %_quotient4425
  %_bop4472 = add i64 %_quotient4471, 1
  store i64 %_bop4472, i64* %_quotient4425
  %_remainder4474 = load i64, i64* %_remainder4428
  %_denominator4475 = load i64, i64* %_denominator4413
  %_bop4476 = sub i64 %_remainder4474, %_denominator4475
  store i64 %_bop4476, i64* %_remainder4428
  br label %_pre4468
_post4467:
  %_quotient4478 = load i64, i64* %_quotient4425
  ret i64 %_quotient4478
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_midpt4376 = alloca i64
  %_input4358 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4358
  %_key4360 = alloca i64
  store i64 %key, i64* %_key4360
  %_min4362 = alloca i64
  store i64 %min, i64* %_min4362
  %_max4364 = alloca i64
  store i64 %max, i64* %_max4364
  %_max4365 = load i64, i64* %_max4364
  %_min4366 = load i64, i64* %_min4362
  %_bop4367 = icmp slt i64 %_max4365, %_min4366
  br i1 %_bop4367, label %_if4370, label %_else4369
_if4370:
  ret i1 0
_else4369:
  br label %_after4368
_after4368:
  %_max4372 = load i64, i64* %_max4364
  %_min4373 = load i64, i64* %_min4362
  %_bop4374 = add i64 %_max4372, %_min4373
  %_4375 = call i64 @euclid_division(i64 %_bop4374, i64 2)
  store i64 %_4375, i64* %_midpt4376
  %_input4380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4358
  %_midpt4381 = load i64, i64* %_midpt4376
  %_ptr4378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4380, i32 0, i32 1, i64 %_midpt4381
  %_resPtr4379 = load i64, i64* %_ptr4378
  %_key4382 = load i64, i64* %_key4360
  %_bop4383 = icmp sgt i64 %_resPtr4379, %_key4382
  br i1 %_bop4383, label %_if4386, label %_else4385
_if4386:
  %_input4388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4358
  %_key4389 = load i64, i64* %_key4360
  %_min4390 = load i64, i64* %_min4362
  %_midpt4391 = load i64, i64* %_midpt4376
  %_bop4392 = sub i64 %_midpt4391, 1
  %_4393 = call i1 @binary_search({ i64, [0 x i64] }* %_input4388, i64 %_key4389, i64 %_min4390, i64 %_bop4392)
  ret i1 %_4393
_else4385:
  br label %_after4384
_after4384:
  %_input4396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4358
  %_midpt4397 = load i64, i64* %_midpt4376
  %_ptr4394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4396, i32 0, i32 1, i64 %_midpt4397
  %_resPtr4395 = load i64, i64* %_ptr4394
  %_key4398 = load i64, i64* %_key4360
  %_bop4399 = icmp slt i64 %_resPtr4395, %_key4398
  br i1 %_bop4399, label %_if4402, label %_else4401
_if4402:
  %_input4404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4358
  %_key4405 = load i64, i64* %_key4360
  %_midpt4406 = load i64, i64* %_midpt4376
  %_bop4407 = add i64 %_midpt4406, 1
  %_max4408 = load i64, i64* %_max4364
  %_4409 = call i1 @binary_search({ i64, [0 x i64] }* %_input4404, i64 %_key4405, i64 %_bop4407, i64 %_max4408)
  ret i1 %_4409
_else4401:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_test_array4313 = alloca { i64, [0 x i64] }*
  %_i4315 = alloca i64
  %_even4335 = alloca i1
  %_odd4339 = alloca i1
  %_argc4308 = alloca i64
  store i64 %argc, i64* %_argc4308
  %_argv4310 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4310
  %_raw_array4311 = call i64* @oat_alloc_array(i64 100)
  %_array4312 = bitcast i64* %_raw_array4311 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4312, { i64, [0 x i64] }** %_test_array4313
  store i64 0, i64* %_i4315
  br label %_pre4320
_pre4320:
  %_i4317 = load i64, i64* %_i4315
  %_bop4318 = icmp slt i64 %_i4317, 100
  %_cnd4322 = icmp eq i1 %_bop4318, 0
  br i1 %_cnd4322, label %_post4319, label %_body4321
_body4321:
  %_i4323 = load i64, i64* %_i4315
  %_bop4324 = mul i64 2, %_i4323
  %_bop4325 = add i64 %_bop4324, 1
  %_test_array4326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4313
  %_i4327 = load i64, i64* %_i4315
  %_ptr4328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4326, i32 0, i32 1, i64 %_i4327
  store i64 %_bop4325, i64* %_ptr4328
  %_i4330 = load i64, i64* %_i4315
  %_bop4331 = add i64 %_i4330, 1
  store i64 %_bop4331, i64* %_i4315
  br label %_pre4320
_post4319:
  %_test_array4333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4313
  %_4334 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4333, i64 80, i64 0, i64 99)
  store i1 %_4334, i1* %_even4335
  %_test_array4337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4313
  %_4338 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4337, i64 81, i64 0, i64 99)
  store i1 %_4338, i1* %_odd4339
  %_even4341 = load i1, i1* %_even4335
  %_odd4342 = load i1, i1* %_odd4339
  %_bop4343 = and i1 %_even4341, %_odd4342
  %_uop4344 = icmp eq i1 %_bop4343, 0
  %_even4345 = load i1, i1* %_even4335
  %_odd4346 = load i1, i1* %_odd4339
  %_bop4347 = or i1 %_even4345, %_odd4346
  %_bop4348 = and i1 %_uop4344, %_bop4347
  br i1 %_bop4348, label %_if4351, label %_else4350
_if4351:
  %_tmp4355 = load i8*, i8** @_s4354
  call void @print_string(i8* %_tmp4355)
  br label %_after4349
_else4350:
  br label %_after4349
_after4349:
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
