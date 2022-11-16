; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r1117 = alloca i64
  %_x1112 = alloca i64
  %_y1114 = alloca i64
  store i64 %y, i64* %_y1114
  store i64 %x, i64* %_x1112
  store i64 0, i64* %_r1117
  %_x1119 = load i64, i64* %_x1115
  %_bop1120 = icmp sge i64 %_x1119, 1
  br i1 %_bop1120, label %_if1123, label %_else1122
_if1123:
  %_x1129 = load i64, i64* %_x1115
  %_bop1130 = sub i64 %_x1129, 1
  %_y1131 = load i64, i64* %_y1116
  %_id1132 = call i64 @f(i64 %_bop1130, i64 %_y1131)
  %_bop1133 = add i64 1, %_id1132
  store i64 %_bop1133, i64* %_r1117
  br label %_after1121
_else1122:
  %_x1125 = load i64, i64* %_x1115
  %_y1126 = load i64, i64* %_y1116
  %_bop1127 = add i64 %_x1125, %_y1126
  store i64 %_bop1127, i64* %_r1117
  br label %_after1121
_after1121:
  %_r1135 = load i64, i64* %_r1117
  ret i64 %_r1135
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1102 = alloca i64
  %_y1104 = alloca i64
  %_argc1097 = alloca i64
  %_argv1099 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1099
  store i64 %argc, i64* %_argc1097
  store i64 3, i64* %_x1102
  store i64 3, i64* %_y1104
  %_x1106 = load i64, i64* %_x1102
  %_y1107 = load i64, i64* %_y1104
  %_id1108 = call i64 @f(i64 %_x1106, i64 %_y1107)
  %_i1109 = load i64, i64* @i
  %_bop1110 = add i64 %_id1108, %_i1109
  ret i64 %_bop1110
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
