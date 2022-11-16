; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr718 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array700 = call i64* @oat_alloc_array(i64 2)
  %_array701 = bitcast i64* %_raw_array700 to { i64, [0 x i64] }*
  %_gep702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array701, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep702
  %_gep704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array701, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep704
  %_raw_array706 = call i64* @oat_alloc_array(i64 2)
  %_array707 = bitcast i64* %_raw_array706 to { i64, [0 x i64] }*
  %_gep708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array707, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep708
  %_gep710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array707, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep710
  %_raw_array712 = call i64* @oat_alloc_array(i64 2)
  %_array713 = bitcast i64* %_raw_array712 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep714 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array713, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array701, { i64, [0 x i64] }** %_gep714
  %_gep716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array713, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array707, { i64, [0 x i64] }** %_gep716
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array713, { i64, [0 x { i64, [0 x i64] }*] }** %_arr718
  %_arr724 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr718
  %_ptr722 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr724, i32 0, i32 1, i32 0
  %_resPtr723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr722
  %_ptr720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr723, i32 0, i32 1, i32 0
  %_resPtr721 = load i64, i64* %_ptr720
  ret i64 %_resPtr721
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
