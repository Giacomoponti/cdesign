; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1143 = alloca i64
  %_a1204 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1207 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_x1143
  %_x1145 = load i64, i64* %_x1143
  %_bop1146 = add i64 %_x1145, 0
  %_bop1147 = add i64 %_bop1146, 0
  %_x1148 = load i64, i64* %_x1143
  %_bop1149 = add i64 %_x1148, 0
  %_bop1150 = add i64 %_bop1149, 1
  %_x1151 = load i64, i64* %_x1143
  %_bop1152 = add i64 %_x1151, 0
  %_bop1153 = add i64 %_bop1152, 2
  %_raw_array1154 = call i64* @oat_alloc_array(i64 3)
  %_array1155 = bitcast i64* %_raw_array1154 to { i64, [0 x i64] }*
  %_gep1156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1155, i32 0, i32 1, i32 0
  store i64 %_bop1147, i64* %_gep1156
  %_gep1158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1155, i32 0, i32 1, i32 1
  store i64 %_bop1150, i64* %_gep1158
  %_gep1160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1155, i32 0, i32 1, i32 2
  store i64 %_bop1153, i64* %_gep1160
  %_x1162 = load i64, i64* %_x1143
  %_bop1163 = add i64 %_x1162, 1
  %_bop1164 = add i64 %_bop1163, 0
  %_x1165 = load i64, i64* %_x1143
  %_bop1166 = add i64 %_x1165, 1
  %_bop1167 = add i64 %_bop1166, 1
  %_x1168 = load i64, i64* %_x1143
  %_bop1169 = add i64 %_x1168, 1
  %_bop1170 = add i64 %_bop1169, 2
  %_raw_array1171 = call i64* @oat_alloc_array(i64 3)
  %_array1172 = bitcast i64* %_raw_array1171 to { i64, [0 x i64] }*
  %_gep1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1172, i32 0, i32 1, i32 0
  store i64 %_bop1164, i64* %_gep1173
  %_gep1175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1172, i32 0, i32 1, i32 1
  store i64 %_bop1167, i64* %_gep1175
  %_gep1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1172, i32 0, i32 1, i32 2
  store i64 %_bop1170, i64* %_gep1177
  %_x1179 = load i64, i64* %_x1143
  %_bop1180 = add i64 %_x1179, 2
  %_bop1181 = add i64 %_bop1180, 0
  %_x1182 = load i64, i64* %_x1143
  %_bop1183 = add i64 %_x1182, 2
  %_bop1184 = add i64 %_bop1183, 1
  %_x1185 = load i64, i64* %_x1143
  %_bop1186 = add i64 %_x1185, 2
  %_bop1187 = add i64 %_bop1186, 2
  %_raw_array1188 = call i64* @oat_alloc_array(i64 3)
  %_array1189 = bitcast i64* %_raw_array1188 to { i64, [0 x i64] }*
  %_gep1190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 0
  store i64 %_bop1181, i64* %_gep1190
  %_gep1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 1
  store i64 %_bop1184, i64* %_gep1192
  %_gep1194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 2
  store i64 %_bop1187, i64* %_gep1194
  %_raw_array1196 = call i64* @oat_alloc_array(i64 3)
  %_array1197 = bitcast i64* %_raw_array1196 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1155, { i64, [0 x i64] }** %_gep1198
  %_gep1200 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1172, { i64, [0 x i64] }** %_gep1200
  %_gep1202 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1189, { i64, [0 x i64] }** %_gep1202
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1197, { i64, [0 x { i64, [0 x i64] }*] }** %_a1204
  %_a1206 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1204
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1206, { i64, [0 x { i64, [0 x i64] }*] }** %_b1207
  %_b1213 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1207
  %_ptr1211 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1213, i32 0, i32 1, i32 2
  %_resPtr1212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1211
  %_ptr1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1212, i32 0, i32 1, i32 1
  %_resPtr1210 = load i64, i64* %_ptr1209
  ret i64 %_resPtr1210
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
