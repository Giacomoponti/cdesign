; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2941 = load i64, i64* @a
  %_bop2942 = add i64 %_a2941, 1
  store i64 %_bop2942, i64* @a
  %_a2944 = load i64, i64* @a
  ret i64 %_a2944
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2924 = alloca { i64, [0 x i64] }*
  %_argc2916 = alloca i64
  %_argv2918 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2918
  store i64 %argc, i64* %_argc2916
  %_id2921 = call i64 @f()
  %_raw_array2922 = call i64* @oat_alloc_array(i64 %_id2921)
  %_array2923 = bitcast i64* %_raw_array2922 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2923, { i64, [0 x i64] }** %_b2924
  %_b2926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2924
  %_ptr2927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2926, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr2927
  %_b2929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2924
  %_ptr2930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2929, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr2930
  %_a2932 = load i64, i64* @a
  %_b2935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2924
  %_ptr2933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2935, i32 0, i32 1, i32 0
  %_resPtr2934 = load i64, i64* %_ptr2933
  %_bop2936 = add i64 %_a2932, %_resPtr2934
  %_b2939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2924
  %_ptr2937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2939, i32 0, i32 1, i32 1
  %_resPtr2938 = load i64, i64* %_ptr2937
  %_bop2940 = add i64 %_bop2936, %_resPtr2938
  ret i64 %_bop2940
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
