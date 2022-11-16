; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1907 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2923 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3939 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4955 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5965 = alloca { i64, [0 x i64] }*
  %_argc888 = alloca i64
  %_argv890 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv890
  store i64 %argc, i64* %_argc888
  %_raw_array893 = call i64* @oat_alloc_array(i64 1)
  %_array894 = bitcast i64* %_raw_array893 to { i64, [0 x i64] }*
  %_raw_array895 = call i64* @oat_alloc_array(i64 1)
  %_array896 = bitcast i64* %_raw_array895 to { i64, [0 x i64] }*
  %_raw_array897 = call i64* @oat_alloc_array(i64 1)
  %_array898 = bitcast i64* %_raw_array897 to { i64, [0 x i64] }*
  %_raw_array899 = call i64* @oat_alloc_array(i64 3)
  %_array900 = bitcast i64* %_raw_array899 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep901 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array900, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array894, { i64, [0 x i64] }** %_gep901
  %_gep903 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array900, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array896, { i64, [0 x i64] }** %_gep903
  %_gep905 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array900, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array898, { i64, [0 x i64] }** %_gep905
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array900, { i64, [0 x { i64, [0 x i64] }*] }** %_a1907
  %_raw_array909 = call i64* @oat_alloc_array(i64 1)
  %_array910 = bitcast i64* %_raw_array909 to { i64, [0 x i64] }*
  %_raw_array911 = call i64* @oat_alloc_array(i64 1)
  %_array912 = bitcast i64* %_raw_array911 to { i64, [0 x i64] }*
  %_raw_array913 = call i64* @oat_alloc_array(i64 1)
  %_array914 = bitcast i64* %_raw_array913 to { i64, [0 x i64] }*
  %_raw_array915 = call i64* @oat_alloc_array(i64 3)
  %_array916 = bitcast i64* %_raw_array915 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep917 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array916, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array910, { i64, [0 x i64] }** %_gep917
  %_gep919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array916, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array912, { i64, [0 x i64] }** %_gep919
  %_gep921 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array916, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array914, { i64, [0 x i64] }** %_gep921
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array916, { i64, [0 x { i64, [0 x i64] }*] }** %_a2923
  %_raw_array925 = call i64* @oat_alloc_array(i64 1)
  %_array926 = bitcast i64* %_raw_array925 to { i64, [0 x i64] }*
  %_raw_array927 = call i64* @oat_alloc_array(i64 1)
  %_array928 = bitcast i64* %_raw_array927 to { i64, [0 x i64] }*
  %_raw_array929 = call i64* @oat_alloc_array(i64 1)
  %_array930 = bitcast i64* %_raw_array929 to { i64, [0 x i64] }*
  %_raw_array931 = call i64* @oat_alloc_array(i64 3)
  %_array932 = bitcast i64* %_raw_array931 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep933 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array932, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array926, { i64, [0 x i64] }** %_gep933
  %_gep935 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array932, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array928, { i64, [0 x i64] }** %_gep935
  %_gep937 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array932, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array930, { i64, [0 x i64] }** %_gep937
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array932, { i64, [0 x { i64, [0 x i64] }*] }** %_a3939
  %_raw_array941 = call i64* @oat_alloc_array(i64 1)
  %_array942 = bitcast i64* %_raw_array941 to { i64, [0 x i64] }*
  %_raw_array943 = call i64* @oat_alloc_array(i64 1)
  %_array944 = bitcast i64* %_raw_array943 to { i64, [0 x i64] }*
  %_raw_array945 = call i64* @oat_alloc_array(i64 1)
  %_array946 = bitcast i64* %_raw_array945 to { i64, [0 x i64] }*
  %_raw_array947 = call i64* @oat_alloc_array(i64 3)
  %_array948 = bitcast i64* %_raw_array947 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array948, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array942, { i64, [0 x i64] }** %_gep949
  %_gep951 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array948, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array944, { i64, [0 x i64] }** %_gep951
  %_gep953 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array948, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array946, { i64, [0 x i64] }** %_gep953
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array948, { i64, [0 x { i64, [0 x i64] }*] }** %_a4955
  %_raw_array957 = call i64* @oat_alloc_array(i64 3)
  %_array958 = bitcast i64* %_raw_array957 to { i64, [0 x i64] }*
  %_gep959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep959
  %_gep961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep961
  %_gep963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep963
  store { i64, [0 x i64] }* %_array958, { i64, [0 x i64] }** %_a5965
  %_a5967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5965
  %_a2968 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2923
  %_ptr969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2968, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5967, { i64, [0 x i64] }** %_ptr969
  %_a2973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2923
  %_ptr971 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2973, i32 0, i32 1, i32 0
  %_resPtr972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr971
  %_ptr974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr972, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr974
  %_a2976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2923
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2976, { i64, [0 x { i64, [0 x i64] }*] }** %_a1907
  %_a1978 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1907
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1978, { i64, [0 x { i64, [0 x i64] }*] }** %_a3939
  %_a4980 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4955
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4980, { i64, [0 x { i64, [0 x i64] }*] }** %_a1907
  %_a3982 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3939
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3982, { i64, [0 x { i64, [0 x i64] }*] }** %_a2923
  %_a2984 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2923
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2984, { i64, [0 x { i64, [0 x i64] }*] }** %_a4955
  %_a4986 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4955
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4986, { i64, [0 x { i64, [0 x i64] }*] }** %_a3939
  %_a3992 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3939
  %_ptr990 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3992, i32 0, i32 1, i32 0
  %_resPtr991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr990
  %_ptr988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr991, i32 0, i32 1, i32 0
  %_resPtr989 = load i64, i64* %_ptr988
  ret i64 %_resPtr989
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
