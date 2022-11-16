; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a11036 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a21052 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a31068 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a41084 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a51094 = alloca { i64, [0 x i64] }*
  %_argc1017 = alloca i64
  %_argv1019 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1019
  store i64 %argc, i64* %_argc1017
  %_raw_array1022 = call i64* @oat_alloc_array(i64 1)
  %_array1023 = bitcast i64* %_raw_array1022 to { i64, [0 x i64] }*
  %_raw_array1024 = call i64* @oat_alloc_array(i64 1)
  %_array1025 = bitcast i64* %_raw_array1024 to { i64, [0 x i64] }*
  %_raw_array1026 = call i64* @oat_alloc_array(i64 1)
  %_array1027 = bitcast i64* %_raw_array1026 to { i64, [0 x i64] }*
  %_raw_array1028 = call i64* @oat_alloc_array(i64 3)
  %_array1029 = bitcast i64* %_raw_array1028 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1030 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1029, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1027, { i64, [0 x i64] }** %_gep1030
  %_gep1032 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1029, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1025, { i64, [0 x i64] }** %_gep1032
  %_gep1034 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1029, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1023, { i64, [0 x i64] }** %_gep1034
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1029, { i64, [0 x { i64, [0 x i64] }*] }** %_a11036
  %_raw_array1038 = call i64* @oat_alloc_array(i64 1)
  %_array1039 = bitcast i64* %_raw_array1038 to { i64, [0 x i64] }*
  %_raw_array1040 = call i64* @oat_alloc_array(i64 1)
  %_array1041 = bitcast i64* %_raw_array1040 to { i64, [0 x i64] }*
  %_raw_array1042 = call i64* @oat_alloc_array(i64 1)
  %_array1043 = bitcast i64* %_raw_array1042 to { i64, [0 x i64] }*
  %_raw_array1044 = call i64* @oat_alloc_array(i64 3)
  %_array1045 = bitcast i64* %_raw_array1044 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1046 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1043, { i64, [0 x i64] }** %_gep1046
  %_gep1048 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1041, { i64, [0 x i64] }** %_gep1048
  %_gep1050 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1039, { i64, [0 x i64] }** %_gep1050
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1045, { i64, [0 x { i64, [0 x i64] }*] }** %_a21052
  %_raw_array1054 = call i64* @oat_alloc_array(i64 1)
  %_array1055 = bitcast i64* %_raw_array1054 to { i64, [0 x i64] }*
  %_raw_array1056 = call i64* @oat_alloc_array(i64 1)
  %_array1057 = bitcast i64* %_raw_array1056 to { i64, [0 x i64] }*
  %_raw_array1058 = call i64* @oat_alloc_array(i64 1)
  %_array1059 = bitcast i64* %_raw_array1058 to { i64, [0 x i64] }*
  %_raw_array1060 = call i64* @oat_alloc_array(i64 3)
  %_array1061 = bitcast i64* %_raw_array1060 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1062 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1061, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1059, { i64, [0 x i64] }** %_gep1062
  %_gep1064 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1061, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1057, { i64, [0 x i64] }** %_gep1064
  %_gep1066 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1061, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1055, { i64, [0 x i64] }** %_gep1066
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1061, { i64, [0 x { i64, [0 x i64] }*] }** %_a31068
  %_raw_array1070 = call i64* @oat_alloc_array(i64 1)
  %_array1071 = bitcast i64* %_raw_array1070 to { i64, [0 x i64] }*
  %_raw_array1072 = call i64* @oat_alloc_array(i64 1)
  %_array1073 = bitcast i64* %_raw_array1072 to { i64, [0 x i64] }*
  %_raw_array1074 = call i64* @oat_alloc_array(i64 1)
  %_array1075 = bitcast i64* %_raw_array1074 to { i64, [0 x i64] }*
  %_raw_array1076 = call i64* @oat_alloc_array(i64 3)
  %_array1077 = bitcast i64* %_raw_array1076 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1078 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1077, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1075, { i64, [0 x i64] }** %_gep1078
  %_gep1080 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1077, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1073, { i64, [0 x i64] }** %_gep1080
  %_gep1082 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1077, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1071, { i64, [0 x i64] }** %_gep1082
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1077, { i64, [0 x { i64, [0 x i64] }*] }** %_a41084
  %_raw_array1086 = call i64* @oat_alloc_array(i64 3)
  %_array1087 = bitcast i64* %_raw_array1086 to { i64, [0 x i64] }*
  %_gep1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep1088
  %_gep1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep1090
  %_gep1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep1092
  store { i64, [0 x i64] }* %_array1087, { i64, [0 x i64] }** %_a51094
  %_a51096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a51094
  %_a21097 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21052
  %_ptr1098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a21097, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a51096, { i64, [0 x i64] }** %_ptr1098
  %_a21102 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21052
  %_ptr1100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a21102, i32 0, i32 1, i32 0
  %_resPtr1101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1100
  %_ptr1103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1101, i32 0, i32 1, i32 0
  store i64 2, i64* %_ptr1103
  %_a21105 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21052
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a21105, { i64, [0 x { i64, [0 x i64] }*] }** %_a11036
  %_a11107 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a11036
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a11107, { i64, [0 x { i64, [0 x i64] }*] }** %_a31068
  %_a41109 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a41084
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a41109, { i64, [0 x { i64, [0 x i64] }*] }** %_a11036
  %_a31111 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a31068
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a31111, { i64, [0 x { i64, [0 x i64] }*] }** %_a21052
  %_a21113 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a21052
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a21113, { i64, [0 x { i64, [0 x i64] }*] }** %_a41084
  %_a41115 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a41084
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a41115, { i64, [0 x { i64, [0 x i64] }*] }** %_a31068
  %_a31121 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a31068
  %_ptr1119 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a31121, i32 0, i32 1, i32 0
  %_resPtr1120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1119
  %_ptr1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1120, i32 0, i32 1, i32 0
  %_resPtr1118 = load i64, i64* %_ptr1117
  ret i64 %_resPtr1118
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
