; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x1137 = alloca i64
  store i64 %x, i64* %_x1137
  %_x1138 = load i64, i64* %_x1137
  ret i64 %_x1138
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y1132 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y1132
  %_y1135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1132
  %_ptr1133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1135, i32 0, i32 1, i32 2
  %_resPtr1134 = load i64, i64* %_ptr1133
  ret i64 %_resPtr1134
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr1081 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1093 = alloca { i64, [0 x i64] }*
  %_p1095 = alloca i64
  %_j1097 = alloca i64
  %_argc1060 = alloca i64
  store i64 %argc, i64* %_argc1060
  %_argv1062 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1062
  %_raw_array1063 = call i64* @oat_alloc_array(i64 2)
  %_array1064 = bitcast i64* %_raw_array1063 to { i64, [0 x i64] }*
  %_gep1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1064, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1065
  %_gep1067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1064, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1067
  %_raw_array1069 = call i64* @oat_alloc_array(i64 2)
  %_array1070 = bitcast i64* %_raw_array1069 to { i64, [0 x i64] }*
  %_gep1071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1070, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1071
  %_gep1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1070, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1073
  %_raw_array1075 = call i64* @oat_alloc_array(i64 2)
  %_array1076 = bitcast i64* %_raw_array1075 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1077 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1076, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1064, { i64, [0 x i64] }** %_gep1077
  %_gep1079 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1076, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1070, { i64, [0 x i64] }** %_gep1079
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1076, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1081
  %_raw_array1083 = call i64* @oat_alloc_array(i64 4)
  %_array1084 = bitcast i64* %_raw_array1083 to { i64, [0 x i64] }*
  %_gep1085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1085
  %_gep1087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1087
  %_gep1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep1089
  %_gep1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1084, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep1091
  store { i64, [0 x i64] }* %_array1084, { i64, [0 x i64] }** %_arr1093
  store i64 0, i64* %_p1095
  store i64 0, i64* %_j1097
  br label %_pre1102
_pre1102:
  %_j1099 = load i64, i64* %_j1097
  %_bop1100 = icmp slt i64 %_j1099, 100
  %_cnd1104 = icmp eq i1 %_bop1100, 0
  br i1 %_cnd1104, label %_post1101, label %_body1103
_body1103:
  %_p1105 = load i64, i64* %_p1095
  %_bop1106 = add i64 %_p1105, 1
  store i64 %_bop1106, i64* %_p1095
  %_j1108 = load i64, i64* %_j1097
  %_bop1109 = add i64 %_j1108, 1
  store i64 %_bop1109, i64* %_j1097
  br label %_pre1102
_post1101:
  %_arr1111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1093
  %_1112 = call i64 @g({ i64, [0 x i64] }* %_arr1111)
  %_i1113 = load i64, i64* @i
  %_1114 = call i64 @f(i64 %_i1113)
  %_bop1115 = add i64 %_1112, %_1114
  %_arr1118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1093
  %_ptr1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1118, i32 0, i32 1, i32 3
  %_resPtr1117 = load i64, i64* %_ptr1116
  %_1119 = call i64 @f(i64 %_resPtr1117)
  %_bop1120 = add i64 %_bop1115, %_1119
  %_garr1125 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1081
  %_ptr1123 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1125, i32 0, i32 1, i32 1
  %_resPtr1124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1123
  %_ptr1121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1124, i32 0, i32 1, i32 1
  %_resPtr1122 = load i64, i64* %_ptr1121
  %_1126 = call i64 @f(i64 %_resPtr1122)
  %_bop1127 = add i64 %_bop1120, %_1126
  %_p1128 = load i64, i64* %_p1095
  %_1129 = call i64 @f(i64 %_p1128)
  %_bop1130 = add i64 %_bop1127, %_1129
  ret i64 %_bop1130
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
