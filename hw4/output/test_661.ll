; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1457 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2473 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3489 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4505 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5515 = alloca { i64, [0 x i64] }*
  %_raw_array443 = call i64* @oat_alloc_array(i64 1)
  %_array444 = bitcast i64* %_raw_array443 to { i64, [0 x i64] }*
  %_raw_array445 = call i64* @oat_alloc_array(i64 1)
  %_array446 = bitcast i64* %_raw_array445 to { i64, [0 x i64] }*
  %_raw_array447 = call i64* @oat_alloc_array(i64 1)
  %_array448 = bitcast i64* %_raw_array447 to { i64, [0 x i64] }*
  %_raw_array449 = call i64* @oat_alloc_array(i64 3)
  %_array450 = bitcast i64* %_raw_array449 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep451 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array450, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array444, { i64, [0 x i64] }** %_gep451
  %_gep453 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array450, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array446, { i64, [0 x i64] }** %_gep453
  %_gep455 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array450, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array448, { i64, [0 x i64] }** %_gep455
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array450, { i64, [0 x { i64, [0 x i64] }*] }** %_a1457
  %_raw_array459 = call i64* @oat_alloc_array(i64 1)
  %_array460 = bitcast i64* %_raw_array459 to { i64, [0 x i64] }*
  %_raw_array461 = call i64* @oat_alloc_array(i64 1)
  %_array462 = bitcast i64* %_raw_array461 to { i64, [0 x i64] }*
  %_raw_array463 = call i64* @oat_alloc_array(i64 1)
  %_array464 = bitcast i64* %_raw_array463 to { i64, [0 x i64] }*
  %_raw_array465 = call i64* @oat_alloc_array(i64 3)
  %_array466 = bitcast i64* %_raw_array465 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep467 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array466, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array460, { i64, [0 x i64] }** %_gep467
  %_gep469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array466, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array462, { i64, [0 x i64] }** %_gep469
  %_gep471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array466, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array464, { i64, [0 x i64] }** %_gep471
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array466, { i64, [0 x { i64, [0 x i64] }*] }** %_a2473
  %_raw_array475 = call i64* @oat_alloc_array(i64 1)
  %_array476 = bitcast i64* %_raw_array475 to { i64, [0 x i64] }*
  %_raw_array477 = call i64* @oat_alloc_array(i64 1)
  %_array478 = bitcast i64* %_raw_array477 to { i64, [0 x i64] }*
  %_raw_array479 = call i64* @oat_alloc_array(i64 1)
  %_array480 = bitcast i64* %_raw_array479 to { i64, [0 x i64] }*
  %_raw_array481 = call i64* @oat_alloc_array(i64 3)
  %_array482 = bitcast i64* %_raw_array481 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep483 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array482, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array476, { i64, [0 x i64] }** %_gep483
  %_gep485 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array482, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array478, { i64, [0 x i64] }** %_gep485
  %_gep487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array482, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array480, { i64, [0 x i64] }** %_gep487
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array482, { i64, [0 x { i64, [0 x i64] }*] }** %_a3489
  %_raw_array491 = call i64* @oat_alloc_array(i64 1)
  %_array492 = bitcast i64* %_raw_array491 to { i64, [0 x i64] }*
  %_raw_array493 = call i64* @oat_alloc_array(i64 1)
  %_array494 = bitcast i64* %_raw_array493 to { i64, [0 x i64] }*
  %_raw_array495 = call i64* @oat_alloc_array(i64 1)
  %_array496 = bitcast i64* %_raw_array495 to { i64, [0 x i64] }*
  %_raw_array497 = call i64* @oat_alloc_array(i64 3)
  %_array498 = bitcast i64* %_raw_array497 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep499 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array498, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array492, { i64, [0 x i64] }** %_gep499
  %_gep501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array498, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array494, { i64, [0 x i64] }** %_gep501
  %_gep503 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array498, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array496, { i64, [0 x i64] }** %_gep503
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array498, { i64, [0 x { i64, [0 x i64] }*] }** %_a4505
  %_raw_array507 = call i64* @oat_alloc_array(i64 3)
  %_array508 = bitcast i64* %_raw_array507 to { i64, [0 x i64] }*
  %_gep509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep509
  %_gep511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep511
  %_gep513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep513
  store { i64, [0 x i64] }* %_array508, { i64, [0 x i64] }** %_a5515
  %_a5517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5515
  %_a2518 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2473
  %_ptr519 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2518, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5517, { i64, [0 x i64] }** %_ptr519
  %_a2523 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2473
  %_ptr521 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2523, i32 0, i32 1, i32 0
  %_resPtr522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr521
  %_ptr524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr522, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr524
  %_a2526 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2473
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2526, { i64, [0 x { i64, [0 x i64] }*] }** %_a1457
  %_a1528 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1457
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1528, { i64, [0 x { i64, [0 x i64] }*] }** %_a3489
  %_a4530 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4505
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4530, { i64, [0 x { i64, [0 x i64] }*] }** %_a1457
  %_a3532 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3489
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3532, { i64, [0 x { i64, [0 x i64] }*] }** %_a2473
  %_a2534 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2473
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2534, { i64, [0 x { i64, [0 x i64] }*] }** %_a4505
  %_a4536 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4505
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4536, { i64, [0 x { i64, [0 x i64] }*] }** %_a3489
  %_a3542 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3489
  %_ptr540 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3542, i32 0, i32 1, i32 0
  %_resPtr541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr540
  %_ptr538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr541, i32 0, i32 1, i32 0
  %_resPtr539 = load i64, i64* %_ptr538
  ret i64 %_resPtr539
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
