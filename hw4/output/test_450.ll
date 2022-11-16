; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1226 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1203 = alloca i64
  %_argv1205 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1205
  store i64 %argc, i64* %_argc1203
  %_raw_array1208 = call i64* @oat_alloc_array(i64 2)
  %_array1209 = bitcast i64* %_raw_array1208 to { i64, [0 x i64] }*
  %_gep1210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1210
  %_gep1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1212
  %_raw_array1214 = call i64* @oat_alloc_array(i64 2)
  %_array1215 = bitcast i64* %_raw_array1214 to { i64, [0 x i64] }*
  %_gep1216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1215, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep1216
  %_gep1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1215, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep1218
  %_raw_array1220 = call i64* @oat_alloc_array(i64 2)
  %_array1221 = bitcast i64* %_raw_array1220 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep1222 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1221, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1209, { i64, [0 x i64] }** %_gep1222
  %_gep1224 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1221, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1215, { i64, [0 x i64] }** %_gep1224
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1221, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1226
  %_arr1232 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1226
  %_ptr1230 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1232, i32 0, i32 1, i32 0
  %_resPtr1231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1230
  %_ptr1228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr1231, i32 0, i32 1, i32 0
  %_resPtr1229 = load i64, i64* %_ptr1228
  ret i64 %_resPtr1229
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
