; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_s4333 = global [9 x i8] c"Correct!\00"
@_s14334 = global i8* bitcast ([9 x i8]* @_s4333 to i8*)

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_quotient4411 = alloca i64
  %_remainder4414 = alloca i64
  %_numerator4395 = alloca i64
  %_denominator4397 = alloca i64
  store i64 %denominator, i64* %_denominator4397
  store i64 %numerator, i64* %_numerator4395
  %_denominator4400 = load i64, i64* %_denominator4399
  %_bop4401 = icmp slt i64 %_denominator4400, 0
  br i1 %_bop4401, label %_if4404, label %_else4403
_if4404:
  %_numerator4406 = load i64, i64* %_numerator4398
  %_denominator4407 = load i64, i64* %_denominator4399
  %_uop4408 = mul i64 %_denominator4407, -1
  %_id4409 = call i64 @euclid_division(i64 %_numerator4406, i64 %_uop4408)
  %_uop4410 = mul i64 %_id4409, -1
  ret i64 %_uop4410
_else4403:
  br label %_after4402
_after4402:
  store i64 0, i64* %_quotient4411
  %_numerator4413 = load i64, i64* %_numerator4398
  store i64 %_numerator4413, i64* %_remainder4414
  %_numerator4416 = load i64, i64* %_numerator4398
  %_bop4417 = icmp slt i64 %_numerator4416, 0
  br i1 %_bop4417, label %_if4420, label %_else4419
_if4420:
  %_numerator4422 = load i64, i64* %_numerator4398
  %_uop4423 = mul i64 %_numerator4422, -1
  store i64 %_uop4423, i64* %_remainder4414
  br label %_pre4429
_pre4429:
  %_remainder4425 = load i64, i64* %_remainder4414
  %_denominator4426 = load i64, i64* %_denominator4399
  %_bop4427 = icmp sge i64 %_remainder4425, %_denominator4426
  %_cnd4431 = icmp eq i1 %_bop4427, 0
  br i1 %_cnd4431, label %_post4428, label %_body4430
_body4430:
  %_quotient4432 = load i64, i64* %_quotient4411
  %_bop4433 = add i64 %_quotient4432, 1
  store i64 %_bop4433, i64* %_quotient4411
  %_remainder4435 = load i64, i64* %_remainder4414
  %_denominator4436 = load i64, i64* %_denominator4399
  %_bop4437 = sub i64 %_remainder4435, %_denominator4436
  store i64 %_bop4437, i64* %_remainder4414
  br label %_pre4429
_post4428:
  %_remainder4439 = load i64, i64* %_remainder4414
  %_bop4440 = icmp eq i64 %_remainder4439, 0
  br i1 %_bop4440, label %_if4443, label %_else4442
_if4443:
  %_quotient4448 = load i64, i64* %_quotient4411
  %_uop4449 = mul i64 %_quotient4448, -1
  ret i64 %_uop4449
_else4442:
  %_quotient4445 = load i64, i64* %_quotient4411
  %_uop4446 = mul i64 %_quotient4445, -1
  %_bop4447 = sub i64 %_uop4446, 1
  ret i64 %_bop4447
_after4441:
  br label %_after4418
_else4419:
  br label %_after4418
_after4418:
  br label %_pre4454
_pre4454:
  %_remainder4450 = load i64, i64* %_remainder4414
  %_denominator4451 = load i64, i64* %_denominator4399
  %_bop4452 = icmp sge i64 %_remainder4450, %_denominator4451
  %_cnd4456 = icmp eq i1 %_bop4452, 0
  br i1 %_cnd4456, label %_post4453, label %_body4455
_body4455:
  %_quotient4457 = load i64, i64* %_quotient4411
  %_bop4458 = add i64 %_quotient4457, 1
  store i64 %_bop4458, i64* %_quotient4411
  %_remainder4460 = load i64, i64* %_remainder4414
  %_denominator4461 = load i64, i64* %_denominator4399
  %_bop4462 = sub i64 %_remainder4460, %_denominator4461
  store i64 %_bop4462, i64* %_remainder4414
  br label %_pre4454
_post4453:
  %_quotient4464 = load i64, i64* %_quotient4411
  ret i64 %_quotient4464
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_midpt4360 = alloca i64
  %_input4338 = alloca { i64, [0 x i64] }*
  %_key4340 = alloca i64
  %_min4342 = alloca i64
  %_max4344 = alloca i64
  store i64 %max, i64* %_max4344
  store i64 %min, i64* %_min4342
  store i64 %key, i64* %_key4340
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4338
  %_max4349 = load i64, i64* %_max4348
  %_min4350 = load i64, i64* %_min4347
  %_bop4351 = icmp slt i64 %_max4349, %_min4350
  br i1 %_bop4351, label %_if4354, label %_else4353
