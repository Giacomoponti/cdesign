; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1993 = alloca { i64, [0 x i64] }*
  %_argc1982 = alloca i64
  store i64 %argc, i64* %_argc1982
  %_argv1984 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1984
  %_raw_array1985 = call i64* @oat_alloc_array(i64 3)
  %_array1986 = bitcast i64* %_raw_array1985 to { i64, [0 x i64] }*
  %_gep1987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1986, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep1987
  %_gep1989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1986, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep1989
  %_gep1991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1986, i32 0, i32 1, i32 2
  store i64 19, i64* %_gep1991
  store { i64, [0 x i64] }* %_array1986, { i64, [0 x i64] }** %_a1993
  %_a1997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1993
  %_ptr1995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1997, i32 0, i32 1, i32 2
  %_resPtr1996 = load i64, i64* %_ptr1995
  ret i64 %_resPtr1996
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
