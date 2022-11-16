; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a880 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc857 = alloca i64
  %_argv859 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv859
  store i64 %argc, i64* %_argc857
  %_raw_array862 = call i64* @oat_alloc_array(i64 2)
  %_array863 = bitcast i64* %_raw_array862 to { i64, [0 x i64] }*
  %_gep864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array863, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep864
  %_gep866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array863, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep866
  %_raw_array868 = call i64* @oat_alloc_array(i64 2)
  %_array869 = bitcast i64* %_raw_array868 to { i64, [0 x i64] }*
  %_gep870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array869, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep870
  %_gep872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array869, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep872
  %_raw_array874 = call i64* @oat_alloc_array(i64 2)
  %_array875 = bitcast i64* %_raw_array874 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep876 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array875, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array869, { i64, [0 x i64] }** %_gep876
  %_gep878 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array875, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array863, { i64, [0 x i64] }** %_gep878
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array875, { i64, [0 x { i64, [0 x i64] }*] }** %_a880
  %_a886 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a880
  %_ptr884 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a886, i32 0, i32 1, i32 0
  %_resPtr885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr884
  %_ptr882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr885, i32 0, i32 1, i32 1
  %_resPtr883 = load i64, i64* %_ptr882
  ret i64 %_resPtr883
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
