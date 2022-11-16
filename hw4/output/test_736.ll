; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a11033 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a21049 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a31065 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a41081 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a51091 = alloca { i64, [0 x i64] }*
  %_argc1014 = alloca i64
  %_argv1016 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1016
  store i64 %argc, i64* %_argc1014
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
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, { i64, [0 x { i64, [0 x i64] }*] }** %_a11033
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
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1042, { i64, [0 x { i64, [0 x i64] }*] }** %_a21049
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
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1058, { i64, [0 x { i64, [0 x i64] }*] }** %_a31065
  %_raw_array1067 = call i64* @oat_alloc_array(i64 1)
  %_array1068 = bitcast i64* %_raw_array1067 to { i64, [0 x i64] }*
  %_raw_array1069 = call i64* @oat_alloc_array(i64 1)
  %_array1070 = bitcast i64* %_raw_array1069 to { i64, [0 x i64] }*
  %_raw_array1071 = call i64* @oat_alloc_array(i64 1)
  %_array1072 = bitcast i64* %_raw_array1071 to { i64, [0 x i64] }*
  %_raw_array1073 = call i64* @oat_alloc_array(i64 3)
  %_array1074 = bitcast i64* %_raw_array1073 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1075 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1074, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1068, { i64, [0 x i64] }** %_gep1075
  %_gep1077 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1074, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1070, { i64, [0 x i64] }** %_gep1077
  %_gep1079 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1074, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1072, { i64, [0 x i64] }** %_gep1079
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1074, { i64, [0 x { i64, [0 x i64] }*] }** %_a41081
  %_raw_array1083 = call i64* @oat_alloc_array(i64 3)
  %_array1084 = bitcast i64* %_raw_array1083 to { i64, [0 x i64] }*
  %_gep1085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep1085
  %_gep1087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1087
  %_gep1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep1089
  store { i64, [0 x i64] }* %_array1084, { i64, [0 x i64] }** %_a51091
  %_a51093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a51091
  %_a21094 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21049
  %_ptr1095 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a21094, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a51093, { i64, [0 x i64] }** %_ptr1095
  %_a21099 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21049
  %_ptr1097 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a21099, i32 0, i32 1, i32 0
  %_resPtr1098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1097
  %_ptr1100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1098, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr1100
  %_a21102 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21049
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a21102, { i64, [0 x { i64, [0 x i64] }*] }** %_a11033
  %_a11104 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a11033
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a11104, { i64, [0 x { i64, [0 x i64] }*] }** %_a31065
  %_a41106 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a41081
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a41106, { i64, [0 x { i64, [0 x i64] }*] }** %_a11033
  %_a31108 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a31065
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a31108, { i64, [0 x { i64, [0 x i64] }*] }** %_a21049
  %_a21110 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21049
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a21110, { i64, [0 x { i64, [0 x i64] }*] }** %_a41081
  %_a41112 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a41081
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a41112, { i64, [0 x { i64, [0 x i64] }*] }** %_a31065
  %_a31118 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a31065
  %_ptr1116 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a31118, i32 0, i32 1, i32 0
  %_resPtr1117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1116
  %_ptr1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1117, i32 0, i32 1, i32 0
  %_resPtr1115 = load i64, i64* %_ptr1114
  ret i64 %_resPtr1115
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
