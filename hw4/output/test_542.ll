; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2681 = load i64, i64* @a
  %_bop2682 = add i64 %_a2681, 1
  store i64 %_bop2682, i64* @a
  %_a2684 = load i64, i64* @a
  ret i64 %_a2684
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2662 = alloca { i64, [0 x i64] }*
  %_argc2654 = alloca i64
  %_argv2656 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2656
  store i64 %argc, i64* %_argc2654
  %_id2659 = call i64 @f()
  %_raw_array2660 = call i64* @oat_alloc_array(i64 %_id2659)
  %_array2661 = bitcast i64* %_raw_array2660 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2661, { i64, [0 x i64] }** %_b2662
  %_id2664 = call i64 @f()
  %_b2665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2662
  %_ptr2666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2665, i32 0, i32 1, i32 0
  store i64 %_id2664, i64* %_ptr2666
  %_id2668 = call i64 @f()
  %_b2669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2662
  %_ptr2670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2669, i32 0, i32 1, i32 1
  store i64 %_id2668, i64* %_ptr2670
  %_a2672 = load i64, i64* @a
  %_b2675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2662
  %_ptr2673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2675, i32 0, i32 1, i32 0
  %_resPtr2674 = load i64, i64* %_ptr2673
  %_bop2676 = add i64 %_a2672, %_resPtr2674
  %_b2679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2662
  %_ptr2677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2679, i32 0, i32 1, i32 1
  %_resPtr2678 = load i64, i64* %_ptr2677
  %_bop2680 = add i64 %_bop2676, %_resPtr2678
  ret i64 %_bop2680
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
