; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1905 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2921 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3937 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4953 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5963 = alloca { i64, [0 x i64] }*
  %_argc886 = alloca i64
  %_argv888 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv888
  store i64 %argc, i64* %_argc886
  %_raw_array891 = call i64* @oat_alloc_array(i64 1)
  %_array892 = bitcast i64* %_raw_array891 to { i64, [0 x i64] }*
  %_raw_array893 = call i64* @oat_alloc_array(i64 1)
  %_array894 = bitcast i64* %_raw_array893 to { i64, [0 x i64] }*
  %_raw_array895 = call i64* @oat_alloc_array(i64 1)
  %_array896 = bitcast i64* %_raw_array895 to { i64, [0 x i64] }*
  %_raw_array897 = call i64* @oat_alloc_array(i64 3)
  %_array898 = bitcast i64* %_raw_array897 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep899 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array898, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array892, { i64, [0 x i64] }** %_gep899
  %_gep901 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array898, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array894, { i64, [0 x i64] }** %_gep901
  %_gep903 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array898, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array896, { i64, [0 x i64] }** %_gep903
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array898, { i64, [0 x { i64, [0 x i64] }*] }** %_a1905
  %_raw_array907 = call i64* @oat_alloc_array(i64 1)
  %_array908 = bitcast i64* %_raw_array907 to { i64, [0 x i64] }*
  %_raw_array909 = call i64* @oat_alloc_array(i64 1)
  %_array910 = bitcast i64* %_raw_array909 to { i64, [0 x i64] }*
  %_raw_array911 = call i64* @oat_alloc_array(i64 1)
  %_array912 = bitcast i64* %_raw_array911 to { i64, [0 x i64] }*
  %_raw_array913 = call i64* @oat_alloc_array(i64 3)
  %_array914 = bitcast i64* %_raw_array913 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep915 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array908, { i64, [0 x i64] }** %_gep915
  %_gep917 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array910, { i64, [0 x i64] }** %_gep917
  %_gep919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array912, { i64, [0 x i64] }** %_gep919
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array914, { i64, [0 x { i64, [0 x i64] }*] }** %_a2921
  %_raw_array923 = call i64* @oat_alloc_array(i64 1)
  %_array924 = bitcast i64* %_raw_array923 to { i64, [0 x i64] }*
  %_raw_array925 = call i64* @oat_alloc_array(i64 1)
  %_array926 = bitcast i64* %_raw_array925 to { i64, [0 x i64] }*
  %_raw_array927 = call i64* @oat_alloc_array(i64 1)
  %_array928 = bitcast i64* %_raw_array927 to { i64, [0 x i64] }*
  %_raw_array929 = call i64* @oat_alloc_array(i64 3)
  %_array930 = bitcast i64* %_raw_array929 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep931 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array930, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array924, { i64, [0 x i64] }** %_gep931
  %_gep933 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array930, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array926, { i64, [0 x i64] }** %_gep933
  %_gep935 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array930, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array928, { i64, [0 x i64] }** %_gep935
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array930, { i64, [0 x { i64, [0 x i64] }*] }** %_a3937
  %_raw_array939 = call i64* @oat_alloc_array(i64 1)
  %_array940 = bitcast i64* %_raw_array939 to { i64, [0 x i64] }*
  %_raw_array941 = call i64* @oat_alloc_array(i64 1)
  %_array942 = bitcast i64* %_raw_array941 to { i64, [0 x i64] }*
  %_raw_array943 = call i64* @oat_alloc_array(i64 1)
  %_array944 = bitcast i64* %_raw_array943 to { i64, [0 x i64] }*
  %_raw_array945 = call i64* @oat_alloc_array(i64 3)
  %_array946 = bitcast i64* %_raw_array945 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep947 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array946, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array940, { i64, [0 x i64] }** %_gep947
  %_gep949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array946, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array942, { i64, [0 x i64] }** %_gep949
  %_gep951 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array946, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array944, { i64, [0 x i64] }** %_gep951
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array946, { i64, [0 x { i64, [0 x i64] }*] }** %_a4953
  %_raw_array955 = call i64* @oat_alloc_array(i64 3)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  %_gep957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep957
  %_gep959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep959
  %_gep961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep961
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_a5963
  %_a5965 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5963
  %_a2966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2921
  %_ptr967 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2966, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5965, { i64, [0 x i64] }** %_ptr967
  %_a2971 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2921
  %_ptr969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2971, i32 0, i32 1, i32 0
  %_resPtr970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr969
  %_ptr972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr970, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr972
  %_a2974 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2921
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2974, { i64, [0 x { i64, [0 x i64] }*] }** %_a1905
  %_a1976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1905
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1976, { i64, [0 x { i64, [0 x i64] }*] }** %_a3937
  %_a4978 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4953
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4978, { i64, [0 x { i64, [0 x i64] }*] }** %_a1905
  %_a3980 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3937
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3980, { i64, [0 x { i64, [0 x i64] }*] }** %_a2921
  %_a2982 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2921
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2982, { i64, [0 x { i64, [0 x i64] }*] }** %_a4953
  %_a4984 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4953
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4984, { i64, [0 x { i64, [0 x i64] }*] }** %_a3937
  %_a3990 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3937
  %_ptr988 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3990, i32 0, i32 1, i32 0
  %_resPtr989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr988
  %_ptr986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr989, i32 0, i32 1, i32 0
  %_resPtr987 = load i64, i64* %_ptr986
  ret i64 %_resPtr987
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
