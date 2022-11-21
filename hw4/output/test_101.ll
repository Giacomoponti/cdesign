; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr5568 to { i64, [0 x i64] }*)
@_arr5568 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr5567 to { i64, [0 x i64] }*)
@_arr5567 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_val5538 = alloca i64
  %_i5540 = alloca i64
  %_ar15533 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar15533
  %_ar25535 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar25535
  %_len5537 = alloca i64
  store i64 %len, i64* %_len5537
  store i64 0, i64* %_val5538
  store i64 0, i64* %_i5540
  br label %_pre5546
_pre5546:
  %_i5542 = load i64, i64* %_i5540
  %_len5543 = load i64, i64* %_len5537
  %_bop5544 = icmp slt i64 %_i5542, %_len5543
  %_cnd5548 = icmp eq i1 %_bop5544, 0
  br i1 %_cnd5548, label %_post5545, label %_body5547
_body5547:
  %_ar15551 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15533
  %_i5552 = load i64, i64* %_i5540
  %_ptr5549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar15551, i32 0, i32 1, i64 %_i5552
  %_resPtr5550 = load i64, i64* %_ptr5549
  %_ar25555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25535
  %_i5556 = load i64, i64* %_i5540
  %_ptr5553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar25555, i32 0, i32 1, i64 %_i5556
  %_resPtr5554 = load i64, i64* %_ptr5553
  %_bop5557 = icmp ne i64 %_resPtr5550, %_resPtr5554
  br i1 %_bop5557, label %_if5560, label %_else5559
_if5560:
  store i64 1, i64* %_val5538
  br label %_after5558
_else5559:
  br label %_after5558
_after5558:
  %_i5563 = load i64, i64* %_i5540
  %_bop5564 = add i64 %_i5563, 1
  store i64 %_bop5564, i64* %_i5540
  br label %_pre5546
_post5545:
  %_val5566 = load i64, i64* %_val5538
  ret i64 %_val5566
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val5520 = alloca i64
  %_argc5517 = alloca i64
  store i64 %argc, i64* %_argc5517
  %_argv5519 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5519
  store i64 1, i64* %_val5520
  %_arr15522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_arr25523 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_5524 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr15522, { i64, [0 x i64] }* %_arr25523, i64 4)
  %_bop5525 = icmp eq i64 %_5524, 1
  br i1 %_bop5525, label %_if5528, label %_else5527
_if5528:
  store i64 0, i64* %_val5520
  br label %_after5526
_else5527:
  br label %_after5526
_after5526:
  %_val5531 = load i64, i64* %_val5520
  ret i64 %_val5531
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
