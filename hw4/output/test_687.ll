; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2898 = alloca i8*
  %_argc2884 = alloca i64
  %_argv2886 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2886
  store i64 %argc, i64* %_argc2884
  %_raw_array2889 = call i64* @oat_alloc_array(i64 3)
  %_array2890 = bitcast i64* %_raw_array2889 to { i64, [0 x i64] }*
  %_gep2891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2890, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep2891
  %_gep2893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2890, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep2893
  %_gep2895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2890, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep2895
  %_id2897 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2890)
  store i8* %_id2897, i8** %_str2898
  %_str2900 = load i8*, i8** %_str2898
  call void @print_string(i8* %_str2900)
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
