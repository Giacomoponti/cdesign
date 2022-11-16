; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a877 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc854 = alloca i64
  %_argv856 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv856
  store i64 %argc, i64* %_argc854
  %_raw_array859 = call i64* @oat_alloc_array(i64 2)
  %_array860 = bitcast i64* %_raw_array859 to { i64, [0 x i64] }*
  %_gep861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array860, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep861
  %_gep863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array860, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep863
  %_raw_array865 = call i64* @oat_alloc_array(i64 2)
  %_array866 = bitcast i64* %_raw_array865 to { i64, [0 x i64] }*
  %_gep867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array866, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep867
  %_gep869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array866, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep869
  %_raw_array871 = call i64* @oat_alloc_array(i64 2)
  %_array872 = bitcast i64* %_raw_array871 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep873 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array872, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array860, { i64, [0 x i64] }** %_gep873
  %_gep875 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array872, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array866, { i64, [0 x i64] }** %_gep875
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array872, { i64, [0 x { i64, [0 x i64] }*] }** %_a877
  %_a883 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a877
  %_ptr881 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a883, i32 0, i32 1, i32 0
  %_resPtr882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr881
  %_ptr879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr882, i32 0, i32 1, i32 1
  %_resPtr880 = load i64, i64* %_ptr879
  ret i64 %_resPtr880
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
