; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i139 = alloca i64
  store i64 12, i64* %_i139
  %_i141 = load i64, i64* %_i139
  ret i64 %_i141
}

define i64 @g() {
  %_i136 = alloca i64
  store i64 10, i64* %_i136
  %_i138 = load i64, i64* %_i136
  ret i64 %_i138
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id131 = call i64 @f()
  %_id132 = call i64 @g()
  %_bop133 = add i64 %_id131, %_id132
  %_i134 = load i64, i64* @i
  %_bop135 = add i64 %_bop133, %_i134
  ret i64 %_bop135
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
