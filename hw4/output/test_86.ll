; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_j3302 = alloca i64
  %_a3297 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3297
  %_l3299 = alloca i64
  store i64 %l, i64* %_l3299
  %_r3301 = alloca i64
  store i64 %r, i64* %_r3301
  store i64 0, i64* %_j3302
  %_l3304 = load i64, i64* %_l3299
  %_r3305 = load i64, i64* %_r3301
  %_bop3306 = icmp slt i64 %_l3304, %_r3305
  br i1 %_bop3306, label %_if3309, label %_else3308
_if3309:
  %_a3311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3297
  %_l3312 = load i64, i64* %_l3299
  %_r3313 = load i64, i64* %_r3301
  %_3314 = call i64 @partition({ i64, [0 x i64] }* %_a3311, i64 %_l3312, i64 %_r3313)
  store i64 %_3314, i64* %_j3302
  %_a3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3297
  %_l3317 = load i64, i64* %_l3299
  %_j3318 = load i64, i64* %_j3302
  %_bop3319 = sub i64 %_j3318, 1
  call void @quick_sort({ i64, [0 x i64] }* %_a3316, i64 %_l3317, i64 %_bop3319)
  %_a3321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3297
  %_j3322 = load i64, i64* %_j3302
  %_bop3323 = add i64 %_j3322, 1
  %_r3324 = load i64, i64* %_r3301
  call void @quick_sort({ i64, [0 x i64] }* %_a3321, i64 %_bop3323, i64 %_r3324)
  br label %_after3307
_else3308:
  br label %_after3307
_after3307:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_pivot3190 = alloca i64
  %_i3193 = alloca i64
  %_j3197 = alloca i64
  %_t3199 = alloca i64
  %_done3201 = alloca i64
  %_a3181 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3181
  %_l3183 = alloca i64
  store i64 %l, i64* %_l3183
  %_r3185 = alloca i64
  store i64 %r, i64* %_r3185
  %_a3188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_l3189 = load i64, i64* %_l3183
  %_ptr3186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3188, i32 0, i32 1, i64 %_l3189
  %_resPtr3187 = load i64, i64* %_ptr3186
  store i64 %_resPtr3187, i64* %_pivot3190
  %_l3192 = load i64, i64* %_l3183
  store i64 %_l3192, i64* %_i3193
  %_r3195 = load i64, i64* %_r3185
  %_bop3196 = add i64 %_r3195, 1
  store i64 %_bop3196, i64* %_j3197
  store i64 0, i64* %_t3199
  store i64 0, i64* %_done3201
  br label %_pre3206
_pre3206:
  %_done3203 = load i64, i64* %_done3201
  %_bop3204 = icmp eq i64 %_done3203, 0
  %_cnd3208 = icmp eq i1 %_bop3204, 0
  br i1 %_cnd3208, label %_post3205, label %_body3207
_body3207:
  %_i3209 = load i64, i64* %_i3193
  %_bop3210 = add i64 %_i3209, 1
  store i64 %_bop3210, i64* %_i3193
  br label %_pre3223
_pre3223:
  %_a3214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_i3215 = load i64, i64* %_i3193
  %_ptr3212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3214, i32 0, i32 1, i64 %_i3215
  %_resPtr3213 = load i64, i64* %_ptr3212
  %_pivot3216 = load i64, i64* %_pivot3190
  %_bop3217 = icmp sle i64 %_resPtr3213, %_pivot3216
  %_i3218 = load i64, i64* %_i3193
  %_r3219 = load i64, i64* %_r3185
  %_bop3220 = icmp sle i64 %_i3218, %_r3219
  %_bop3221 = and i1 %_bop3217, %_bop3220
  %_cnd3225 = icmp eq i1 %_bop3221, 0
  br i1 %_cnd3225, label %_post3222, label %_body3224
_body3224:
  %_i3226 = load i64, i64* %_i3193
  %_bop3227 = add i64 %_i3226, 1
  store i64 %_bop3227, i64* %_i3193
  br label %_pre3223
_post3222:
  %_j3229 = load i64, i64* %_j3197
  %_bop3230 = sub i64 %_j3229, 1
  store i64 %_bop3230, i64* %_j3197
  br label %_pre3239
_pre3239:
  %_a3234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_j3235 = load i64, i64* %_j3197
  %_ptr3232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3234, i32 0, i32 1, i64 %_j3235
  %_resPtr3233 = load i64, i64* %_ptr3232
  %_pivot3236 = load i64, i64* %_pivot3190
  %_bop3237 = icmp sgt i64 %_resPtr3233, %_pivot3236
  %_cnd3241 = icmp eq i1 %_bop3237, 0
  br i1 %_cnd3241, label %_post3238, label %_body3240
