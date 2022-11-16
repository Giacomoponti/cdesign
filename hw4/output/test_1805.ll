; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i3185 = alloca i64
  store i64 %argc, i64* %_argc3180
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3182
  %_argv3182 = alloca { i64, [0 x i8*] }*
  %_argc3180 = alloca i64
  store i64 1, i64* %_i3185
  br label %_pre3191
_pre3191:
  %_i3187 = load i64, i64* %_i3185
  %_argc3188 = load i64, i64* %_argc3183
  %_bop3189 = icmp slt i64 %_i3187, %_argc3188
  %_cnd3193 = icmp eq i1 %_bop3189, 0
  br i1 %_cnd3193, label %_post3190, label %_body3192
_body3192:
  %_argv3196 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3184
  %_i3197 = load i64, i64* %_i3185
  %_ptr3194 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv3196, i32 0, i32 1, i64 %_i3197
  %_resPtr3195 = load i8*, i8** %_ptr3194
  call void @print_string(i8* %_resPtr3195)
  %_i3199 = load i64, i64* %_i3185
  %_bop3200 = add i64 %_i3199, 1
  store i64 %_bop3200, i64* %_i3185
  br label %_pre3191
_post3190:
  %_argc3202 = load i64, i64* %_argc3183
  ret i64 %_argc3202
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
