; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1208 = alloca { i64, [0 x i64] }*
  %_raw_array1200 = call i64* @oat_alloc_array(i64 3)
  %_array1201 = bitcast i64* %_raw_array1200 to { i64, [0 x i64] }*
  %_gep1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1202
  %_gep1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1204
  %_gep1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1201, i32 0, i32 1, i32 2
  store i64 19, i64* %_gep1206
  store { i64, [0 x i64] }* %_array1201, { i64, [0 x i64] }** %_a1208
  %_a1212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1208
  %_ptr1210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1212, i32 0, i32 1, i32 2
  %_resPtr1211 = load i64, i64* %_ptr1210
  ret i64 %_resPtr1211
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
