; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1253 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1232 = alloca i64
  store i64 %argc, i64* %_argc1232
  %_argv1234 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1234
  %_raw_array1235 = call i64* @oat_alloc_array(i64 2)
  %_array1236 = bitcast i64* %_raw_array1235 to { i64, [0 x i64] }*
  %_gep1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1237
  %_gep1239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1239
  %_raw_array1241 = call i64* @oat_alloc_array(i64 2)
  %_array1242 = bitcast i64* %_raw_array1241 to { i64, [0 x i64] }*
  %_gep1243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1243
  %_gep1245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1242, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1245
  %_raw_array1247 = call i64* @oat_alloc_array(i64 2)
  %_array1248 = bitcast i64* %_raw_array1247 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1249 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1248, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1236, { i64, [0 x i64] }** %_gep1249
  %_gep1251 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1248, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1242, { i64, [0 x i64] }** %_gep1251
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1248, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1253
  %_arr1259 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1253
  %_ptr1257 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1259, i32 0, i32 1, i32 0
  %_resPtr1258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1257
  %_ptr1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1258, i32 0, i32 1, i32 0
  %_resPtr1256 = load i64, i64* %_ptr1255
  ret i64 %_resPtr1256
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
