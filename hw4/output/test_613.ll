; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2649 = load i64, i64* @a
  %_bop2650 = add i64 %_a2649, 1
  store i64 %_bop2650, i64* @a
  %_a2652 = load i64, i64* @a
  ret i64 %_a2652
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2632 = alloca { i64, [0 x i64] }*
  %_argc2624 = alloca i64
  %_argv2626 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2626
  store i64 %argc, i64* %_argc2624
  %_id2629 = call i64 @f()
  %_raw_array2630 = call i64* @oat_alloc_array(i64 %_id2629)
  %_array2631 = bitcast i64* %_raw_array2630 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2631, { i64, [0 x i64] }** %_b2632
  %_b2634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2632
  %_ptr2635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2634, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr2635
  %_b2637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2632
  %_ptr2638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2637, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr2638
  %_a2640 = load i64, i64* @a
  %_b2643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2632
  %_ptr2641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2643, i32 0, i32 1, i32 0
  %_resPtr2642 = load i64, i64* %_ptr2641
  %_bop2644 = add i64 %_a2640, %_resPtr2642
  %_b2647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2632
  %_ptr2645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2647, i32 0, i32 1, i32 1
  %_resPtr2646 = load i64, i64* %_ptr2645
  %_bop2648 = add i64 %_bop2644, %_resPtr2646
  ret i64 %_bop2648
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
