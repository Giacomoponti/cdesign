; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2082 = alloca { i64, [0 x i64] }*
  %_str2086 = alloca i8*
  %_argc2071 = alloca i64
  store i64 %argc, i64* %_argc2071
  %_argv2073 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2073
  %_raw_array2074 = call i64* @oat_alloc_array(i64 3)
  %_array2075 = bitcast i64* %_raw_array2074 to { i64, [0 x i64] }*
  %_gep2076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2075, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep2076
  %_gep2078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2075, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep2078
  %_gep2080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2075, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep2080
  store { i64, [0 x i64] }* %_array2075, { i64, [0 x i64] }** %_a2082
  %_a2084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2082
  %_2085 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2084)
  store i8* %_2085, i8** %_str2086
  %_str2088 = load i8*, i8** %_str2086
  call void @print_string(i8* %_str2088)
  ret i64 0
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
