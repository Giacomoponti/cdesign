; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1222 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1199
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1201
  %_argv1201 = alloca { i64, [0 x i8*] }*
  %_argc1199 = alloca i64
  %_raw_array1204 = call i64* @oat_alloc_array(i64 2)
  %_array1205 = bitcast i64* %_raw_array1204 to { i64, [0 x i64] }*
  %_gep1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1206
  %_gep1208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1208
  %_raw_array1210 = call i64* @oat_alloc_array(i64 2)
  %_array1211 = bitcast i64* %_raw_array1210 to { i64, [0 x i64] }*
  %_gep1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1212
  %_gep1214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1214
  %_raw_array1216 = call i64* @oat_alloc_array(i64 2)
  %_array1217 = bitcast i64* %_raw_array1216 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1218 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1205, { i64, [0 x i64] }** %_gep1218
  %_gep1220 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1211, { i64, [0 x i64] }** %_gep1220
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1217, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1222
  %_arr1228 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1222
  %_ptr1226 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1228, i32 0, i32 1, i32 0
  %_resPtr1227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1226
  %_ptr1224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1227, i32 0, i32 1, i32 0
  %_resPtr1225 = load i64, i64* %_ptr1224
  ret i64 %_resPtr1225
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
