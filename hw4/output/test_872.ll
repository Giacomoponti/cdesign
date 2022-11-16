; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2956 = alloca i8*
  %_argc2942 = alloca i64
  %_argv2944 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2944
  store i64 %argc, i64* %_argc2942
  %_raw_array2947 = call i64* @oat_alloc_array(i64 3)
  %_array2948 = bitcast i64* %_raw_array2947 to { i64, [0 x i64] }*
  %_gep2949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2948, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep2949
  %_gep2951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2948, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep2951
  %_gep2953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2948, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep2953
  %_id2955 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2948)
  store i8* %_id2955, i8** %_str2956
  %_str2958 = load i8*, i8** %_str2956
  call void @print_string(i8* %_str2958)
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
