; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2165 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2152
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2154
  %_argv2154 = alloca { i64, [0 x i8*] }*
  %_argc2152 = alloca i64
  %_raw_array2157 = call i64* @oat_alloc_array(i64 3)
  %_array2158 = bitcast i64* %_raw_array2157 to { i64, [0 x i64] }*
  %_gep2159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2158, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep2159
  %_gep2161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2158, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep2161
  %_gep2163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2158, i32 0, i32 1, i32 2
  store i64 19, i64* %_gep2163
  store { i64, [0 x i64] }* %_array2158, { i64, [0 x i64] }** %_a2165
  %_a2169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2165
  %_ptr2167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2169, i32 0, i32 1, i32 2
  %_resPtr2168 = load i64, i64* %_ptr2167
  ret i64 %_resPtr2168
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
