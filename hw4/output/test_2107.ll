; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2973 = load i64, i64* @a
  %_bop2974 = add i64 %_a2973, 1
  store i64 %_bop2974, i64* @a
  %_a2976 = load i64, i64* @a
  ret i64 %_a2976
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2954 = alloca { i64, [0 x i64] }*
  %_argc2946 = alloca i64
  %_argv2948 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2948
  store i64 %argc, i64* %_argc2946
  %_id2951 = call i64 @f()
  %_raw_array2952 = call i64* @oat_alloc_array(i64 %_id2951)
  %_array2953 = bitcast i64* %_raw_array2952 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2953, { i64, [0 x i64] }** %_b2954
  %_id2956 = call i64 @f()
  %_b2957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2954
  %_ptr2958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2957, i32 0, i32 1, i32 0
  store i64 %_id2956, i64* %_ptr2958
  %_id2960 = call i64 @f()
  %_b2961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2954
  %_ptr2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2961, i32 0, i32 1, i32 1
  store i64 %_id2960, i64* %_ptr2962
  %_a2964 = load i64, i64* @a
  %_b2967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2954
  %_ptr2965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2967, i32 0, i32 1, i32 0
  %_resPtr2966 = load i64, i64* %_ptr2965
  %_bop2968 = add i64 %_a2964, %_resPtr2966
  %_b2971 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2954
  %_ptr2969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2971, i32 0, i32 1, i32 1
  %_resPtr2970 = load i64, i64* %_ptr2969
  %_bop2972 = add i64 %_bop2968, %_resPtr2970
  ret i64 %_bop2972
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
