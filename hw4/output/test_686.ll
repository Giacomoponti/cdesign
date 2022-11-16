; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2879 = load i64, i64* @a
  %_bop2880 = add i64 %_a2879, 1
  store i64 %_bop2880, i64* @a
  %_a2882 = load i64, i64* @a
  ret i64 %_a2882
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2860 = alloca { i64, [0 x i64] }*
  %_argc2852 = alloca i64
  %_argv2854 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2854
  store i64 %argc, i64* %_argc2852
  %_id2857 = call i64 @f()
  %_raw_array2858 = call i64* @oat_alloc_array(i64 %_id2857)
  %_array2859 = bitcast i64* %_raw_array2858 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2859, { i64, [0 x i64] }** %_b2860
  %_id2862 = call i64 @f()
  %_b2863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2860
  %_ptr2864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2863, i32 0, i32 1, i32 0
  store i64 %_id2862, i64* %_ptr2864
  %_id2866 = call i64 @f()
  %_b2867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2860
  %_ptr2868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2867, i32 0, i32 1, i32 1
  store i64 %_id2866, i64* %_ptr2868
  %_a2870 = load i64, i64* @a
  %_b2873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2860
  %_ptr2871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2873, i32 0, i32 1, i32 0
  %_resPtr2872 = load i64, i64* %_ptr2871
  %_bop2874 = add i64 %_a2870, %_resPtr2872
  %_b2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2860
  %_ptr2875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2877, i32 0, i32 1, i32 1
  %_resPtr2876 = load i64, i64* %_ptr2875
  %_bop2878 = add i64 %_bop2874, %_resPtr2876
  ret i64 %_bop2878
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
