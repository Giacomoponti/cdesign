; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x5134 = alloca i64
  %_y5136 = alloca i64
  store i64 %y, i64* %_y5136
  store i64 %x, i64* %_x5134
  %_x5139 = load i64, i64* %_x5137
  %_y5140 = load i64, i64* %_y5138
  %_bop5141 = icmp eq i64 %_x5139, %_y5140
  br i1 %_bop5141, label %_if5144, label %_else5143
_if5144:
  %_x5146 = load i64, i64* %_x5137
  ret i64 %_x5146
_else5143:
  br label %_after5142
_after5142:
  %_x5147 = load i64, i64* %_x5137
  %_bop5148 = icmp eq i64 %_x5147, 0
  br i1 %_bop5148, label %_if5151, label %_else5150
_if5151:
  %_y5153 = load i64, i64* %_y5138
  ret i64 %_y5153
_else5150:
  br label %_after5149
_after5149:
  %_y5154 = load i64, i64* %_y5138
  %_bop5155 = icmp eq i64 %_y5154, 0
  br i1 %_bop5155, label %_if5158, label %_else5157
_if5158:
  %_x5160 = load i64, i64* %_x5137
  ret i64 %_x5160
_else5157:
  br label %_after5156
_after5156:
  %_x5161 = load i64, i64* %_x5137
  %_uop5162 = xor i64 %_x5161, -1
  %_bop5163 = and i64 %_uop5162, 1
  %_bop5164 = icmp eq i64 %_bop5163, 1
  br i1 %_bop5164, label %_if5167, label %_else5166
_if5167:
  %_y5169 = load i64, i64* %_y5138
  %_bop5170 = and i64 %_y5169, 1
  %_bop5171 = icmp eq i64 %_bop5170, 1
  br i1 %_bop5171, label %_if5174, label %_else5173
_if5174:
  %_x5182 = load i64, i64* %_x5137
  %_bop5183 = lshr i64 %_x5182, 1
  %_y5184 = load i64, i64* %_y5138
  %_id5185 = call i64 @binary_gcd(i64 %_bop5183, i64 %_y5184)
  ret i64 %_id5185
_else5173:
  %_x5176 = load i64, i64* %_x5137
  %_bop5177 = lshr i64 %_x5176, 1
  %_y5178 = load i64, i64* %_y5138
  %_bop5179 = lshr i64 %_y5178, 1
  %_id5180 = call i64 @binary_gcd(i64 %_bop5177, i64 %_bop5179)
  %_bop5181 = shl i64 %_id5180, 1
  ret i64 %_bop5181
_after5172:
  br label %_after5165
_else5166:
  br label %_after5165
_after5165:
  %_y5186 = load i64, i64* %_y5138
  %_uop5187 = xor i64 %_y5186, -1
  %_bop5188 = and i64 %_uop5187, 1
  %_bop5189 = icmp eq i64 %_bop5188, 1
  br i1 %_bop5189, label %_if5192, label %_else5191
_if5192:
  %_x5194 = load i64, i64* %_x5137
  %_y5195 = load i64, i64* %_y5138
  %_bop5196 = lshr i64 %_y5195, 1
  %_id5197 = call i64 @binary_gcd(i64 %_x5194, i64 %_bop5196)
  ret i64 %_id5197
_else5191:
  br label %_after5190
_after5190:
  %_x5198 = load i64, i64* %_x5137
  %_y5199 = load i64, i64* %_y5138
  %_bop5200 = icmp sgt i64 %_x5198, %_y5199
  br i1 %_bop5200, label %_if5203, label %_else5202
_if5203:
  %_x5205 = load i64, i64* %_x5137
  %_y5206 = load i64, i64* %_y5138
  %_bop5207 = sub i64 %_x5205, %_y5206
  %_bop5208 = lshr i64 %_bop5207, 1
  %_y5209 = load i64, i64* %_y5138
  %_id5210 = call i64 @binary_gcd(i64 %_bop5208, i64 %_y5209)
  ret i64 %_id5210
_else5202:
  br label %_after5201
_after5201:
  %_y5211 = load i64, i64* %_y5138
  %_x5212 = load i64, i64* %_x5137
  %_bop5213 = sub i64 %_y5211, %_x5212
  %_bop5214 = lshr i64 %_bop5213, 1
  %_x5215 = load i64, i64* %_x5137
  %_id5216 = call i64 @binary_gcd(i64 %_bop5214, i64 %_x5215)
  ret i64 %_id5216
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x5126 = alloca i64
  %_y5128 = alloca i64
  %_argc5121 = alloca i64
  %_argv5123 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5123
  store i64 %argc, i64* %_argc5121
  store i64 21, i64* %_x5126
  store i64 15, i64* %_y5128
  %_x5130 = load i64, i64* %_x5126
  %_y5131 = load i64, i64* %_y5128
  %_id5132 = call i64 @binary_gcd(i64 %_x5130, i64 %_y5131)
  ret i64 %_id5132
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
