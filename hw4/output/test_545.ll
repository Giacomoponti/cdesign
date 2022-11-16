; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2889 = alloca { i64, [0 x i64] }*
  %_argc2862 = alloca i64
  %_argv2864 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2864
  store i64 %argc, i64* %_argc2862
  %_raw_array2867 = call i64* @oat_alloc_array(i64 10)
  %_array2868 = bitcast i64* %_raw_array2867 to { i64, [0 x i64] }*
  %_gep2869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep2869
  %_gep2871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep2871
  %_gep2873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep2873
  %_gep2875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep2875
  %_gep2877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep2877
  %_gep2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep2879
  %_gep2881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep2881
  %_gep2883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep2883
  %_gep2885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep2885
  %_gep2887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2868, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep2887
  store { i64, [0 x i64] }* %_array2868, { i64, [0 x i64] }** %_a2889
  %_a2891 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2889
  %_id2892 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2891)
  call void @print_string(i8* %_id2892)
  ret i64 0
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