_body3240:
  %_j3242 = load i64, i64* %_j3197
  %_bop3243 = sub i64 %_j3242, 1
  store i64 %_bop3243, i64* %_j3197
  br label %_pre3239
_post3238:
  %_i3245 = load i64, i64* %_i3193
  %_j3246 = load i64, i64* %_j3197
  %_bop3247 = icmp sge i64 %_i3245, %_j3246
  br i1 %_bop3247, label %_if3250, label %_else3249
_if3250:
  store i64 1, i64* %_done3201
  br label %_after3248
_else3249:
  br label %_after3248
_after3248:
  %_done3253 = load i64, i64* %_done3201
  %_bop3254 = icmp eq i64 %_done3253, 0
  br i1 %_bop3254, label %_if3257, label %_else3256
_if3257:
  %_a3261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_i3262 = load i64, i64* %_i3193
  %_ptr3259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3261, i32 0, i32 1, i64 %_i3262
  %_resPtr3260 = load i64, i64* %_ptr3259
  store i64 %_resPtr3260, i64* %_t3199
  %_a3266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_j3267 = load i64, i64* %_j3197
  %_ptr3264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3266, i32 0, i32 1, i64 %_j3267
  %_resPtr3265 = load i64, i64* %_ptr3264
  %_a3268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_i3269 = load i64, i64* %_i3193
  %_ptr3270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3268, i32 0, i32 1, i64 %_i3269
  store i64 %_resPtr3265, i64* %_ptr3270
  %_t3272 = load i64, i64* %_t3199
  %_a3273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_j3274 = load i64, i64* %_j3197
  %_ptr3275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3273, i32 0, i32 1, i64 %_j3274
  store i64 %_t3272, i64* %_ptr3275
  br label %_after3255
_else3256:
  br label %_after3255
_after3255:
  br label %_pre3206
_post3205:
  %_a3279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_l3280 = load i64, i64* %_l3183
  %_ptr3277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3279, i32 0, i32 1, i64 %_l3280
  %_resPtr3278 = load i64, i64* %_ptr3277
  store i64 %_resPtr3278, i64* %_t3199
  %_a3284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_j3285 = load i64, i64* %_j3197
  %_ptr3282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3284, i32 0, i32 1, i64 %_j3285
  %_resPtr3283 = load i64, i64* %_ptr3282
  %_a3286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_l3287 = load i64, i64* %_l3183
  %_ptr3288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3286, i32 0, i32 1, i64 %_l3287
  store i64 %_resPtr3283, i64* %_ptr3288
  %_t3290 = load i64, i64* %_t3199
  %_a3291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3181
  %_j3292 = load i64, i64* %_j3197
  %_ptr3293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3291, i32 0, i32 1, i64 %_j3292
  store i64 %_t3290, i64* %_ptr3293
  %_j3295 = load i64, i64* %_j3197
  ret i64 %_j3295
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3170 = alloca { i64, [0 x i64] }*
  %_argc3147 = alloca i64
  store i64 %argc, i64* %_argc3147
  %_argv3149 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3149
  %_raw_array3150 = call i64* @oat_alloc_array(i64 9)
  %_array3151 = bitcast i64* %_raw_array3150 to { i64, [0 x i64] }*
  %_gep3152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 0
  store i64 107, i64* %_gep3152
  %_gep3154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep3154
  %_gep3156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 2
  store i64 121, i64* %_gep3156
  %_gep3158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 3
  store i64 102, i64* %_gep3158
  %_gep3160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 4
  store i64 123, i64* %_gep3160
  %_gep3162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 5
  store i64 115, i64* %_gep3162
  %_gep3164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 6
  store i64 104, i64* %_gep3164
  %_gep3166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 7
  store i64 111, i64* %_gep3166
  %_gep3168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3151, i32 0, i32 1, i32 8
  store i64 109, i64* %_gep3168
  store { i64, [0 x i64] }* %_array3151, { i64, [0 x i64] }** %_a3170
  %_a3172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3170
  %_3173 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3172)
  call void @print_string(i8* %_3173)
  %_a3175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3170
  call void @quick_sort({ i64, [0 x i64] }* %_a3175, i64 0, i64 8)
  %_a3177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3170
  %_3178 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3177)
  call void @print_string(i8* %_3178)
  ret i64 255
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
