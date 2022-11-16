; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_s3209 = global [11 x i8] c"1234967890\00"
@_s3210 = global i8* bitcast ([11 x i8]* @_s3209 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr3213 = alloca { i64, [0 x i64] }*
  %_sum3215 = alloca i64
  %_i3217 = alloca i64
  %_i3233 = alloca i64
  store i64 %argc, i64* %_argc3204
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3206
  %_argv3206 = alloca { i64, [0 x i8*] }*
  %_argc3204 = alloca i64
  %_tmp3211 = load i8*, i8** @_s3210
  %_id3212 = call { i64, [0 x i64] }* @array_of_string(i8* %_tmp3211)
  store { i64, [0 x i64] }* %_id3212, { i64, [0 x i64] }** %_arr3213
  store i64 0, i64* %_sum3215
  store i64 0, i64* %_i3217
  br label %_pre3222
_pre3222:
  %_i3219 = load i64, i64* %_i3217
  %_bop3220 = icmp slt i64 %_i3219, 10
  %_cnd3224 = icmp eq i1 %_bop3220, 0
  br i1 %_cnd3224, label %_post3221, label %_body3223
_body3223:
  %_i3225 = load i64, i64* %_i3217
  %_arr3226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3213
  %_i3227 = load i64, i64* %_i3217
  %_ptr3228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3226, i32 0, i32 1, i64 %_i3227
  store i64 %_i3225, i64* %_ptr3228
  %_i3230 = load i64, i64* %_i3217
  %_bop3231 = add i64 %_i3230, 1
  store i64 %_bop3231, i64* %_i3217
  br label %_pre3222
_post3221:
  store i64 0, i64* %_i3233
  br label %_pre3238
_pre3238:
  %_i3235 = load i64, i64* %_i3233
  %_bop3236 = icmp slt i64 %_i3235, 10
  %_cnd3240 = icmp eq i1 %_bop3236, 0
  br i1 %_cnd3240, label %_post3237, label %_body3239
_body3239:
  %_sum3241 = load i64, i64* %_sum3215
  %_arr3244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3213
  %_i3245 = load i64, i64* %_i3233
  %_ptr3242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3244, i32 0, i32 1, i64 %_i3245
  %_resPtr3243 = load i64, i64* %_ptr3242
  %_bop3246 = add i64 %_sum3241, %_resPtr3243
  store i64 %_bop3246, i64* %_sum3215
  %_i3248 = load i64, i64* %_i3233
  %_bop3249 = add i64 %_i3248, 1
  store i64 %_bop3249, i64* %_i3233
  br label %_pre3238
_post3237:
  %_sum3251 = load i64, i64* %_sum3215
  ret i64 %_sum3251
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
