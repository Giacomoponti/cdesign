; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
define i64 @xor(i64 %x, i64 %y) {
  %_x4485 = alloca i64
  %_y4487 = alloca i64
  store i64 %y, i64* %_y4487
  store i64 %x, i64* %_x4485
  %_x4490 = load i64, i64* %_x4488
  %_y4491 = load i64, i64* %_y4489
  %_bop4492 = and i64 %_x4490, %_y4491
  %_uop4493 = xor i64 %_bop4492, -1
  %_x4494 = load i64, i64* %_x4488
  %_y4495 = load i64, i64* %_y4489
  %_bop4496 = or i64 %_x4494, %_y4495
  %_bop4497 = and i64 %_uop4493, %_bop4496
  ret i64 %_bop4497
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_x4449 = alloca i64
  %_y4454 = alloca i64
  %_s4444 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s4444
  %_s4448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4445
  %_ptr4446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4448, i32 0, i32 1, i32 0
  %_resPtr4447 = load i64, i64* %_ptr4446
  store i64 %_resPtr4447, i64* %_x4449
  %_s4453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4445
  %_ptr4451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4453, i32 0, i32 1, i32 1
  %_resPtr4452 = load i64, i64* %_ptr4451
  store i64 %_resPtr4452, i64* %_y4454
  %_y4456 = load i64, i64* %_y4454
  %_s4457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4445
  %_ptr4458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4457, i32 0, i32 1, i32 0
  store i64 %_y4456, i64* %_ptr4458
  %_x4460 = load i64, i64* %_x4449
  %_x4461 = load i64, i64* %_x4449
  %_bop4462 = shl i64 %_x4461, 23
  %_id4463 = call i64 @xor(i64 %_x4460, i64 %_bop4462)
  store i64 %_id4463, i64* %_x4449
  %_x4465 = load i64, i64* %_x4449
  %_x4466 = load i64, i64* %_x4449
  %_bop4467 = lshr i64 %_x4466, 17
  %_id4468 = call i64 @xor(i64 %_x4465, i64 %_bop4467)
  store i64 %_id4468, i64* %_x4449
  %_x4470 = load i64, i64* %_x4449
  %_y4471 = load i64, i64* %_y4454
  %_y4472 = load i64, i64* %_y4454
  %_bop4473 = lshr i64 %_y4472, 26
  %_id4474 = call i64 @xor(i64 %_y4471, i64 %_bop4473)
  %_id4475 = call i64 @xor(i64 %_x4470, i64 %_id4474)
  store i64 %_id4475, i64* %_x4449
  %_x4477 = load i64, i64* %_x4449
  %_s4478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4445
  %_ptr4479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4478, i32 0, i32 1, i32 1
  store i64 %_x4477, i64* %_ptr4479
  %_x4481 = load i64, i64* %_x4449
  %_y4482 = load i64, i64* %_y4454
  %_bop4483 = add i64 %_x4481, %_y4482
  ret i64 %_bop4483
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_seed4416 = alloca { i64, [0 x i64] }*
  %_i4418 = alloca i64
  %_argc4409 = alloca i64
  %_argv4411 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4411
  store i64 %argc, i64* %_argc4409
  %_raw_array4414 = call i64* @oat_alloc_array(i64 2)
  %_array4415 = bitcast i64* %_raw_array4414 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4415, { i64, [0 x i64] }** %_seed4416
  store i64 0, i64* %_i4418
  br label %_pre4423
_pre4423:
  %_cnd4425 = icmp eq i1 %_bop4421, 0
  br i1 %_cnd4425, label %_post4422, label %_body4424
_body4424:
  %_i4420 = load i64, i64* %_i4418
  %_bop4421 = icmp slt i64 %_i4420, 2
  %_i4426 = load i64, i64* %_i4418
  %_bop4427 = add i64 %_i4426, 1
  %_bop4428 = mul i64 100, %_bop4427
  %_seed4429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4416
  %_i4430 = load i64, i64* %_i4418
  %_ptr4431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4429, i32 0, i32 1, i64 %_i4430
  store i64 %_bop4428, i64* %_ptr4431
  %_i4433 = load i64, i64* %_i4418
  %_bop4434 = add i64 %_i4433, 1
  store i64 %_bop4434, i64* %_i4418
  br label %_pre4423
_post4422:
  %_seed4436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4416
  %_id4437 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4436)
  call void @print_int(i64 %_id4437)
  call void @print_string(void null)
  %_seed4440 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4416
  %_id4441 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4440)
  call void @print_int(i64 %_id4441)
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
