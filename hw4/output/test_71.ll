; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1499 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2515 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3531 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4547 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5557 = alloca { i64, [0 x i64] }*
  %_raw_array485 = call i64* @oat_alloc_array(i64 1)
  %_array486 = bitcast i64* %_raw_array485 to { i64, [0 x i64] }*
  %_raw_array487 = call i64* @oat_alloc_array(i64 1)
  %_array488 = bitcast i64* %_raw_array487 to { i64, [0 x i64] }*
  %_raw_array489 = call i64* @oat_alloc_array(i64 1)
  %_array490 = bitcast i64* %_raw_array489 to { i64, [0 x i64] }*
  %_raw_array491 = call i64* @oat_alloc_array(i64 3)
  %_array492 = bitcast i64* %_raw_array491 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep493 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array492, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array486, { i64, [0 x i64] }** %_gep493
  %_gep495 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array492, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array488, { i64, [0 x i64] }** %_gep495
  %_gep497 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array492, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array490, { i64, [0 x i64] }** %_gep497
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array492, { i64, [0 x { i64, [0 x i64] }*] }** %_a1499
  %_raw_array501 = call i64* @oat_alloc_array(i64 1)
  %_array502 = bitcast i64* %_raw_array501 to { i64, [0 x i64] }*
  %_raw_array503 = call i64* @oat_alloc_array(i64 1)
  %_array504 = bitcast i64* %_raw_array503 to { i64, [0 x i64] }*
  %_raw_array505 = call i64* @oat_alloc_array(i64 1)
  %_array506 = bitcast i64* %_raw_array505 to { i64, [0 x i64] }*
  %_raw_array507 = call i64* @oat_alloc_array(i64 3)
  %_array508 = bitcast i64* %_raw_array507 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep509 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array508, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array502, { i64, [0 x i64] }** %_gep509
  %_gep511 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array508, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array504, { i64, [0 x i64] }** %_gep511
  %_gep513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array508, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array506, { i64, [0 x i64] }** %_gep513
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array508, { i64, [0 x { i64, [0 x i64] }*] }** %_a2515
  %_raw_array517 = call i64* @oat_alloc_array(i64 1)
  %_array518 = bitcast i64* %_raw_array517 to { i64, [0 x i64] }*
  %_raw_array519 = call i64* @oat_alloc_array(i64 1)
  %_array520 = bitcast i64* %_raw_array519 to { i64, [0 x i64] }*
  %_raw_array521 = call i64* @oat_alloc_array(i64 1)
  %_array522 = bitcast i64* %_raw_array521 to { i64, [0 x i64] }*
  %_raw_array523 = call i64* @oat_alloc_array(i64 3)
  %_array524 = bitcast i64* %_raw_array523 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep525 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array524, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array518, { i64, [0 x i64] }** %_gep525
  %_gep527 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array524, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array520, { i64, [0 x i64] }** %_gep527
  %_gep529 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array524, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array522, { i64, [0 x i64] }** %_gep529
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array524, { i64, [0 x { i64, [0 x i64] }*] }** %_a3531
  %_raw_array533 = call i64* @oat_alloc_array(i64 1)
  %_array534 = bitcast i64* %_raw_array533 to { i64, [0 x i64] }*
  %_raw_array535 = call i64* @oat_alloc_array(i64 1)
  %_array536 = bitcast i64* %_raw_array535 to { i64, [0 x i64] }*
  %_raw_array537 = call i64* @oat_alloc_array(i64 1)
  %_array538 = bitcast i64* %_raw_array537 to { i64, [0 x i64] }*
  %_raw_array539 = call i64* @oat_alloc_array(i64 3)
  %_array540 = bitcast i64* %_raw_array539 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep541 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array540, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array534, { i64, [0 x i64] }** %_gep541
  %_gep543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array540, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array536, { i64, [0 x i64] }** %_gep543
  %_gep545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array540, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array538, { i64, [0 x i64] }** %_gep545
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array540, { i64, [0 x { i64, [0 x i64] }*] }** %_a4547
  %_raw_array549 = call i64* @oat_alloc_array(i64 3)
  %_array550 = bitcast i64* %_raw_array549 to { i64, [0 x i64] }*
  %_gep551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array550, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep551
  %_gep553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array550, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep553
  %_gep555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array550, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep555
  store { i64, [0 x i64] }* %_array550, { i64, [0 x i64] }** %_a5557
  %_a5559 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5557
  %_a2560 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2515
  %_ptr561 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2560, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5559, { i64, [0 x i64] }** %_ptr561
  %_a2565 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2515
  %_ptr563 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2565, i32 0, i32 1, i32 0
  %_resPtr564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr563
  %_ptr566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr564, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr566
  %_a2568 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2515
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2568, { i64, [0 x { i64, [0 x i64] }*] }** %_a1499
  %_a1570 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1499
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1570, { i64, [0 x { i64, [0 x i64] }*] }** %_a3531
  %_a4572 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4547
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4572, { i64, [0 x { i64, [0 x i64] }*] }** %_a1499
  %_a3574 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3531
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3574, { i64, [0 x { i64, [0 x i64] }*] }** %_a2515
  %_a2576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2515
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2576, { i64, [0 x { i64, [0 x i64] }*] }** %_a4547
  %_a4578 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4547
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4578, { i64, [0 x { i64, [0 x i64] }*] }** %_a3531
  %_a3584 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3531
  %_ptr582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3584, i32 0, i32 1, i32 0
  %_resPtr583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr582
  %_ptr580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr583, i32 0, i32 1, i32 0
  %_resPtr581 = load i64, i64* %_ptr580
  ret i64 %_resPtr581
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
