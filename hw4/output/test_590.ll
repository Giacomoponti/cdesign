; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r1121 = alloca i64
  %_x1116 = alloca i64
  %_y1118 = alloca i64
  store i64 %y, i64* %_y1118
  store i64 %x, i64* %_x1116
  store i64 0, i64* %_r1121
  %_x1123 = load i64, i64* %_x1119
  %_bop1124 = icmp sge i64 %_x1123, 1
  br i1 %_bop1124, label %_if1127, label %_else1126
_if1127:
  %_x1133 = load i64, i64* %_x1119
  %_bop1134 = sub i64 %_x1133, 1
  %_y1135 = load i64, i64* %_y1120
  %_id1136 = call i64 @f(i64 %_bop1134, i64 %_y1135)
  %_bop1137 = add i64 1, %_id1136
  store i64 %_bop1137, i64* %_r1121
  br label %_after1125
_else1126:
  %_x1129 = load i64, i64* %_x1119
  %_y1130 = load i64, i64* %_y1120
  %_bop1131 = add i64 %_x1129, %_y1130
  store i64 %_bop1131, i64* %_r1121
  br label %_after1125
_after1125:
  %_r1139 = load i64, i64* %_r1121
  ret i64 %_r1139
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1106 = alloca i64
  %_y1108 = alloca i64
  %_argc1101 = alloca i64
  %_argv1103 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1103
  store i64 %argc, i64* %_argc1101
  store i64 3, i64* %_x1106
  store i64 3, i64* %_y1108
  %_x1110 = load i64, i64* %_x1106
  %_y1111 = load i64, i64* %_y1108
  %_id1112 = call i64 @f(i64 %_x1110, i64 %_y1111)
  %_i1113 = load i64, i64* @i
  %_bop1114 = add i64 %_id1112, %_i1113
  ret i64 %_bop1114
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
