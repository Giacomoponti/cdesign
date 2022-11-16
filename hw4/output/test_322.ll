; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  store i64 %argc, i64* %_argc1169
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1171
  %_argv1171 = alloca { i64, [0 x i8*] }*
  %_argc1169 = alloca i64
  %_raw_array1174 = call i64* @oat_alloc_array(i64 2)
  %_array1175 = bitcast i64* %_raw_array1174 to { i64, [0 x i64] }*
  %_gep1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1175, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1176
  %_gep1178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1175, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1178
  %_raw_array1180 = call i64* @oat_alloc_array(i64 2)
  %_array1181 = bitcast i64* %_raw_array1180 to { i64, [0 x i64] }*
  %_gep1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1182
  %_gep1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1184
  %_raw_array1186 = call i64* @oat_alloc_array(i64 2)
  %_array1187 = bitcast i64* %_raw_array1186 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1188 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1187, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1175, { i64, [0 x i64] }** %_gep1188
  %_gep1190 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1187, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1181, { i64, [0 x i64] }** %_gep1190
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1187, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1197 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr1195 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1197, i32 0, i32 1, i32 1
  %_resPtr1196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1195
  %_ptr1193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1196, i32 0, i32 1, i32 1
  %_resPtr1194 = load i64, i64* %_ptr1193
  ret i64 %_resPtr1194
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
