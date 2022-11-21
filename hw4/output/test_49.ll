; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r1156 = alloca i64
  %_x1153 = alloca i64
  store i64 %x, i64* %_x1153
  %_y1155 = alloca i64
  store i64 %y, i64* %_y1155
  store i64 0, i64* %_r1156
  %_x1158 = load i64, i64* %_x1153
  %_bop1159 = icmp sge i64 %_x1158, 1
  br i1 %_bop1159, label %_if1162, label %_else1161
_if1162:
  %_x1168 = load i64, i64* %_x1153
  %_bop1169 = sub i64 %_x1168, 1
  %_y1170 = load i64, i64* %_y1155
  %_1171 = call i64 @f(i64 %_bop1169, i64 %_y1170)
  %_bop1172 = add i64 1, %_1171
  store i64 %_bop1172, i64* %_r1156
  br label %_after1160
_else1161:
  %_x1164 = load i64, i64* %_x1153
  %_y1165 = load i64, i64* %_y1155
  %_bop1166 = add i64 %_x1164, %_y1165
  store i64 %_bop1166, i64* %_r1156
  br label %_after1160
_after1160:
  %_r1174 = load i64, i64* %_r1156
  ret i64 %_r1174
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1143 = alloca i64
  %_y1145 = alloca i64
  %_argc1140 = alloca i64
  store i64 %argc, i64* %_argc1140
  %_argv1142 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1142
  store i64 3, i64* %_x1143
  store i64 3, i64* %_y1145
  %_x1147 = load i64, i64* %_x1143
  %_y1148 = load i64, i64* %_y1145
  %_1149 = call i64 @f(i64 %_x1147, i64 %_y1148)
  %_i1150 = load i64, i64* @i
  %_bop1151 = add i64 %_1149, %_i1150
  ret i64 %_bop1151
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
