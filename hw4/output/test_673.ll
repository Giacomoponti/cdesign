; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1973 = alloca i64
  %_a2034 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b2037 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1968 = alloca i64
  %_argv1970 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1970
  store i64 %argc, i64* %_argc1968
  store i64 10, i64* %_x1973
  %_x1975 = load i64, i64* %_x1973
  %_bop1976 = add i64 %_x1975, 0
  %_bop1977 = add i64 %_bop1976, 0
  %_x1978 = load i64, i64* %_x1973
  %_bop1979 = add i64 %_x1978, 0
  %_bop1980 = add i64 %_bop1979, 1
  %_x1981 = load i64, i64* %_x1973
  %_bop1982 = add i64 %_x1981, 0
  %_bop1983 = add i64 %_bop1982, 2
  %_raw_array1984 = call i64* @oat_alloc_array(i64 3)
  %_array1985 = bitcast i64* %_raw_array1984 to { i64, [0 x i64] }*
  %_gep1986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1985, i32 0, i32 1, i32 0
  store i64 %_bop1977, i64* %_gep1986
  %_gep1988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1985, i32 0, i32 1, i32 1
  store i64 %_bop1980, i64* %_gep1988
  %_gep1990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1985, i32 0, i32 1, i32 2
  store i64 %_bop1983, i64* %_gep1990
  %_x1992 = load i64, i64* %_x1973
  %_bop1993 = add i64 %_x1992, 1
  %_bop1994 = add i64 %_bop1993, 0
  %_x1995 = load i64, i64* %_x1973
  %_bop1996 = add i64 %_x1995, 1
  %_bop1997 = add i64 %_bop1996, 1
  %_x1998 = load i64, i64* %_x1973
  %_bop1999 = add i64 %_x1998, 1
  %_bop2000 = add i64 %_bop1999, 2
  %_raw_array2001 = call i64* @oat_alloc_array(i64 3)
  %_array2002 = bitcast i64* %_raw_array2001 to { i64, [0 x i64] }*
  %_gep2003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2002, i32 0, i32 1, i32 0
  store i64 %_bop1994, i64* %_gep2003
  %_gep2005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2002, i32 0, i32 1, i32 1
  store i64 %_bop1997, i64* %_gep2005
  %_gep2007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2002, i32 0, i32 1, i32 2
  store i64 %_bop2000, i64* %_gep2007
  %_x2009 = load i64, i64* %_x1973
  %_bop2010 = add i64 %_x2009, 2
  %_bop2011 = add i64 %_bop2010, 0
  %_x2012 = load i64, i64* %_x1973
  %_bop2013 = add i64 %_x2012, 2
  %_bop2014 = add i64 %_bop2013, 1
  %_x2015 = load i64, i64* %_x1973
  %_bop2016 = add i64 %_x2015, 2
  %_bop2017 = add i64 %_bop2016, 2
  %_raw_array2018 = call i64* @oat_alloc_array(i64 3)
  %_array2019 = bitcast i64* %_raw_array2018 to { i64, [0 x i64] }*
  %_gep2020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2019, i32 0, i32 1, i32 0
  store i64 %_bop2011, i64* %_gep2020
  %_gep2022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2019, i32 0, i32 1, i32 1
  store i64 %_bop2014, i64* %_gep2022
  %_gep2024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2019, i32 0, i32 1, i32 2
  store i64 %_bop2017, i64* %_gep2024
  %_raw_array2026 = call i64* @oat_alloc_array(i64 3)
  %_array2027 = bitcast i64* %_raw_array2026 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep2028 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2027, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1985, { i64, [0 x i64] }** %_gep2028
  %_gep2030 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2027, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2002, { i64, [0 x i64] }** %_gep2030
  %_gep2032 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2027, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2019, { i64, [0 x i64] }** %_gep2032
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2027, { i64, [0 x { i64, [0 x i64] }*] }** %_a2034
  %_a2036 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2034
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2036, { i64, [0 x { i64, [0 x i64] }*] }** %_b2037
  %_b2043 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b2037
  %_ptr2041 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b2043, i32 0, i32 1, i32 2
  %_resPtr2042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr2041
  %_ptr2039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr2042, i32 0, i32 1, i32 1
  %_resPtr2040 = load i64, i64* %_ptr2039
  ret i64 %_resPtr2040
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
