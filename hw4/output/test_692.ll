; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4329 = alloca i64
  %_y4331 = alloca i64
  store i64 %y, i64* %_y4331
  store i64 %x, i64* %_x4329
  %_x4334 = load i64, i64* %_x4332
  %_y4335 = load i64, i64* %_y4333
  %_bop4336 = icmp eq i64 %_x4334, %_y4335
  br i1 %_bop4336, label %_if4339, label %_else4338
_if4339:
  %_x4341 = load i64, i64* %_x4332
  ret i64 %_x4341
_else4338:
  br label %_after4337
_after4337:
  %_x4342 = load i64, i64* %_x4332
  %_bop4343 = icmp eq i64 %_x4342, 0
  br i1 %_bop4343, label %_if4346, label %_else4345
_if4346:
  %_y4348 = load i64, i64* %_y4333
  ret i64 %_y4348
_else4345:
  br label %_after4344
_after4344:
  %_y4349 = load i64, i64* %_y4333
  %_bop4350 = icmp eq i64 %_y4349, 0
  br i1 %_bop4350, label %_if4353, label %_else4352
_if4353:
  %_x4355 = load i64, i64* %_x4332
  ret i64 %_x4355
_else4352:
  br label %_after4351
_after4351:
  %_x4356 = load i64, i64* %_x4332
  %_uop4357 = xor i64 %_x4356, -1
  %_bop4358 = and i64 %_uop4357, 1
  %_bop4359 = icmp eq i64 %_bop4358, 1
  br i1 %_bop4359, label %_if4362, label %_else4361
_if4362:
  %_y4364 = load i64, i64* %_y4333
  %_bop4365 = and i64 %_y4364, 1
  %_bop4366 = icmp eq i64 %_bop4365, 1
  br i1 %_bop4366, label %_if4369, label %_else4368
_if4369:
  %_x4377 = load i64, i64* %_x4332
  %_bop4378 = lshr i64 %_x4377, 1
  %_y4379 = load i64, i64* %_y4333
  %_id4380 = call i64 @binary_gcd(i64 %_bop4378, i64 %_y4379)
  ret i64 %_id4380
_else4368:
  %_x4371 = load i64, i64* %_x4332
  %_bop4372 = lshr i64 %_x4371, 1
  %_y4373 = load i64, i64* %_y4333
  %_bop4374 = lshr i64 %_y4373, 1
  %_id4375 = call i64 @binary_gcd(i64 %_bop4372, i64 %_bop4374)
  %_bop4376 = shl i64 %_id4375, 1
  ret i64 %_bop4376
_after4367:
  br label %_after4360
_else4361:
  br label %_after4360
_after4360:
  %_y4381 = load i64, i64* %_y4333
  %_uop4382 = xor i64 %_y4381, -1
  %_bop4383 = and i64 %_uop4382, 1
  %_bop4384 = icmp eq i64 %_bop4383, 1
  br i1 %_bop4384, label %_if4387, label %_else4386
_if4387:
  %_x4389 = load i64, i64* %_x4332
  %_y4390 = load i64, i64* %_y4333
  %_bop4391 = lshr i64 %_y4390, 1
  %_id4392 = call i64 @binary_gcd(i64 %_x4389, i64 %_bop4391)
  ret i64 %_id4392
_else4386:
  br label %_after4385
_after4385:
  %_x4393 = load i64, i64* %_x4332
  %_y4394 = load i64, i64* %_y4333
  %_bop4395 = icmp sgt i64 %_x4393, %_y4394
  br i1 %_bop4395, label %_if4398, label %_else4397
_if4398:
  %_x4400 = load i64, i64* %_x4332
  %_y4401 = load i64, i64* %_y4333
  %_bop4402 = sub i64 %_x4400, %_y4401
  %_bop4403 = lshr i64 %_bop4402, 1
  %_y4404 = load i64, i64* %_y4333
  %_id4405 = call i64 @binary_gcd(i64 %_bop4403, i64 %_y4404)
  ret i64 %_id4405
_else4397:
  br label %_after4396
_after4396:
  %_y4406 = load i64, i64* %_y4333
  %_x4407 = load i64, i64* %_x4332
  %_bop4408 = sub i64 %_y4406, %_x4407
  %_bop4409 = lshr i64 %_bop4408, 1
  %_x4410 = load i64, i64* %_x4332
  %_id4411 = call i64 @binary_gcd(i64 %_bop4409, i64 %_x4410)
  ret i64 %_id4411
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x4321 = alloca i64
  %_y4323 = alloca i64
  %_argc4316 = alloca i64
  %_argv4318 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4318
  store i64 %argc, i64* %_argc4316
  store i64 21, i64* %_x4321
  store i64 15, i64* %_y4323
  %_x4325 = load i64, i64* %_x4321
  %_y4326 = load i64, i64* %_y4323
  %_id4327 = call i64 @binary_gcd(i64 %_x4325, i64 %_y4326)
  ret i64 %_id4327
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
