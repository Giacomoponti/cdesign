; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs1917 = alloca { i64, [0 x i8*] }*
  %_argc1906 = alloca i64
  %_argv1908 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1908
  store i64 %argc, i64* %_argc1906
  %_raw_array1911 = call i64* @oat_alloc_array(i64 2)
  %_array1912 = bitcast i64* %_raw_array1911 to { i64, [0 x i8*] }*
  %_gep1913 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1912, i32 0, i32 1, i32 0
  store void null, void* %_gep1913
  %_gep1915 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1912, i32 0, i32 1, i32 1
  store void null, void* %_gep1915
  store { i64, [0 x i8*] }* %_array1912, { i64, [0 x i8*] }** %_strs1917
  %_strs1921 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1917
  %_ptr1919 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1921, i32 0, i32 1, i32 0
  %_resPtr1920 = load i8*, i8** %_ptr1919
  call void @print_string(i8* %_resPtr1920)
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
