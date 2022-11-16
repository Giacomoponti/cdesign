; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_acc1162 = alloca i64
  %_x1160 = alloca i64
  store i64 %x, i64* %_x1160
  store i64 1, i64* %_acc1162
  br label %_pre1167
_pre1167:
  %_cnd1169 = icmp eq i1 %_bop1165, 0
  br i1 %_cnd1169, label %_post1166, label %_body1168
_body1168:
  %_x1164 = load i64, i64* %_x1161
  %_bop1165 = icmp sgt i64 %_x1164, 0
  %_acc1170 = load i64, i64* %_acc1162
  %_x1171 = load i64, i64* %_x1161
  %_bop1172 = mul i64 %_acc1170, %_x1171
  store i64 %_bop1172, i64* %_acc1162
  %_x1174 = load i64, i64* %_x1161
  %_bop1175 = sub i64 %_x1174, 1
  store i64 %_bop1175, i64* %_x1161
  br label %_pre1167
_post1166:
  %_acc1177 = load i64, i64* %_acc1162
  ret i64 %_acc1177
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1151 = alloca i64
  %_argv1153 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1153
  store i64 %argc, i64* %_argc1151
  %_id1156 = call i64 @fact(i64 5)
  %_id1157 = call i8* @string_of_int(i64 %_id1156)
  call void @print_string(i8* %_id1157)
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
