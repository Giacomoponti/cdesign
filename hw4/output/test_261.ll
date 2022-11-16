; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1507 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2523 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3539 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4555 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5565 = alloca { i64, [0 x i64] }*
  %_raw_array493 = call i64* @oat_alloc_array(i64 1)
  %_array494 = bitcast i64* %_raw_array493 to { i64, [0 x i64] }*
  %_raw_array495 = call i64* @oat_alloc_array(i64 1)
  %_array496 = bitcast i64* %_raw_array495 to { i64, [0 x i64] }*
  %_raw_array497 = call i64* @oat_alloc_array(i64 1)
  %_array498 = bitcast i64* %_raw_array497 to { i64, [0 x i64] }*
  %_raw_array499 = call i64* @oat_alloc_array(i64 3)
  %_array500 = bitcast i64* %_raw_array499 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array500, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array494, { i64, [0 x i64] }** %_gep501
  %_gep503 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array500, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array496, { i64, [0 x i64] }** %_gep503
  %_gep505 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array500, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array498, { i64, [0 x i64] }** %_gep505
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array500, { i64, [0 x { i64, [0 x i64] }*] }** %_a1507
  %_raw_array509 = call i64* @oat_alloc_array(i64 1)
  %_array510 = bitcast i64* %_raw_array509 to { i64, [0 x i64] }*
  %_raw_array511 = call i64* @oat_alloc_array(i64 1)
  %_array512 = bitcast i64* %_raw_array511 to { i64, [0 x i64] }*
  %_raw_array513 = call i64* @oat_alloc_array(i64 1)
  %_array514 = bitcast i64* %_raw_array513 to { i64, [0 x i64] }*
  %_raw_array515 = call i64* @oat_alloc_array(i64 3)
  %_array516 = bitcast i64* %_raw_array515 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array516, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array510, { i64, [0 x i64] }** %_gep517
  %_gep519 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array516, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array512, { i64, [0 x i64] }** %_gep519
  %_gep521 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array516, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array514, { i64, [0 x i64] }** %_gep521
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array516, { i64, [0 x { i64, [0 x i64] }*] }** %_a2523
  %_raw_array525 = call i64* @oat_alloc_array(i64 1)
  %_array526 = bitcast i64* %_raw_array525 to { i64, [0 x i64] }*
  %_raw_array527 = call i64* @oat_alloc_array(i64 1)
  %_array528 = bitcast i64* %_raw_array527 to { i64, [0 x i64] }*
  %_raw_array529 = call i64* @oat_alloc_array(i64 1)
  %_array530 = bitcast i64* %_raw_array529 to { i64, [0 x i64] }*
  %_raw_array531 = call i64* @oat_alloc_array(i64 3)
  %_array532 = bitcast i64* %_raw_array531 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array532, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array526, { i64, [0 x i64] }** %_gep533
  %_gep535 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array532, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array528, { i64, [0 x i64] }** %_gep535
  %_gep537 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array532, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array530, { i64, [0 x i64] }** %_gep537
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array532, { i64, [0 x { i64, [0 x i64] }*] }** %_a3539
  %_raw_array541 = call i64* @oat_alloc_array(i64 1)
  %_array542 = bitcast i64* %_raw_array541 to { i64, [0 x i64] }*
  %_raw_array543 = call i64* @oat_alloc_array(i64 1)
  %_array544 = bitcast i64* %_raw_array543 to { i64, [0 x i64] }*
  %_raw_array545 = call i64* @oat_alloc_array(i64 1)
  %_array546 = bitcast i64* %_raw_array545 to { i64, [0 x i64] }*
  %_raw_array547 = call i64* @oat_alloc_array(i64 3)
  %_array548 = bitcast i64* %_raw_array547 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep549 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array548, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array542, { i64, [0 x i64] }** %_gep549
  %_gep551 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array548, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array544, { i64, [0 x i64] }** %_gep551
  %_gep553 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array548, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array546, { i64, [0 x i64] }** %_gep553
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array548, { i64, [0 x { i64, [0 x i64] }*] }** %_a4555
  %_raw_array557 = call i64* @oat_alloc_array(i64 3)
  %_array558 = bitcast i64* %_raw_array557 to { i64, [0 x i64] }*
  %_gep559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep559
  %_gep561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep561
  %_gep563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep563
  store { i64, [0 x i64] }* %_array558, { i64, [0 x i64] }** %_a5565
  %_a5567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5565
  %_a2568 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2523
  %_ptr569 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2568, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5567, { i64, [0 x i64] }** %_ptr569
  %_a2573 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2523
  %_ptr571 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2573, i32 0, i32 1, i32 0
  %_resPtr572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr571
  %_ptr574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr572, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr574
  %_a2576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2523
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2576, { i64, [0 x { i64, [0 x i64] }*] }** %_a1507
  %_a1578 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1507
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1578, { i64, [0 x { i64, [0 x i64] }*] }** %_a3539
  %_a4580 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4555
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4580, { i64, [0 x { i64, [0 x i64] }*] }** %_a1507
  %_a3582 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3539
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3582, { i64, [0 x { i64, [0 x i64] }*] }** %_a2523
  %_a2584 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2523
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2584, { i64, [0 x { i64, [0 x i64] }*] }** %_a4555
  %_a4586 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4555
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4586, { i64, [0 x { i64, [0 x i64] }*] }** %_a3539
  %_a3592 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3539
  %_ptr590 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3592, i32 0, i32 1, i32 0
  %_resPtr591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr590
  %_ptr588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr591, i32 0, i32 1, i32 0
  %_resPtr589 = load i64, i64* %_ptr588
  ret i64 %_resPtr589
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
