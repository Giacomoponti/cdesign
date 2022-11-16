; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1173 = alloca i64
  %_argv1175 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1175
  store i64 %argc, i64* %_argc1173
  %_raw_array1178 = call i64* @oat_alloc_array(i64 2)
  %_array1179 = bitcast i64* %_raw_array1178 to { i64, [0 x i64] }*
  %_gep1180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1179, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1180
  %_gep1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1179, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1182
  %_raw_array1184 = call i64* @oat_alloc_array(i64 2)
  %_array1185 = bitcast i64* %_raw_array1184 to { i64, [0 x i64] }*
  %_gep1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1186
  %_gep1188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1188
  %_raw_array1190 = call i64* @oat_alloc_array(i64 2)
  %_array1191 = bitcast i64* %_raw_array1190 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1192 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1191, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1179, { i64, [0 x i64] }** %_gep1192
  %_gep1194 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1191, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1185, { i64, [0 x i64] }** %_gep1194
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1191, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1201 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_ptr1199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1201, i32 0, i32 1, i32 1
  %_resPtr1200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1199
  %_ptr1197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1200, i32 0, i32 1, i32 1
  %_resPtr1198 = load i64, i64* %_ptr1197
  ret i64 %_resPtr1198
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
