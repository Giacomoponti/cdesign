; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_s2002 = global [4 x i8] c"abc\00"
@_s2003 = global i8* bitcast ([4 x i8]* @_s2002 to i8*)
@_s2005 = global [4 x i8] c"def\00"
@_s2006 = global i8* bitcast ([4 x i8]* @_s2005 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs2014 = alloca { i64, [0 x i8*] }*
  %_argc1999 = alloca i64
  store i64 %argc, i64* %_argc1999
  %_argv2001 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2001
  %_tmp2004 = load i8*, i8** @_s2003
  %_tmp2007 = load i8*, i8** @_s2006
  %_raw_array2008 = call i64* @oat_alloc_array(i64 2)
  %_array2009 = bitcast i64* %_raw_array2008 to { i64, [0 x i8*] }*
  %_gep2010 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2009, i32 0, i32 1, i32 0
  store i8* %_tmp2004, i8** %_gep2010
  %_gep2012 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2009, i32 0, i32 1, i32 1
  store i8* %_tmp2007, i8** %_gep2012
  store { i64, [0 x i8*] }* %_array2009, { i64, [0 x i8*] }** %_strs2014
  %_strs2018 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs2014
  %_ptr2016 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs2018, i32 0, i32 1, i32 0
  %_resPtr2017 = load i8*, i8** %_ptr2016
  call void @print_string(i8* %_resPtr2017)
  ret i64 0
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
