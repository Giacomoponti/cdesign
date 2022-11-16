; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x215 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans217 = alloca i64
  %_i219 = alloca i64
  store i64 %argc, i64* %_argc184
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv186
  %_argv186 = alloca { i64, [0 x i8*] }*
  %_argc184 = alloca i64
  %_raw_array189 = call i64* @oat_alloc_array(i64 1)
  %_array190 = bitcast i64* %_raw_array189 to { i64, [0 x i64] }*
  %_gep191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array190, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep191
  %_raw_array193 = call i64* @oat_alloc_array(i64 1)
  %_array194 = bitcast i64* %_raw_array193 to { i64, [0 x i64] }*
  %_gep195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array194, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep195
  %_raw_array197 = call i64* @oat_alloc_array(i64 1)
  %_array198 = bitcast i64* %_raw_array197 to { i64, [0 x i64] }*
  %_gep199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array198, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep199
  %_raw_array201 = call i64* @oat_alloc_array(i64 1)
  %_array202 = bitcast i64* %_raw_array201 to { i64, [0 x i64] }*
  %_gep203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array202, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep203
  %_raw_array205 = call i64* @oat_alloc_array(i64 4)
  %_array206 = bitcast i64* %_raw_array205 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep207 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array206, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array190, { i64, [0 x i64] }** %_gep207
  %_gep209 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array206, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array194, { i64, [0 x i64] }** %_gep209
  %_gep211 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array206, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array198, { i64, [0 x i64] }** %_gep211
  %_gep213 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array206, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array202, { i64, [0 x i64] }** %_gep213
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array206, { i64, [0 x { i64, [0 x i64] }*] }** %_x215
  store i64 0, i64* %_ans217
  store i64 0, i64* %_i219
  br label %_pre224
_pre224:
  %_i221 = load i64, i64* %_i219
  %_bop222 = icmp slt i64 %_i221, 4
  %_cnd226 = icmp eq i1 %_bop222, 0
  br i1 %_cnd226, label %_post223, label %_body225
_body225:
  %_x231 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x215
  %_i232 = load i64, i64* %_i219
  %_ptr229 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x231, i32 0, i32 1, i64 %_i232
  %_resPtr230 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr229
  %_ptr227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr230, i32 0, i32 1, i32 0
  %_resPtr228 = load i64, i64* %_ptr227
  %_ans233 = load i64, i64* %_ans217
  %_bop234 = sub i64 %_resPtr228, %_ans233
  store i64 %_bop234, i64* %_ans217
  %_i236 = load i64, i64* %_i219
  %_bop237 = add i64 %_i236, 1
  store i64 %_bop237, i64* %_i219
  br label %_pre224
_post223:
  %_uop239 = xor i64 5, -1
  %_bop240 = and i64 5, %_uop239
  %_bop241 = or i64 %_bop240, 0
  %_bop242 = icmp ne i64 %_bop241, 0
  br i1 %_bop242, label %_if245, label %_else244
_if245:
  %_ans249 = load i64, i64* %_ans217
  ret i64 %_ans249
_else244:
  %_ans247 = load i64, i64* %_ans217
  %_uop248 = mul i64 %_ans247, -1
  ret i64 %_uop248
_after243:
  %_ans250 = load i64, i64* %_ans217
  ret i64 %_ans250
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
