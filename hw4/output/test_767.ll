; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2905 = load i64, i64* @a
  %_bop2906 = add i64 %_a2905, 1
  store i64 %_bop2906, i64* @a
  %_a2908 = load i64, i64* @a
  ret i64 %_a2908
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2888 = alloca { i64, [0 x i64] }*
  %_argc2880 = alloca i64
  %_argv2882 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2882
  store i64 %argc, i64* %_argc2880
  %_id2885 = call i64 @f()
  %_raw_array2886 = call i64* @oat_alloc_array(i64 %_id2885)
  %_array2887 = bitcast i64* %_raw_array2886 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2887, { i64, [0 x i64] }** %_b2888
  %_b2890 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2888
  %_ptr2891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2890, i32 0, i32 1, i32 0
  store i64 0, i64* %_ptr2891
  %_b2893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2888
  %_ptr2894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2893, i32 0, i32 1, i32 1
  store i64 1, i64* %_ptr2894
  %_a2896 = load i64, i64* @a
  %_b2899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2888
  %_ptr2897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2899, i32 0, i32 1, i32 0
  %_resPtr2898 = load i64, i64* %_ptr2897
  %_bop2900 = add i64 %_a2896, %_resPtr2898
  %_b2903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2888
  %_ptr2901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2903, i32 0, i32 1, i32 1
  %_resPtr2902 = load i64, i64* %_ptr2901
  %_bop2904 = add i64 %_bop2900, %_resPtr2902
  ret i64 %_bop2904
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
