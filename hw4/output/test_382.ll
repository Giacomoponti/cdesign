; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1137 = alloca i64
  %_argv1139 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1139
  store i64 %argc, i64* %_argc1137
  %_raw_array1142 = call i64* @oat_alloc_array(i64 2)
  %_array1143 = bitcast i64* %_raw_array1142 to { i64, [0 x i64] }*
  %_gep1144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1143, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1144
  %_gep1146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1143, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep1146
  store { i64, [0 x i64] }* %_array1143, { i64, [0 x i64] }** @arr
  %_arr1151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_ptr1149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1151, i32 0, i32 1, i32 1
  %_resPtr1150 = load i64, i64* %_ptr1149
  ret i64 %_resPtr1150
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
