; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1856 = alloca { i64, [0 x i64] }*
  %_argc1843 = alloca i64
  %_argv1845 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1845
  store i64 %argc, i64* %_argc1843
  %_raw_array1848 = call i64* @oat_alloc_array(i64 3)
  %_array1849 = bitcast i64* %_raw_array1848 to { i64, [0 x i64] }*
  %_gep1850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1849, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1850
  %_gep1852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1849, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1852
  %_gep1854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1849, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep1854
  store { i64, [0 x i64] }* %_array1849, { i64, [0 x i64] }** %_a1856
  %_a1860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1856
  %_ptr1858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1860, i32 0, i32 1, i32 2
  %_resPtr1859 = load i64, i64* %_ptr1858
  ret i64 %_resPtr1859
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
