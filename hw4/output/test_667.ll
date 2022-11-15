; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr667 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array649 = call i64* @oat_alloc_array(i64 2)
  %_array650 = bitcast i64* %_raw_array649 to { i64, [0 x i64] }*
  %_gep651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array650, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep651
  %_gep653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array650, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep653
  %_raw_array655 = call i64* @oat_alloc_array(i64 2)
  %_array656 = bitcast i64* %_raw_array655 to { i64, [0 x i64] }*
  %_gep657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array656, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep657
  %_gep659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array656, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep659
  %_raw_array661 = call i64* @oat_alloc_array(i64 2)
  %_array662 = bitcast i64* %_raw_array661 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep663 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array650, { i64, [0 x i64] }** %_gep663
  %_gep665 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array656, { i64, [0 x i64] }** %_gep665
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array662, { i64, [0 x { i64, [0 x i64] }*] }** %_arr667
  %_arr673 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr667
  %_ptr671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr673, i32 0, i32 1, i32 0
  %_resPtr672 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr671
  %_ptr669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr672, i32 0, i32 1, i32 0
  %_resPtr670 = load i64, i64* %_ptr669
  ret i64 %_resPtr670
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
