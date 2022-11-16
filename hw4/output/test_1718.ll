; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr5601 to { i64, [0 x i64] }*)
@_arr5601 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 4, i64 3, i64 2, i64 1 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr5600 to { i64, [0 x i64] }*)
@_arr5600 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 5, i64 3, i64 2, i64 1 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_val5571 = alloca i64
  %_i5573 = alloca i64
  %_ar15563 = alloca { i64, [0 x i64] }*
  %_ar25565 = alloca { i64, [0 x i64] }*
  %_len5567 = alloca i64
  store i64 %len, i64* %_len5567
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar25565
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar15563
  store i64 0, i64* %_val5571
  store i64 0, i64* %_i5573
  br label %_pre5579
_pre5579:
  %_i5575 = load i64, i64* %_i5573
  %_len5576 = load i64, i64* %_len5570
  %_bop5577 = icmp slt i64 %_i5575, %_len5576
  %_cnd5581 = icmp eq i1 %_bop5577, 0
  br i1 %_cnd5581, label %_post5578, label %_body5580
_body5580:
  %_ar15584 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15568
  %_i5585 = load i64, i64* %_i5573
  %_ptr5582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar15584, i32 0, i32 1, i64 %_i5585
  %_resPtr5583 = load i64, i64* %_ptr5582
  %_ar25588 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25569
  %_i5589 = load i64, i64* %_i5573
  %_ptr5586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar25588, i32 0, i32 1, i64 %_i5589
  %_resPtr5587 = load i64, i64* %_ptr5586
  %_bop5590 = icmp ne i64 %_resPtr5583, %_resPtr5587
  br i1 %_bop5590, label %_if5593, label %_else5592
_if5593:
  store i64 1, i64* %_val5571
  br label %_after5591
_else5592:
  br label %_after5591
_after5591:
  %_i5596 = load i64, i64* %_i5573
  %_bop5597 = add i64 %_i5596, 1
  store i64 %_bop5597, i64* %_i5573
  br label %_pre5579
_post5578:
  %_val5599 = load i64, i64* %_val5571
  ret i64 %_val5599
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val5550 = alloca i64
  %_argc5545 = alloca i64
  %_argv5547 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5547
  store i64 %argc, i64* %_argc5545
  store i64 1, i64* %_val5550
  %_arr15552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_arr25553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_id5554 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr15552, { i64, [0 x i64] }* %_arr25553, i64 4)
  %_bop5555 = icmp eq i64 %_id5554, 1
  br i1 %_bop5555, label %_if5558, label %_else5557
_if5558:
  store i64 0, i64* %_val5550
  br label %_after5556
_else5557:
  br label %_after5556
_after5556:
  %_val5561 = load i64, i64* %_val5550
  ret i64 %_val5561
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
