; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2115 = alloca { i64, [0 x i8*] }*
  %_argc2104 = alloca i64
  %_argv2106 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2106
  store i64 %argc, i64* %_argc2104
  %_raw_array2109 = call i64* @oat_alloc_array(i64 2)
  %_array2110 = bitcast i64* %_raw_array2109 to { i64, [0 x i8*] }*
  %_gep2111 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2110, i32 0, i32 1, i32 0
  store void null, void* %_gep2111
  %_gep2113 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2110, i32 0, i32 1, i32 1
  store void null, void* %_gep2113
  store { i64, [0 x i8*] }* %_array2110, { i64, [0 x i8*] }** %_strs2115
  %_strs2119 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs2115
  %_ptr2117 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs2119, i32 0, i32 1, i32 0
  %_resPtr2118 = load i8*, i8** %_ptr2117
  call void @print_string(i8* %_resPtr2118)
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
