; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x5182 = alloca i64
  store i64 %x, i64* %_x5182
  %_y5184 = alloca i64
  store i64 %y, i64* %_y5184
  %_x5185 = load i64, i64* %_x5182
  %_y5186 = load i64, i64* %_y5184
  %_bop5187 = icmp eq i64 %_x5185, %_y5186
  br i1 %_bop5187, label %_if5190, label %_else5189
_if5190:
  %_x5192 = load i64, i64* %_x5182
  ret i64 %_x5192
_else5189:
  br label %_after5188
_after5188:
  %_x5193 = load i64, i64* %_x5182
  %_bop5194 = icmp eq i64 %_x5193, 0
  br i1 %_bop5194, label %_if5197, label %_else5196
_if5197:
  %_y5199 = load i64, i64* %_y5184
  ret i64 %_y5199
_else5196:
  br label %_after5195
_after5195:
  %_y5200 = load i64, i64* %_y5184
  %_bop5201 = icmp eq i64 %_y5200, 0
  br i1 %_bop5201, label %_if5204, label %_else5203
_if5204:
  %_x5206 = load i64, i64* %_x5182
  ret i64 %_x5206
_else5203:
  br label %_after5202
_after5202:
  %_x5207 = load i64, i64* %_x5182
  %_uop5208 = xor i64 %_x5207, -1
  %_bop5209 = and i64 %_uop5208, 1
  %_bop5210 = icmp eq i64 %_bop5209, 1
  br i1 %_bop5210, label %_if5213, label %_else5212
_if5213:
  %_y5215 = load i64, i64* %_y5184
  %_bop5216 = and i64 %_y5215, 1
  %_bop5217 = icmp eq i64 %_bop5216, 1
  br i1 %_bop5217, label %_if5220, label %_else5219
_if5220:
  %_x5228 = load i64, i64* %_x5182
  %_bop5229 = lshr i64 %_x5228, 1
  %_y5230 = load i64, i64* %_y5184
  %_5231 = call i64 @binary_gcd(i64 %_bop5229, i64 %_y5230)
  ret i64 %_5231
_else5219:
  %_x5222 = load i64, i64* %_x5182
  %_bop5223 = lshr i64 %_x5222, 1
  %_y5224 = load i64, i64* %_y5184
  %_bop5225 = lshr i64 %_y5224, 1
  %_5226 = call i64 @binary_gcd(i64 %_bop5223, i64 %_bop5225)
  %_bop5227 = shl i64 %_5226, 1
  ret i64 %_bop5227
_after5218:
  br label %_after5211
_else5212:
  br label %_after5211
_after5211:
  %_y5232 = load i64, i64* %_y5184
  %_uop5233 = xor i64 %_y5232, -1
  %_bop5234 = and i64 %_uop5233, 1
  %_bop5235 = icmp eq i64 %_bop5234, 1
  br i1 %_bop5235, label %_if5238, label %_else5237
_if5238:
  %_x5240 = load i64, i64* %_x5182
  %_y5241 = load i64, i64* %_y5184
  %_bop5242 = lshr i64 %_y5241, 1
  %_5243 = call i64 @binary_gcd(i64 %_x5240, i64 %_bop5242)
  ret i64 %_5243
_else5237:
  br label %_after5236
_after5236:
  %_x5244 = load i64, i64* %_x5182
  %_y5245 = load i64, i64* %_y5184
  %_bop5246 = icmp sgt i64 %_x5244, %_y5245
  br i1 %_bop5246, label %_if5249, label %_else5248
_if5249:
  %_x5251 = load i64, i64* %_x5182
  %_y5252 = load i64, i64* %_y5184
  %_bop5253 = sub i64 %_x5251, %_y5252
  %_bop5254 = lshr i64 %_bop5253, 1
  %_y5255 = load i64, i64* %_y5184
  %_5256 = call i64 @binary_gcd(i64 %_bop5254, i64 %_y5255)
  ret i64 %_5256
_else5248:
  br label %_after5247
_after5247:
  %_y5257 = load i64, i64* %_y5184
  %_x5258 = load i64, i64* %_x5182
  %_bop5259 = sub i64 %_y5257, %_x5258
  %_bop5260 = lshr i64 %_bop5259, 1
  %_x5261 = load i64, i64* %_x5182
  %_5262 = call i64 @binary_gcd(i64 %_bop5260, i64 %_x5261)
  ret i64 %_5262
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x5174 = alloca i64
  %_y5176 = alloca i64
  %_argc5171 = alloca i64
  store i64 %argc, i64* %_argc5171
  %_argv5173 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5173
  store i64 21, i64* %_x5174
  store i64 15, i64* %_y5176
  %_x5178 = load i64, i64* %_x5174
  %_y5179 = load i64, i64* %_y5176
  %_5180 = call i64 @binary_gcd(i64 %_x5178, i64 %_y5179)
  ret i64 %_5180
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
