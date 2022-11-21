; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a790 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc769 = alloca i64
  store i64 %argc, i64* %_argc769
  %_argv771 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv771
  %_raw_array772 = call i64* @oat_alloc_array(i64 2)
  %_array773 = bitcast i64* %_raw_array772 to { i64, [0 x i64] }*
  %_gep774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep774
  %_gep776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep776
  %_raw_array778 = call i64* @oat_alloc_array(i64 2)
  %_array779 = bitcast i64* %_raw_array778 to { i64, [0 x i64] }*
  %_gep780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array779, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep780
  %_gep782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array779, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep782
  %_raw_array784 = call i64* @oat_alloc_array(i64 2)
  %_array785 = bitcast i64* %_raw_array784 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep786 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array785, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array773, { i64, [0 x i64] }** %_gep786
  %_gep788 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array785, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array779, { i64, [0 x i64] }** %_gep788
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array785, { i64, [0 x { i64, [0 x i64] }*] }** %_a790
  %_a796 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a790
  %_ptr794 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a796, i32 0, i32 1, i32 0
  %_resPtr795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr794
  %_ptr792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr795, i32 0, i32 1, i32 1
  %_resPtr793 = load i64, i64* %_ptr792
  ret i64 %_resPtr793
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
