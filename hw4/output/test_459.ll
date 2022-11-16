; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i1871 = alloca i64
  %_a1881 = alloca { i64, [0 x i64] }*
  %_argc1866 = alloca i64
  %_argv1868 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1868
  store i64 %argc, i64* %_argc1866
  store i64 999, i64* %_i1871
  %_raw_array1873 = call i64* @oat_alloc_array(i64 3)
  %_array1874 = bitcast i64* %_raw_array1873 to { i64, [0 x i64] }*
  %_gep1875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1874, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1875
  %_gep1877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1874, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1877
  %_gep1879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1874, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1879
  store { i64, [0 x i64] }* %_array1874, { i64, [0 x i64] }** %_a1881
  %_a1885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1881
  %_ptr1883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1885, i32 0, i32 1, i32 2
  %_resPtr1884 = load i64, i64* %_ptr1883
  ret i64 %_resPtr1884
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
