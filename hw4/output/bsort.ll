; generated from: /home/gponti/cdesign/hw4/oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_s36 = global [2 x i8] c" \00"
@_s37 = global i8* bitcast ([2 x i8]* @_s36 to i8*)

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_temp50 = alloca i64
  %_i54 = alloca i64
  %_j62 = alloca i64
  %_numbers47 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers47
  %_array_size49 = alloca i64
  store i64 %array_size, i64* %_array_size49
  store i64 0, i64* %_temp50
  %_array_size52 = load i64, i64* %_array_size49
  %_bop53 = sub i64 %_array_size52, 1
  store i64 %_bop53, i64* %_i54
  br label %_pre59
_pre59:
  %_i56 = load i64, i64* %_i54
  %_bop57 = icmp sgt i64 %_i56, 0
  %_cnd61 = icmp eq i1 %_bop57, 0
  br i1 %_cnd61, label %_post58, label %_body60
_body60:
  store i64 1, i64* %_j62
  br label %_pre68
_pre68:
  %_j64 = load i64, i64* %_j62
  %_i65 = load i64, i64* %_i54
  %_bop66 = icmp sle i64 %_j64, %_i65
  %_cnd70 = icmp eq i1 %_bop66, 0
  br i1 %_cnd70, label %_post67, label %_body69
_body69:
  %_numbers73 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers47
  %_j74 = load i64, i64* %_j62
  %_bop75 = sub i64 %_j74, 1
  %_ptr71 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers73, i32 0, i32 1, i64 %_bop75
  %_resPtr72 = load i64, i64* %_ptr71
  %_numbers78 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers47
  %_i79 = load i64, i64* %_i54
  %_ptr76 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers78, i32 0, i32 1, i64 %_i79
  %_resPtr77 = load i64, i64* %_ptr76
  %_bop80 = icmp sgt i64 %_resPtr72, %_resPtr77
  br i1 %_bop80, label %_if83, label %_else82
_if83:
  %_numbers87 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers47
  %_j88 = load i64, i64* %_j62
  %_bop89 = sub i64 %_j88, 1
  %_ptr85 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers87, i32 0, i32 1, i64 %_bop89
  %_resPtr86 = load i64, i64* %_ptr85
  store i64 %_resPtr86, i64* %_temp50
  %_numbers93 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers47
  %_i94 = load i64, i64* %_i54
  %_ptr91 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers93, i32 0, i32 1, i64 %_i94
  %_resPtr92 = load i64, i64* %_ptr91
  %_numbers95 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers47
  %_j96 = load i64, i64* %_j62
  %_bop97 = sub i64 %_j96, 1
  %_ptr98 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers95, i32 0, i32 1, i64 %_bop97
  store i64 %_resPtr92, i64* %_ptr98
  %_temp100 = load i64, i64* %_temp50
  %_numbers101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers47
  %_i102 = load i64, i64* %_i54
  %_ptr103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers101, i32 0, i32 1, i64 %_i102
  store i64 %_temp100, i64* %_ptr103
  br label %_after81
_else82:
  br label %_after81
_after81:
  %_j105 = load i64, i64* %_j62
  %_bop106 = add i64 %_j105, 1
  store i64 %_bop106, i64* %_j62
  br label %_pre68
_post67:
  %_i108 = load i64, i64* %_i54
  %_bop109 = sub i64 %_i108, 1
  store i64 %_bop109, i64* %_i54
  br label %_pre59
_post58:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a7 = alloca { i64, [0 x i64] }*
  %_argc2 = alloca i64
  store i64 %argc, i64* %_argc2
  %_argv4 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4
  %_raw_array5 = call i64* @oat_alloc_array(i64 8)
  %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6, { i64, [0 x i64] }** %_a7
  %_a9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr10 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9, i32 0, i32 1, i32 0
  store i64 121, i64* %_ptr10
  %_a12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr13 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a12, i32 0, i32 1, i32 1
  store i64 125, i64* %_ptr13
  %_a15 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr16 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a15, i32 0, i32 1, i32 2
  store i64 120, i64* %_ptr16
  %_a18 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr19 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a18, i32 0, i32 1, i32 3
  store i64 111, i64* %_ptr19
  %_a21 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr22 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a21, i32 0, i32 1, i32 4
  store i64 116, i64* %_ptr22
  %_a24 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr25 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a24, i32 0, i32 1, i32 5
  store i64 110, i64* %_ptr25
  %_a27 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr28 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a27, i32 0, i32 1, i32 6
  store i64 117, i64* %_ptr28
  %_a30 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_ptr31 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a30, i32 0, i32 1, i32 7
  store i64 119, i64* %_ptr31
  %_a33 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_34 = call i8* @string_of_array({ i64, [0 x i64] }* %_a33)
  call void @print_string(i8* %_34)
  %_tmp38 = load i8*, i8** @_s37
  call void @print_string(i8* %_tmp38)
  %_a40 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  call void @bubble_sort({ i64, [0 x i64] }* %_a40, i64 8)
  %_a42 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7
  %_43 = call i8* @string_of_array({ i64, [0 x i64] }* %_a42)
  call void @print_string(i8* %_43)
  %_uop45 = mul i64 1, -1
  ret i64 %_uop45
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
