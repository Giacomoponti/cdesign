; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr709 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array691 = call i64* @oat_alloc_array(i64 2)
  %_array692 = bitcast i64* %_raw_array691 to { i64, [0 x i64] }*
  %_gep693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array692, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep693
  %_gep695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array692, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep695
  %_raw_array697 = call i64* @oat_alloc_array(i64 2)
  %_array698 = bitcast i64* %_raw_array697 to { i64, [0 x i64] }*
  %_gep699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array698, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep699
  %_gep701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array698, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep701
  %_raw_array703 = call i64* @oat_alloc_array(i64 2)
  %_array704 = bitcast i64* %_raw_array703 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep705 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array692, { i64, [0 x i64] }** %_gep705
  %_gep707 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array704, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array698, { i64, [0 x i64] }** %_gep707
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array704, { i64, [0 x { i64, [0 x i64] }*] }** %_arr709
  %_arr715 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr709
  %_ptr713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr715, i32 0, i32 1, i32 0
  %_resPtr714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr713
  %_ptr711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr714, i32 0, i32 1, i32 0
  %_resPtr712 = load i64, i64* %_ptr711
  ret i64 %_resPtr712
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
