; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3199 = alloca i64
  %_y3201 = alloca i64
  store i64 %y, i64* %_y3201
  store i64 %x, i64* %_x3199
  %_x3204 = load i64, i64* %_x3202
  %_y3205 = load i64, i64* %_y3203
  %_bop3206 = icmp eq i64 %_x3204, %_y3205
  br i1 %_bop3206, label %_if3209, label %_else3208
_if3209:
  %_x3211 = load i64, i64* %_x3202
  ret i64 %_x3211
_else3208:
  br label %_after3207
_after3207:
  %_x3212 = load i64, i64* %_x3202
  %_bop3213 = icmp eq i64 %_x3212, 0
  br i1 %_bop3213, label %_if3216, label %_else3215
_if3216:
  %_y3218 = load i64, i64* %_y3203
  ret i64 %_y3218
_else3215:
  br label %_after3214
_after3214:
  %_y3219 = load i64, i64* %_y3203
  %_bop3220 = icmp eq i64 %_y3219, 0
  br i1 %_bop3220, label %_if3223, label %_else3222
_if3223:
  %_x3225 = load i64, i64* %_x3202
  ret i64 %_x3225
_else3222:
  br label %_after3221
_after3221:
  %_x3226 = load i64, i64* %_x3202
  %_uop3227 = xor i64 %_x3226, -1
  %_bop3228 = and i64 %_uop3227, 1
  %_bop3229 = icmp eq i64 %_bop3228, 1
  br i1 %_bop3229, label %_if3232, label %_else3231
_if3232:
  %_y3234 = load i64, i64* %_y3203
  %_bop3235 = and i64 %_y3234, 1
  %_bop3236 = icmp eq i64 %_bop3235, 1
  br i1 %_bop3236, label %_if3239, label %_else3238
_if3239:
  %_x3247 = load i64, i64* %_x3202
  %_bop3248 = lshr i64 %_x3247, 1
  %_y3249 = load i64, i64* %_y3203
  %_id3250 = call i64 @binary_gcd(i64 %_bop3248, i64 %_y3249)
  ret i64 %_id3250
_else3238:
  %_x3241 = load i64, i64* %_x3202
  %_bop3242 = lshr i64 %_x3241, 1
  %_y3243 = load i64, i64* %_y3203
  %_bop3244 = lshr i64 %_y3243, 1
  %_id3245 = call i64 @binary_gcd(i64 %_bop3242, i64 %_bop3244)
  %_bop3246 = shl i64 %_id3245, 1
  ret i64 %_bop3246
_after3237:
  br label %_after3230
_else3231:
  br label %_after3230
_after3230:
  %_y3251 = load i64, i64* %_y3203
  %_uop3252 = xor i64 %_y3251, -1
  %_bop3253 = and i64 %_uop3252, 1
  %_bop3254 = icmp eq i64 %_bop3253, 1
  br i1 %_bop3254, label %_if3257, label %_else3256
_if3257:
  %_x3259 = load i64, i64* %_x3202
  %_y3260 = load i64, i64* %_y3203
  %_bop3261 = lshr i64 %_y3260, 1
  %_id3262 = call i64 @binary_gcd(i64 %_x3259, i64 %_bop3261)
  ret i64 %_id3262
_else3256:
  br label %_after3255
_after3255:
  %_x3263 = load i64, i64* %_x3202
  %_y3264 = load i64, i64* %_y3203
  %_bop3265 = icmp sgt i64 %_x3263, %_y3264
  br i1 %_bop3265, label %_if3268, label %_else3267
_if3268:
  %_x3270 = load i64, i64* %_x3202
  %_y3271 = load i64, i64* %_y3203
  %_bop3272 = sub i64 %_x3270, %_y3271
  %_bop3273 = lshr i64 %_bop3272, 1
  %_y3274 = load i64, i64* %_y3203
  %_id3275 = call i64 @binary_gcd(i64 %_bop3273, i64 %_y3274)
  ret i64 %_id3275
_else3267:
  br label %_after3266
_after3266:
  %_y3276 = load i64, i64* %_y3203
  %_x3277 = load i64, i64* %_x3202
  %_bop3278 = sub i64 %_y3276, %_x3277
  %_bop3279 = lshr i64 %_bop3278, 1
  %_x3280 = load i64, i64* %_x3202
  %_id3281 = call i64 @binary_gcd(i64 %_bop3279, i64 %_x3280)
  ret i64 %_id3281
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x3191 = alloca i64
  %_y3193 = alloca i64
  %_argc3186 = alloca i64
  %_argv3188 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3188
  store i64 %argc, i64* %_argc3186
  store i64 21, i64* %_x3191
  store i64 15, i64* %_y3193
  %_x3195 = load i64, i64* %_x3191
  %_y3196 = load i64, i64* %_y3193
  %_id3197 = call i64 @binary_gcd(i64 %_x3195, i64 %_y3196)
  ret i64 %_id3197
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