_if4354:
  ret i1 0
_else4353:
  br label %_after4352
_after4352:
  %_max4356 = load i64, i64* %_max4348
  %_min4357 = load i64, i64* %_min4347
  %_bop4358 = add i64 %_max4356, %_min4357
  %_id4359 = call i64 @euclid_division(i64 %_bop4358, i64 2)
  store i64 %_id4359, i64* %_midpt4360
  %_input4364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4345
  %_midpt4365 = load i64, i64* %_midpt4360
  %_ptr4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4364, i32 0, i32 1, i64 %_midpt4365
  %_resPtr4363 = load i64, i64* %_ptr4362
  %_key4366 = load i64, i64* %_key4346
  %_bop4367 = icmp sgt i64 %_resPtr4363, %_key4366
  br i1 %_bop4367, label %_if4370, label %_else4369
_if4370:
  %_input4372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4345
  %_key4373 = load i64, i64* %_key4346
  %_min4374 = load i64, i64* %_min4347
  %_midpt4375 = load i64, i64* %_midpt4360
  %_bop4376 = sub i64 %_midpt4375, 1
  %_id4377 = call i1 @binary_search({ i64, [0 x i64] }* %_input4372, i64 %_key4373, i64 %_min4374, i64 %_bop4376)
  ret i1 %_id4377
_else4369:
  br label %_after4368
_after4368:
  %_input4380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4345
  %_midpt4381 = load i64, i64* %_midpt4360
  %_ptr4378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4380, i32 0, i32 1, i64 %_midpt4381
  %_resPtr4379 = load i64, i64* %_ptr4378
  %_key4382 = load i64, i64* %_key4346
  %_bop4383 = icmp slt i64 %_resPtr4379, %_key4382
  br i1 %_bop4383, label %_if4386, label %_else4385
_if4386:
  %_input4388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4345
  %_key4389 = load i64, i64* %_key4346
  %_midpt4390 = load i64, i64* %_midpt4360
  %_bop4391 = add i64 %_midpt4390, 1
  %_max4392 = load i64, i64* %_max4348
  %_id4393 = call i1 @binary_search({ i64, [0 x i64] }* %_input4388, i64 %_key4389, i64 %_bop4391, i64 %_max4392)
  ret i1 %_id4393
_else4385:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_test_array4293 = alloca { i64, [0 x i64] }*
  %_i4295 = alloca i64
  %_even4315 = alloca i1
  %_odd4319 = alloca i1
  %_argc4286 = alloca i64
  %_argv4288 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4288
  store i64 %argc, i64* %_argc4286
  %_raw_array4291 = call i64* @oat_alloc_array(i64 100)
  %_array4292 = bitcast i64* %_raw_array4291 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4292, { i64, [0 x i64] }** %_test_array4293
  store i64 0, i64* %_i4295
  br label %_pre4300
_pre4300:
  %_i4297 = load i64, i64* %_i4295
  %_bop4298 = icmp slt i64 %_i4297, 100
  %_cnd4302 = icmp eq i1 %_bop4298, 0
  br i1 %_cnd4302, label %_post4299, label %_body4301
_body4301:
  %_i4303 = load i64, i64* %_i4295
  %_bop4304 = mul i64 2, %_i4303
  %_bop4305 = add i64 %_bop4304, 1
  %_test_array4306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4293
  %_i4307 = load i64, i64* %_i4295
  %_ptr4308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4306, i32 0, i32 1, i64 %_i4307
  store i64 %_bop4305, i64* %_ptr4308
  %_i4310 = load i64, i64* %_i4295
  %_bop4311 = add i64 %_i4310, 1
  store i64 %_bop4311, i64* %_i4295
  br label %_pre4300
_post4299:
  %_test_array4313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4293
  %_id4314 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4313, i64 80, i64 0, i64 99)
  store i1 %_id4314, i1* %_even4315
  %_test_array4317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4293
  %_id4318 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4317, i64 81, i64 0, i64 99)
  store i1 %_id4318, i1* %_odd4319
  %_even4321 = load i1, i1* %_even4315
  %_odd4322 = load i1, i1* %_odd4319
  %_bop4323 = and i1 %_even4321, %_odd4322
  %_uop4324 = icmp eq i1 %_bop4323, 0
  %_even4325 = load i1, i1* %_even4315
  %_odd4326 = load i1, i1* %_odd4319
  %_bop4327 = or i1 %_even4325, %_odd4326
  %_bop4328 = and i1 %_uop4324, %_bop4327
  br i1 %_bop4328, label %_if4331, label %_else4330
_if4331:
  %_tmp4335 = load i8*, i8** @_s14334
  call void @print_string(i8* %_tmp4335)
  br label %_after4329
_else4330:
  br label %_after4329
_after4329:
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
