; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1152 = alloca i64
  %_a1213 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1216 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 10, i64* %_x1152
  %_x1154 = load i64, i64* %_x1152
  %_bop1155 = add i64 %_x1154, 0
  %_bop1156 = add i64 %_bop1155, 0
  %_x1157 = load i64, i64* %_x1152
  %_bop1158 = add i64 %_x1157, 0
  %_bop1159 = add i64 %_bop1158, 1
  %_x1160 = load i64, i64* %_x1152
  %_bop1161 = add i64 %_x1160, 0
  %_bop1162 = add i64 %_bop1161, 2
  %_raw_array1163 = call i64* @oat_alloc_array(i64 3)
  %_array1164 = bitcast i64* %_raw_array1163 to { i64, [0 x i64] }*
  %_gep1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1164, i32 0, i32 1, i32 0
  store i64 %_bop1156, i64* %_gep1165
  %_gep1167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1164, i32 0, i32 1, i32 1
  store i64 %_bop1159, i64* %_gep1167
  %_gep1169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1164, i32 0, i32 1, i32 2
  store i64 %_bop1162, i64* %_gep1169
  %_x1171 = load i64, i64* %_x1152
  %_bop1172 = add i64 %_x1171, 1
  %_bop1173 = add i64 %_bop1172, 0
  %_x1174 = load i64, i64* %_x1152
  %_bop1175 = add i64 %_x1174, 1
  %_bop1176 = add i64 %_bop1175, 1
  %_x1177 = load i64, i64* %_x1152
  %_bop1178 = add i64 %_x1177, 1
  %_bop1179 = add i64 %_bop1178, 2
  %_raw_array1180 = call i64* @oat_alloc_array(i64 3)
  %_array1181 = bitcast i64* %_raw_array1180 to { i64, [0 x i64] }*
  %_gep1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 0
  store i64 %_bop1173, i64* %_gep1182
  %_gep1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 1
  store i64 %_bop1176, i64* %_gep1184
  %_gep1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 2
  store i64 %_bop1179, i64* %_gep1186
  %_x1188 = load i64, i64* %_x1152
  %_bop1189 = add i64 %_x1188, 2
  %_bop1190 = add i64 %_bop1189, 0
  %_x1191 = load i64, i64* %_x1152
  %_bop1192 = add i64 %_x1191, 2
  %_bop1193 = add i64 %_bop1192, 1
  %_x1194 = load i64, i64* %_x1152
  %_bop1195 = add i64 %_x1194, 2
  %_bop1196 = add i64 %_bop1195, 2
  %_raw_array1197 = call i64* @oat_alloc_array(i64 3)
  %_array1198 = bitcast i64* %_raw_array1197 to { i64, [0 x i64] }*
  %_gep1199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1198, i32 0, i32 1, i32 0
  store i64 %_bop1190, i64* %_gep1199
  %_gep1201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1198, i32 0, i32 1, i32 1
  store i64 %_bop1193, i64* %_gep1201
  %_gep1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1198, i32 0, i32 1, i32 2
  store i64 %_bop1196, i64* %_gep1203
  %_raw_array1205 = call i64* @oat_alloc_array(i64 3)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1207 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1164, { i64, [0 x i64] }** %_gep1207
  %_gep1209 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1181, { i64, [0 x i64] }** %_gep1209
  %_gep1211 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1198, { i64, [0 x i64] }** %_gep1211
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1206, { i64, [0 x { i64, [0 x i64] }*] }** %_a1213
  %_a1215 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1213
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1215, { i64, [0 x { i64, [0 x i64] }*] }** %_b1216
  %_b1222 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1216
  %_ptr1220 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1222, i32 0, i32 1, i32 2
  %_resPtr1221 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1220
  %_ptr1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1221, i32 0, i32 1, i32 1
  %_resPtr1219 = load i64, i64* %_ptr1218
  ret i64 %_resPtr1219
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
