; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr3168 = alloca { i64, [0 x i64] }*
  %_sum3170 = alloca i64
  %_i3172 = alloca i64
  %_i3188 = alloca i64
  %_argc3162 = alloca i64
  %_argv3164 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3164
  store i64 %argc, i64* %_argc3162
  %_id3167 = call { i64, [0 x i64] }* @array_of_string(void null)
  store { i64, [0 x i64] }* %_id3167, { i64, [0 x i64] }** %_arr3168
  store i64 0, i64* %_sum3170
  store i64 0, i64* %_i3172
  br label %_pre3177
_pre3177:
  %_cnd3179 = icmp eq i1 %_bop3175, 0
  br i1 %_cnd3179, label %_post3176, label %_body3178
_body3178:
  %_i3174 = load i64, i64* %_i3172
  %_bop3175 = icmp slt i64 %_i3174, 10
  %_i3180 = load i64, i64* %_i3172
  %_arr3181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3168
  %_i3182 = load i64, i64* %_i3172
  %_ptr3183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3181, i32 0, i32 1, i64 %_i3182
  store i64 %_i3180, i64* %_ptr3183
  %_i3185 = load i64, i64* %_i3172
  %_bop3186 = add i64 %_i3185, 1
  store i64 %_bop3186, i64* %_i3172
  br label %_pre3177
_post3176:
  store i64 0, i64* %_i3188
  br label %_pre3193
_pre3193:
  %_cnd3195 = icmp eq i1 %_bop3191, 0
  br i1 %_cnd3195, label %_post3192, label %_body3194
_body3194:
  %_i3190 = load i64, i64* %_i3188
  %_bop3191 = icmp slt i64 %_i3190, 10
  %_sum3196 = load i64, i64* %_sum3170
  %_arr3199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3168
  %_i3200 = load i64, i64* %_i3188
  %_ptr3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3199, i32 0, i32 1, i64 %_i3200
  %_resPtr3198 = load i64, i64* %_ptr3197
  %_bop3201 = add i64 %_sum3196, %_resPtr3198
  store i64 %_bop3201, i64* %_sum3170
  %_i3203 = load i64, i64* %_i3188
  %_bop3204 = add i64 %_i3203, 1
  store i64 %_bop3204, i64* %_i3188
  br label %_pre3193
_post3192:
  %_sum3206 = load i64, i64* %_sum3170
  ret i64 %_sum3206
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
