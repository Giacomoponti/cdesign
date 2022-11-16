; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_acc1171 = alloca i64
  %_x1169 = alloca i64
  store i64 %x, i64* %_x1169
  store i64 1, i64* %_acc1171
  br label %_pre1176
_pre1176:
  %_x1173 = load i64, i64* %_x1170
  %_bop1174 = icmp sgt i64 %_x1173, 0
  %_cnd1178 = icmp eq i1 %_bop1174, 0
  br i1 %_cnd1178, label %_post1175, label %_body1177
_body1177:
  %_acc1179 = load i64, i64* %_acc1171
  %_x1180 = load i64, i64* %_x1170
  %_bop1181 = mul i64 %_acc1179, %_x1180
  store i64 %_bop1181, i64* %_acc1171
  %_x1183 = load i64, i64* %_x1170
  %_bop1184 = sub i64 %_x1183, 1
  store i64 %_bop1184, i64* %_x1170
  br label %_pre1176
_post1175:
  %_acc1186 = load i64, i64* %_acc1171
  ret i64 %_acc1186
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1160 = alloca i64
  %_argv1162 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1162
  store i64 %argc, i64* %_argc1160
  %_id1165 = call i64 @fact(i64 5)
  %_id1166 = call i8* @string_of_int(i64 %_id1165)
  call void @print_string(i8* %_id1166)
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
