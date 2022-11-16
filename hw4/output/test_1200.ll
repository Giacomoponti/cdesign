; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x5197 = alloca i64
  %_y5199 = alloca i64
  store i64 %y, i64* %_y5199
  store i64 %x, i64* %_x5197
  %_x5202 = load i64, i64* %_x5200
  %_y5203 = load i64, i64* %_y5201
  %_bop5204 = icmp eq i64 %_x5202, %_y5203
  br i1 %_bop5204, label %_if5207, label %_else5206
_if5207:
  %_x5209 = load i64, i64* %_x5200
  ret i64 %_x5209
_else5206:
  br label %_after5205
_after5205:
  %_x5210 = load i64, i64* %_x5200
  %_bop5211 = icmp eq i64 %_x5210, 0
  br i1 %_bop5211, label %_if5214, label %_else5213
_if5214:
  %_y5216 = load i64, i64* %_y5201
  ret i64 %_y5216
_else5213:
  br label %_after5212
_after5212:
  %_y5217 = load i64, i64* %_y5201
  %_bop5218 = icmp eq i64 %_y5217, 0
  br i1 %_bop5218, label %_if5221, label %_else5220
_if5221:
  %_x5223 = load i64, i64* %_x5200
  ret i64 %_x5223
_else5220:
  br label %_after5219
_after5219:
  %_x5224 = load i64, i64* %_x5200
  %_uop5225 = xor i64 %_x5224, -1
  %_bop5226 = and i64 %_uop5225, 1
  %_bop5227 = icmp eq i64 %_bop5226, 1
  br i1 %_bop5227, label %_if5230, label %_else5229
_if5230:
  %_y5232 = load i64, i64* %_y5201
  %_bop5233 = and i64 %_y5232, 1
  %_bop5234 = icmp eq i64 %_bop5233, 1
  br i1 %_bop5234, label %_if5237, label %_else5236
_if5237:
  %_x5245 = load i64, i64* %_x5200
  %_bop5246 = lshr i64 %_x5245, 1
  %_y5247 = load i64, i64* %_y5201
  %_id5248 = call i64 @binary_gcd(i64 %_bop5246, i64 %_y5247)
  ret i64 %_id5248
_else5236:
  %_x5239 = load i64, i64* %_x5200
  %_bop5240 = lshr i64 %_x5239, 1
  %_y5241 = load i64, i64* %_y5201
  %_bop5242 = lshr i64 %_y5241, 1
  %_id5243 = call i64 @binary_gcd(i64 %_bop5240, i64 %_bop5242)
  %_bop5244 = shl i64 %_id5243, 1
  ret i64 %_bop5244
_after5235:
  br label %_after5228
_else5229:
  br label %_after5228
_after5228:
  %_y5249 = load i64, i64* %_y5201
  %_uop5250 = xor i64 %_y5249, -1
  %_bop5251 = and i64 %_uop5250, 1
  %_bop5252 = icmp eq i64 %_bop5251, 1
  br i1 %_bop5252, label %_if5255, label %_else5254
_if5255:
  %_x5257 = load i64, i64* %_x5200
  %_y5258 = load i64, i64* %_y5201
  %_bop5259 = lshr i64 %_y5258, 1
  %_id5260 = call i64 @binary_gcd(i64 %_x5257, i64 %_bop5259)
  ret i64 %_id5260
_else5254:
  br label %_after5253
_after5253:
  %_x5261 = load i64, i64* %_x5200
  %_y5262 = load i64, i64* %_y5201
  %_bop5263 = icmp sgt i64 %_x5261, %_y5262
  br i1 %_bop5263, label %_if5266, label %_else5265
_if5266:
  %_x5268 = load i64, i64* %_x5200
  %_y5269 = load i64, i64* %_y5201
  %_bop5270 = sub i64 %_x5268, %_y5269
  %_bop5271 = lshr i64 %_bop5270, 1
  %_y5272 = load i64, i64* %_y5201
  %_id5273 = call i64 @binary_gcd(i64 %_bop5271, i64 %_y5272)
  ret i64 %_id5273
_else5265:
  br label %_after5264
_after5264:
  %_y5274 = load i64, i64* %_y5201
  %_x5275 = load i64, i64* %_x5200
  %_bop5276 = sub i64 %_y5274, %_x5275
  %_bop5277 = lshr i64 %_bop5276, 1
  %_x5278 = load i64, i64* %_x5200
  %_id5279 = call i64 @binary_gcd(i64 %_bop5277, i64 %_x5278)
  ret i64 %_id5279
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x5189 = alloca i64
  %_y5191 = alloca i64
  %_argc5184 = alloca i64
  %_argv5186 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5186
  store i64 %argc, i64* %_argc5184
  store i64 21, i64* %_x5189
  store i64 15, i64* %_y5191
  %_x5193 = load i64, i64* %_x5189
  %_y5194 = load i64, i64* %_y5191
  %_id5195 = call i64 @binary_gcd(i64 %_x5193, i64 %_y5194)
  ret i64 %_id5195
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
