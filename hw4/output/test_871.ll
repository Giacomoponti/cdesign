; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2937 = load i64, i64* @a
  %_bop2938 = add i64 %_a2937, 1
  store i64 %_bop2938, i64* @a
  %_a2940 = load i64, i64* @a
  ret i64 %_a2940
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2918 = alloca { i64, [0 x i64] }*
  %_argc2910 = alloca i64
  %_argv2912 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2912
  store i64 %argc, i64* %_argc2910
  %_id2915 = call i64 @f()
  %_raw_array2916 = call i64* @oat_alloc_array(i64 %_id2915)
  %_array2917 = bitcast i64* %_raw_array2916 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2917, { i64, [0 x i64] }** %_b2918
  %_id2920 = call i64 @f()
  %_b2921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2918
  %_ptr2922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2921, i32 0, i32 1, i32 0
  store i64 %_id2920, i64* %_ptr2922
  %_id2924 = call i64 @f()
  %_b2925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2918
  %_ptr2926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2925, i32 0, i32 1, i32 1
  store i64 %_id2924, i64* %_ptr2926
  %_a2928 = load i64, i64* @a
  %_b2931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2918
  %_ptr2929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2931, i32 0, i32 1, i32 0
  %_resPtr2930 = load i64, i64* %_ptr2929
  %_bop2932 = add i64 %_a2928, %_resPtr2930
  %_b2935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2918
  %_ptr2933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2935, i32 0, i32 1, i32 1
  %_resPtr2934 = load i64, i64* %_ptr2933
  %_bop2936 = add i64 %_bop2932, %_resPtr2934
  ret i64 %_bop2936
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
