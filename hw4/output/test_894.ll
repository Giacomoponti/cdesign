; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr5529 to { i64, [0 x i64] }*)
@_arr5529 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 4, i64 3, i64 2, i64 1 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_arr5528 to { i64, [0 x i64] }*)
@_arr5528 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 5, i64 3, i64 2, i64 1 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_val5499 = alloca i64
  %_i5501 = alloca i64
  %_ar15491 = alloca { i64, [0 x i64] }*
  %_ar25493 = alloca { i64, [0 x i64] }*
  %_len5495 = alloca i64
  store i64 %len, i64* %_len5495
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar25493
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar15491
  store i64 0, i64* %_val5499
  store i64 0, i64* %_i5501
  br label %_pre5507
_pre5507:
  %_i5503 = load i64, i64* %_i5501
  %_len5504 = load i64, i64* %_len5498
  %_bop5505 = icmp slt i64 %_i5503, %_len5504
  %_cnd5509 = icmp eq i1 %_bop5505, 0
  br i1 %_cnd5509, label %_post5506, label %_body5508
_body5508:
  %_ar15512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15496
  %_i5513 = load i64, i64* %_i5501
  %_ptr5510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar15512, i32 0, i32 1, i64 %_i5513
  %_resPtr5511 = load i64, i64* %_ptr5510
  %_ar25516 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25497
  %_i5517 = load i64, i64* %_i5501
  %_ptr5514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar25516, i32 0, i32 1, i64 %_i5517
  %_resPtr5515 = load i64, i64* %_ptr5514
  %_bop5518 = icmp ne i64 %_resPtr5511, %_resPtr5515
  br i1 %_bop5518, label %_if5521, label %_else5520
_if5521:
  store i64 1, i64* %_val5499
  br label %_after5519
_else5520:
  br label %_after5519
_after5519:
  %_i5524 = load i64, i64* %_i5501
  %_bop5525 = add i64 %_i5524, 1
  store i64 %_bop5525, i64* %_i5501
  br label %_pre5507
_post5506:
  %_val5527 = load i64, i64* %_val5499
  ret i64 %_val5527
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val5478 = alloca i64
  %_argc5473 = alloca i64
  %_argv5475 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5475
  store i64 %argc, i64* %_argc5473
  store i64 1, i64* %_val5478
  %_arr15480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_arr25481 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_id5482 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr15480, { i64, [0 x i64] }* %_arr25481, i64 4)
  %_bop5483 = icmp eq i64 %_id5482, 1
  br i1 %_bop5483, label %_if5486, label %_else5485
_if5486:
  store i64 0, i64* %_val5478
  br label %_after5484
_else5485:
  br label %_after5484
_after5484:
  %_val5489 = load i64, i64* %_val5478
  ret i64 %_val5489
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
