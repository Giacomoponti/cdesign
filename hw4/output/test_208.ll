; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a443 = alloca { i64, [0 x i64] }*
  %_raw_array437 = call i64* @oat_alloc_array(i64 2)
  %_array438 = bitcast i64* %_raw_array437 to { i64, [0 x i64] }*
  %_gep439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep439
  %_gep441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep441
  store { i64, [0 x i64] }* %_array438, { i64, [0 x i64] }** %_a443
  %_a447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a443
  %_ptr445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a447, i32 0, i32 1, i32 1
  %_resPtr446 = load i64, i64* %_ptr445
  ret i64 %_resPtr446
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
