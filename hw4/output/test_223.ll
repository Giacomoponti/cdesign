; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x195 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans197 = alloca i64
  %_i199 = alloca i64
  %_argc166 = alloca i64
  store i64 %argc, i64* %_argc166
  %_argv168 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv168
  %_raw_array169 = call i64* @oat_alloc_array(i64 1)
  %_array170 = bitcast i64* %_raw_array169 to { i64, [0 x i64] }*
  %_gep171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array170, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep171
  %_raw_array173 = call i64* @oat_alloc_array(i64 1)
  %_array174 = bitcast i64* %_raw_array173 to { i64, [0 x i64] }*
  %_gep175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array174, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep175
  %_raw_array177 = call i64* @oat_alloc_array(i64 1)
  %_array178 = bitcast i64* %_raw_array177 to { i64, [0 x i64] }*
  %_gep179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array178, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep179
  %_raw_array181 = call i64* @oat_alloc_array(i64 1)
  %_array182 = bitcast i64* %_raw_array181 to { i64, [0 x i64] }*
  %_gep183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array182, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep183
  %_raw_array185 = call i64* @oat_alloc_array(i64 4)
  %_array186 = bitcast i64* %_raw_array185 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep187 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array186, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array170, { i64, [0 x i64] }** %_gep187
  %_gep189 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array186, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array174, { i64, [0 x i64] }** %_gep189
  %_gep191 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array186, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array178, { i64, [0 x i64] }** %_gep191
  %_gep193 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array186, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array182, { i64, [0 x i64] }** %_gep193
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array186, { i64, [0 x { i64, [0 x i64] }*] }** %_x195
  store i64 0, i64* %_ans197
  store i64 0, i64* %_i199
  br label %_pre204
_pre204:
  %_i201 = load i64, i64* %_i199
  %_bop202 = icmp slt i64 %_i201, 4
  %_cnd206 = icmp eq i1 %_bop202, 0
  br i1 %_cnd206, label %_post203, label %_body205
_body205:
  %_x211 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x195
  %_i212 = load i64, i64* %_i199
  %_ptr209 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x211, i32 0, i32 1, i64 %_i212
  %_resPtr210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr209
  %_ptr207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr210, i32 0, i32 1, i32 0
  %_resPtr208 = load i64, i64* %_ptr207
  %_ans213 = load i64, i64* %_ans197
  %_bop214 = sub i64 %_resPtr208, %_ans213
  store i64 %_bop214, i64* %_ans197
  %_i216 = load i64, i64* %_i199
  %_bop217 = add i64 %_i216, 1
  store i64 %_bop217, i64* %_i199
  br label %_pre204
_post203:
  %_uop219 = xor i64 5, -1
  %_bop220 = and i64 5, %_uop219
  %_bop221 = or i64 %_bop220, 0
  %_bop222 = icmp ne i64 %_bop221, 0
  br i1 %_bop222, label %_if225, label %_else224
_if225:
  %_ans229 = load i64, i64* %_ans197
  ret i64 %_ans229
_else224:
  %_ans227 = load i64, i64* %_ans197
  %_uop228 = mul i64 %_ans227, -1
  ret i64 %_uop228
_after223:
  %_ans230 = load i64, i64* %_ans197
  ret i64 %_ans230
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
