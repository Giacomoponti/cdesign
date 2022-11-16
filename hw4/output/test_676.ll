; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2098 = alloca { i64, [0 x i64] }*
  %_argc2085 = alloca i64
  %_argv2087 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2087
  store i64 %argc, i64* %_argc2085
  %_raw_array2090 = call i64* @oat_alloc_array(i64 3)
  %_array2091 = bitcast i64* %_raw_array2090 to { i64, [0 x i64] }*
  %_gep2092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2091, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep2092
  %_gep2094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2091, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep2094
  %_gep2096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2091, i32 0, i32 1, i32 2
  store i64 19, i64* %_gep2096
  store { i64, [0 x i64] }* %_array2091, { i64, [0 x i64] }** %_a2098
  %_a2102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2098
  %_ptr2100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2102, i32 0, i32 1, i32 2
  %_resPtr2101 = load i64, i64* %_ptr2100
  ret i64 %_resPtr2101
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
