; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a861 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc838 = alloca i64
  %_argv840 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv840
  store i64 %argc, i64* %_argc838
  %_raw_array843 = call i64* @oat_alloc_array(i64 2)
  %_array844 = bitcast i64* %_raw_array843 to { i64, [0 x i64] }*
  %_gep845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array844, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep845
  %_gep847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array844, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep847
  %_raw_array849 = call i64* @oat_alloc_array(i64 2)
  %_array850 = bitcast i64* %_raw_array849 to { i64, [0 x i64] }*
  %_gep851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array850, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep851
  %_gep853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array850, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep853
  %_raw_array855 = call i64* @oat_alloc_array(i64 2)
  %_array856 = bitcast i64* %_raw_array855 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array856, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array844, { i64, [0 x i64] }** %_gep857
  %_gep859 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array856, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array850, { i64, [0 x i64] }** %_gep859
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array856, { i64, [0 x { i64, [0 x i64] }*] }** %_a861
  %_a867 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a861
  %_ptr865 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a867, i32 0, i32 1, i32 0
  %_resPtr866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr865
  %_ptr863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr866, i32 0, i32 1, i32 1
  %_resPtr864 = load i64, i64* %_ptr863
  ret i64 %_resPtr864
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
