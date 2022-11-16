; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x156 = alloca { i64, [0 x i64] }*
  %_ans158 = alloca i64
  %_i160 = alloca i64
  %_argc141 = alloca i64
  %_argv143 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv143
  store i64 %argc, i64* %_argc141
  %_raw_array146 = call i64* @oat_alloc_array(i64 4)
  %_array147 = bitcast i64* %_raw_array146 to { i64, [0 x i64] }*
  %_gep148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep148
  %_gep150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep150
  %_gep152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep152
  %_gep154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep154
  store { i64, [0 x i64] }* %_array147, { i64, [0 x i64] }** %_x156
  store i64 0, i64* %_ans158
  store i64 0, i64* %_i160
  br label %_pre165
_pre165:
  %_cnd167 = icmp eq i1 %_bop163, 0
  br i1 %_cnd167, label %_post164, label %_body166
_body166:
  %_i162 = load i64, i64* %_i160
  %_bop163 = icmp slt i64 %_i162, 4
  %_x170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x156
  %_i171 = load i64, i64* %_i160
  %_ptr168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x170, i32 0, i32 1, i64 %_i171
  %_resPtr169 = load i64, i64* %_ptr168
  %_x174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x156
  %_i175 = load i64, i64* %_i160
  %_ptr172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x174, i32 0, i32 1, i64 %_i175
  %_resPtr173 = load i64, i64* %_ptr172
  %_uop176 = xor i64 %_resPtr173, -1
  %_bop177 = mul i64 %_resPtr169, %_uop176
  store i64 %_bop177, i64* %_ans158
  %_i179 = load i64, i64* %_i160
  %_bop180 = add i64 %_i179, 1
  store i64 %_bop180, i64* %_i160
  br label %_pre165
_post164:
  %_ans182 = load i64, i64* %_ans158
  ret i64 %_ans182
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
