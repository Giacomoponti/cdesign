; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1919 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2935 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3951 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4967 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5977 = alloca { i64, [0 x i64] }*
  %_argc902 = alloca i64
  store i64 %argc, i64* %_argc902
  %_argv904 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv904
  %_raw_array905 = call i64* @oat_alloc_array(i64 1)
  %_array906 = bitcast i64* %_raw_array905 to { i64, [0 x i64] }*
  %_raw_array907 = call i64* @oat_alloc_array(i64 1)
  %_array908 = bitcast i64* %_raw_array907 to { i64, [0 x i64] }*
  %_raw_array909 = call i64* @oat_alloc_array(i64 1)
  %_array910 = bitcast i64* %_raw_array909 to { i64, [0 x i64] }*
  %_raw_array911 = call i64* @oat_alloc_array(i64 3)
  %_array912 = bitcast i64* %_raw_array911 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep913 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array912, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array906, { i64, [0 x i64] }** %_gep913
  %_gep915 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array912, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array908, { i64, [0 x i64] }** %_gep915
  %_gep917 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array912, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array910, { i64, [0 x i64] }** %_gep917
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array912, { i64, [0 x { i64, [0 x i64] }*] }** %_a1919
  %_raw_array921 = call i64* @oat_alloc_array(i64 1)
  %_array922 = bitcast i64* %_raw_array921 to { i64, [0 x i64] }*
  %_raw_array923 = call i64* @oat_alloc_array(i64 1)
  %_array924 = bitcast i64* %_raw_array923 to { i64, [0 x i64] }*
  %_raw_array925 = call i64* @oat_alloc_array(i64 1)
  %_array926 = bitcast i64* %_raw_array925 to { i64, [0 x i64] }*
  %_raw_array927 = call i64* @oat_alloc_array(i64 3)
  %_array928 = bitcast i64* %_raw_array927 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array928, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array922, { i64, [0 x i64] }** %_gep929
  %_gep931 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array928, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array924, { i64, [0 x i64] }** %_gep931
  %_gep933 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array928, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array926, { i64, [0 x i64] }** %_gep933
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array928, { i64, [0 x { i64, [0 x i64] }*] }** %_a2935
  %_raw_array937 = call i64* @oat_alloc_array(i64 1)
  %_array938 = bitcast i64* %_raw_array937 to { i64, [0 x i64] }*
  %_raw_array939 = call i64* @oat_alloc_array(i64 1)
  %_array940 = bitcast i64* %_raw_array939 to { i64, [0 x i64] }*
  %_raw_array941 = call i64* @oat_alloc_array(i64 1)
  %_array942 = bitcast i64* %_raw_array941 to { i64, [0 x i64] }*
  %_raw_array943 = call i64* @oat_alloc_array(i64 3)
  %_array944 = bitcast i64* %_raw_array943 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep945 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array944, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array938, { i64, [0 x i64] }** %_gep945
  %_gep947 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array944, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array940, { i64, [0 x i64] }** %_gep947
  %_gep949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array944, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array942, { i64, [0 x i64] }** %_gep949
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array944, { i64, [0 x { i64, [0 x i64] }*] }** %_a3951
  %_raw_array953 = call i64* @oat_alloc_array(i64 1)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x i64] }*
  %_raw_array955 = call i64* @oat_alloc_array(i64 1)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  %_raw_array957 = call i64* @oat_alloc_array(i64 1)
  %_array958 = bitcast i64* %_raw_array957 to { i64, [0 x i64] }*
  %_raw_array959 = call i64* @oat_alloc_array(i64 3)
  %_array960 = bitcast i64* %_raw_array959 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array960, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array954, { i64, [0 x i64] }** %_gep961
  %_gep963 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array960, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_gep963
  %_gep965 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array960, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array958, { i64, [0 x i64] }** %_gep965
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array960, { i64, [0 x { i64, [0 x i64] }*] }** %_a4967
  %_raw_array969 = call i64* @oat_alloc_array(i64 3)
  %_array970 = bitcast i64* %_raw_array969 to { i64, [0 x i64] }*
  %_gep971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array970, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep971
  %_gep973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array970, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep973
  %_gep975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array970, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep975
  store { i64, [0 x i64] }* %_array970, { i64, [0 x i64] }** %_a5977
  %_a5979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5977
  %_a2980 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2935
  %_ptr981 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2980, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5979, { i64, [0 x i64] }** %_ptr981
  %_a2985 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2935
  %_ptr983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2985, i32 0, i32 1, i32 0
  %_resPtr984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr983
  %_ptr986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr984, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr986
  %_a2988 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2935
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2988, { i64, [0 x { i64, [0 x i64] }*] }** %_a1919
  %_a1990 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1919
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1990, { i64, [0 x { i64, [0 x i64] }*] }** %_a3951
  %_a4992 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4967
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4992, { i64, [0 x { i64, [0 x i64] }*] }** %_a1919
  %_a3994 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3951
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3994, { i64, [0 x { i64, [0 x i64] }*] }** %_a2935
  %_a2996 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2935
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2996, { i64, [0 x { i64, [0 x i64] }*] }** %_a4967
  %_a4998 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4967
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4998, { i64, [0 x { i64, [0 x i64] }*] }** %_a3951
  %_a31004 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3951
  %_ptr1002 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a31004, i32 0, i32 1, i32 0
  %_resPtr1003 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1002
  %_ptr1000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1003, i32 0, i32 1, i32 0
  %_resPtr1001 = load i64, i64* %_ptr1000
  ret i64 %_resPtr1001
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
