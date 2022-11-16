; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a11017 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a21033 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a31049 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a41065 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a51075 = alloca { i64, [0 x i64] }*
  %_argc998 = alloca i64
  %_argv1000 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1000
  store i64 %argc, i64* %_argc998
  %_raw_array1003 = call i64* @oat_alloc_array(i64 1)
  %_array1004 = bitcast i64* %_raw_array1003 to { i64, [0 x i64] }*
  %_raw_array1005 = call i64* @oat_alloc_array(i64 1)
  %_array1006 = bitcast i64* %_raw_array1005 to { i64, [0 x i64] }*
  %_raw_array1007 = call i64* @oat_alloc_array(i64 1)
  %_array1008 = bitcast i64* %_raw_array1007 to { i64, [0 x i64] }*
  %_raw_array1009 = call i64* @oat_alloc_array(i64 3)
  %_array1010 = bitcast i64* %_raw_array1009 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1011 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1010, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1004, { i64, [0 x i64] }** %_gep1011
  %_gep1013 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1010, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1006, { i64, [0 x i64] }** %_gep1013
  %_gep1015 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1010, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1008, { i64, [0 x i64] }** %_gep1015
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1010, { i64, [0 x { i64, [0 x i64] }*] }** %_a11017
  %_raw_array1019 = call i64* @oat_alloc_array(i64 1)
  %_array1020 = bitcast i64* %_raw_array1019 to { i64, [0 x i64] }*
  %_raw_array1021 = call i64* @oat_alloc_array(i64 1)
  %_array1022 = bitcast i64* %_raw_array1021 to { i64, [0 x i64] }*
  %_raw_array1023 = call i64* @oat_alloc_array(i64 1)
  %_array1024 = bitcast i64* %_raw_array1023 to { i64, [0 x i64] }*
  %_raw_array1025 = call i64* @oat_alloc_array(i64 3)
  %_array1026 = bitcast i64* %_raw_array1025 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1027 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1020, { i64, [0 x i64] }** %_gep1027
  %_gep1029 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1022, { i64, [0 x i64] }** %_gep1029
  %_gep1031 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1024, { i64, [0 x i64] }** %_gep1031
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, { i64, [0 x { i64, [0 x i64] }*] }** %_a21033
  %_raw_array1035 = call i64* @oat_alloc_array(i64 1)
  %_array1036 = bitcast i64* %_raw_array1035 to { i64, [0 x i64] }*
  %_raw_array1037 = call i64* @oat_alloc_array(i64 1)
  %_array1038 = bitcast i64* %_raw_array1037 to { i64, [0 x i64] }*
  %_raw_array1039 = call i64* @oat_alloc_array(i64 1)
  %_array1040 = bitcast i64* %_raw_array1039 to { i64, [0 x i64] }*
  %_raw_array1041 = call i64* @oat_alloc_array(i64 3)
  %_array1042 = bitcast i64* %_raw_array1041 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1043 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1042, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1036, { i64, [0 x i64] }** %_gep1043
  %_gep1045 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1042, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1038, { i64, [0 x i64] }** %_gep1045
  %_gep1047 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1042, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1040, { i64, [0 x i64] }** %_gep1047
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1042, { i64, [0 x { i64, [0 x i64] }*] }** %_a31049
  %_raw_array1051 = call i64* @oat_alloc_array(i64 1)
  %_array1052 = bitcast i64* %_raw_array1051 to { i64, [0 x i64] }*
  %_raw_array1053 = call i64* @oat_alloc_array(i64 1)
  %_array1054 = bitcast i64* %_raw_array1053 to { i64, [0 x i64] }*
  %_raw_array1055 = call i64* @oat_alloc_array(i64 1)
  %_array1056 = bitcast i64* %_raw_array1055 to { i64, [0 x i64] }*
  %_raw_array1057 = call i64* @oat_alloc_array(i64 3)
  %_array1058 = bitcast i64* %_raw_array1057 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1059 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1058, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1052, { i64, [0 x i64] }** %_gep1059
  %_gep1061 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1058, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1054, { i64, [0 x i64] }** %_gep1061
  %_gep1063 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1058, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1056, { i64, [0 x i64] }** %_gep1063
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1058, { i64, [0 x { i64, [0 x i64] }*] }** %_a41065
  %_raw_array1067 = call i64* @oat_alloc_array(i64 3)
  %_array1068 = bitcast i64* %_raw_array1067 to { i64, [0 x i64] }*
  %_gep1069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1068, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1069
  %_gep1071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1068, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1071
  %_gep1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1068, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1073
  store { i64, [0 x i64] }* %_array1068, { i64, [0 x i64] }** %_a51075
  %_a51077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a51075
  %_a21078 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21033
  %_ptr1079 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a21078, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a51077, { i64, [0 x i64] }** %_ptr1079
  %_a21083 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21033
  %_ptr1081 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a21083, i32 0, i32 1, i32 0
  %_resPtr1082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1081
  %_ptr1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1082, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr1084
  %_a21086 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21033
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a21086, { i64, [0 x { i64, [0 x i64] }*] }** %_a11017
  %_a11088 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a11017
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a11088, { i64, [0 x { i64, [0 x i64] }*] }** %_a31049
  %_a41090 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a41065
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a41090, { i64, [0 x { i64, [0 x i64] }*] }** %_a11017
  %_a31092 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a31049
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a31092, { i64, [0 x { i64, [0 x i64] }*] }** %_a21033
  %_a21094 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21033
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a21094, { i64, [0 x { i64, [0 x i64] }*] }** %_a41065
  %_a41096 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a41065
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a41096, { i64, [0 x { i64, [0 x i64] }*] }** %_a31049
  %_a31102 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a31049
  %_ptr1100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a31102, i32 0, i32 1, i32 0
  %_resPtr1101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1100
  %_ptr1098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1101, i32 0, i32 1, i32 0
  %_resPtr1099 = load i64, i64* %_ptr1098
  ret i64 %_resPtr1099
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
