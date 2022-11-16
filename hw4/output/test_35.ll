; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1101 = alloca i64
  %_a1162 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1165 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_x1101
  %_x1103 = load i64, i64* %_x1101
  %_bop1104 = add i64 %_x1103, 0
  %_bop1105 = add i64 %_bop1104, 0
  %_x1106 = load i64, i64* %_x1101
  %_bop1107 = add i64 %_x1106, 0
  %_bop1108 = add i64 %_bop1107, 1
  %_x1109 = load i64, i64* %_x1101
  %_bop1110 = add i64 %_x1109, 0
  %_bop1111 = add i64 %_bop1110, 2
  %_raw_array1112 = call i64* @oat_alloc_array(i64 3)
  %_array1113 = bitcast i64* %_raw_array1112 to { i64, [0 x i64] }*
  %_gep1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 0
  store i64 %_bop1105, i64* %_gep1114
  %_gep1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 1
  store i64 %_bop1108, i64* %_gep1116
  %_gep1118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1113, i32 0, i32 1, i32 2
  store i64 %_bop1111, i64* %_gep1118
  %_x1120 = load i64, i64* %_x1101
  %_bop1121 = add i64 %_x1120, 1
  %_bop1122 = add i64 %_bop1121, 0
  %_x1123 = load i64, i64* %_x1101
  %_bop1124 = add i64 %_x1123, 1
  %_bop1125 = add i64 %_bop1124, 1
  %_x1126 = load i64, i64* %_x1101
  %_bop1127 = add i64 %_x1126, 1
  %_bop1128 = add i64 %_bop1127, 2
  %_raw_array1129 = call i64* @oat_alloc_array(i64 3)
  %_array1130 = bitcast i64* %_raw_array1129 to { i64, [0 x i64] }*
  %_gep1131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 0
  store i64 %_bop1122, i64* %_gep1131
  %_gep1133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 1
  store i64 %_bop1125, i64* %_gep1133
  %_gep1135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 2
  store i64 %_bop1128, i64* %_gep1135
  %_x1137 = load i64, i64* %_x1101
  %_bop1138 = add i64 %_x1137, 2
  %_bop1139 = add i64 %_bop1138, 0
  %_x1140 = load i64, i64* %_x1101
  %_bop1141 = add i64 %_x1140, 2
  %_bop1142 = add i64 %_bop1141, 1
  %_x1143 = load i64, i64* %_x1101
  %_bop1144 = add i64 %_x1143, 2
  %_bop1145 = add i64 %_bop1144, 2
  %_raw_array1146 = call i64* @oat_alloc_array(i64 3)
  %_array1147 = bitcast i64* %_raw_array1146 to { i64, [0 x i64] }*
  %_gep1148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 0
  store i64 %_bop1139, i64* %_gep1148
  %_gep1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 1
  store i64 %_bop1142, i64* %_gep1150
  %_gep1152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1147, i32 0, i32 1, i32 2
  store i64 %_bop1145, i64* %_gep1152
  %_raw_array1154 = call i64* @oat_alloc_array(i64 3)
  %_array1155 = bitcast i64* %_raw_array1154 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1113, { i64, [0 x i64] }** %_gep1156
  %_gep1158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1130, { i64, [0 x i64] }** %_gep1158
  %_gep1160 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1147, { i64, [0 x i64] }** %_gep1160
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, { i64, [0 x { i64, [0 x i64] }*] }** %_a1162
  %_a1164 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1162
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1164, { i64, [0 x { i64, [0 x i64] }*] }** %_b1165
  %_b1171 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1165
  %_ptr1169 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1171, i32 0, i32 1, i32 2
  %_resPtr1170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1169
  %_ptr1167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1170, i32 0, i32 1, i32 1
  %_resPtr1168 = load i64, i64* %_ptr1167
  ret i64 %_resPtr1168
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
