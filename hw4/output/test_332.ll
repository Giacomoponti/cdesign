; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i1867 = alloca i64
  %_a1877 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1862
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1864
  %_argv1864 = alloca { i64, [0 x i8*] }*
  %_argc1862 = alloca i64
  store i64 999, i64* %_i1867
  %_raw_array1869 = call i64* @oat_alloc_array(i64 3)
  %_array1870 = bitcast i64* %_raw_array1869 to { i64, [0 x i64] }*
  %_gep1871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1870, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1871
  %_gep1873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1870, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1873
  %_gep1875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1870, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1875
  store { i64, [0 x i64] }* %_array1870, { i64, [0 x i64] }** %_a1877
  %_a1881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1877
  %_ptr1879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1881, i32 0, i32 1, i32 2
  %_resPtr1880 = load i64, i64* %_ptr1879
  ret i64 %_resPtr1880
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
