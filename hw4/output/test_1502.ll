; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_s4002 = global [2 x i8] c" \00"
@_s4003 = global i8* bitcast ([2 x i8]* @_s4002 to i8*)
@_s4009 = global [2 x i8] c"	\00"
@_s4010 = global i8* bitcast ([2 x i8]* @_s4009 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a4203 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b4243 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c4271 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc4176 = alloca i64
  %_argv4178 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4178
  store i64 %argc, i64* %_argc4176
  %_raw_array4181 = call i64* @oat_alloc_array(i64 3)
  %_array4182 = bitcast i64* %_raw_array4181 to { i64, [0 x i64] }*
  %_gep4183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4182, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep4183
  %_gep4185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4182, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep4185
  %_gep4187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4182, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4187
  %_raw_array4189 = call i64* @oat_alloc_array(i64 3)
  %_array4190 = bitcast i64* %_raw_array4189 to { i64, [0 x i64] }*
  %_gep4191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4190, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep4191
  %_gep4193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4190, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4193
  %_gep4195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4190, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4195
  %_raw_array4197 = call i64* @oat_alloc_array(i64 2)
  %_array4198 = bitcast i64* %_raw_array4197 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4198, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4190, { i64, [0 x i64] }** %_gep4199
  %_gep4201 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4198, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4182, { i64, [0 x i64] }** %_gep4201
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4198, { i64, [0 x { i64, [0 x i64] }*] }** %_a4203
  %_raw_array4205 = call i64* @oat_alloc_array(i64 4)
  %_array4206 = bitcast i64* %_raw_array4205 to { i64, [0 x i64] }*
  %_gep4207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep4207
  %_gep4209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep4209
  %_gep4211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4211
  %_gep4213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4206, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep4213
  %_raw_array4215 = call i64* @oat_alloc_array(i64 4)
  %_array4216 = bitcast i64* %_raw_array4215 to { i64, [0 x i64] }*
  %_gep4217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4216, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep4217
  %_gep4219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4216, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4219
  %_gep4221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4216, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4221
  %_gep4223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4216, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4223
  %_raw_array4225 = call i64* @oat_alloc_array(i64 4)
  %_array4226 = bitcast i64* %_raw_array4225 to { i64, [0 x i64] }*
  %_gep4227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4226, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep4227
  %_gep4229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4226, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep4229
  %_gep4231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4226, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4231
  %_gep4233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4226, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep4233
  %_raw_array4235 = call i64* @oat_alloc_array(i64 3)
  %_array4236 = bitcast i64* %_raw_array4235 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4237 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4236, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4226, { i64, [0 x i64] }** %_gep4237
  %_gep4239 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4236, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4216, { i64, [0 x i64] }** %_gep4239
  %_gep4241 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4236, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4206, { i64, [0 x i64] }** %_gep4241
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4236, { i64, [0 x { i64, [0 x i64] }*] }** %_b4243
  %_raw_array4245 = call i64* @oat_alloc_array(i64 4)
  %_array4246 = bitcast i64* %_raw_array4245 to { i64, [0 x i64] }*
  %_gep4247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4247
  %_gep4249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4249
  %_gep4251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep4251
  %_gep4253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4246, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4253
  %_raw_array4255 = call i64* @oat_alloc_array(i64 4)
  %_array4256 = bitcast i64* %_raw_array4255 to { i64, [0 x i64] }*
  %_gep4257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4256, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4257
  %_gep4259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4256, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4259
  %_gep4261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4256, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep4261
  %_gep4263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4256, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4263
  %_raw_array4265 = call i64* @oat_alloc_array(i64 2)
  %_array4266 = bitcast i64* %_raw_array4265 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4267 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4266, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4256, { i64, [0 x i64] }** %_gep4267
  %_gep4269 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4266, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4246, { i64, [0 x i64] }** %_gep4269
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4266, { i64, [0 x { i64, [0 x i64] }*] }** %_c4271
  %_a4273 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4203
  %_b4274 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4243
  %_c4275 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4271
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a4273, { i64, [0 x { i64, [0 x i64] }*] }* %_b4274, { i64, [0 x { i64, [0 x i64] }*] }* %_c4275)
  %_c4277 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4271
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4277, i64 2)
  %_a4279 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4203
  %_b4280 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4243
  %_c4281 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4271
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a4279, { i64, [0 x { i64, [0 x i64] }*] }* %_b4280, { i64, [0 x { i64, [0 x i64] }*] }* %_c4281)
  %_c4283 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4271
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4283, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4112 = alloca i64
  %_j4120 = alloca i64
  %_k4128 = alloca i64
  %_a14104 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24106 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a34108 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34108
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24106
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14104
  store i64 0, i64* %_i4112
  br label %_pre4117
_pre4117:
  %_i4114 = load i64, i64* %_i4112
  %_bop4115 = icmp slt i64 %_i4114, 2
  %_cnd4119 = icmp eq i1 %_bop4115, 0
  br i1 %_cnd4119, label %_post4116, label %_body4118
_body4118:
  store i64 0, i64* %_j4120
  br label %_pre4125
_pre4125:
  %_j4122 = load i64, i64* %_j4120
  %_bop4123 = icmp slt i64 %_j4122, 4
  %_cnd4127 = icmp eq i1 %_bop4123, 0
  br i1 %_cnd4127, label %_post4124, label %_body4126
_body4126:
  store i64 0, i64* %_k4128
  br label %_pre4133
_pre4133:
  %_k4130 = load i64, i64* %_k4128
  %_bop4131 = icmp slt i64 %_k4130, 3
  %_cnd4135 = icmp eq i1 %_bop4131, 0
  br i1 %_cnd4135, label %_post4132, label %_body4134
_body4134:
  %_a34140 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34111
  %_i4141 = load i64, i64* %_i4112
  %_ptr4138 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34140, i32 0, i32 1, i64 %_i4141
  %_resPtr4139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4138
  %_j4142 = load i64, i64* %_j4120
  %_ptr4136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4139, i32 0, i32 1, i64 %_j4142
  %_resPtr4137 = load i64, i64* %_ptr4136
  %_a14147 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14109
  %_i4148 = load i64, i64* %_i4112
  %_ptr4145 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a14147, i32 0, i32 1, i64 %_i4148
  %_resPtr4146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4145
  %_k4149 = load i64, i64* %_k4128
  %_ptr4143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4146, i32 0, i32 1, i64 %_k4149
  %_resPtr4144 = load i64, i64* %_ptr4143
  %_a24154 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24110
  %_k4155 = load i64, i64* %_k4128
  %_ptr4152 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a24154, i32 0, i32 1, i64 %_k4155
  %_resPtr4153 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4152
  %_j4156 = load i64, i64* %_j4120
  %_ptr4150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4153, i32 0, i32 1, i64 %_j4156
  %_resPtr4151 = load i64, i64* %_ptr4150
  %_bop4157 = mul i64 %_resPtr4144, %_resPtr4151
  %_bop4158 = add i64 %_resPtr4137, %_bop4157
  %_a34161 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34111
  %_i4162 = load i64, i64* %_i4112
  %_ptr4159 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34161, i32 0, i32 1, i64 %_i4162
  %_resPtr4160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4159
  %_j4163 = load i64, i64* %_j4120
  %_ptr4164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4160, i32 0, i32 1, i64 %_j4163
  store i64 %_bop4158, i64* %_ptr4164
  %_k4166 = load i64, i64* %_k4128
  %_bop4167 = add i64 %_k4166, 1
  store i64 %_bop4167, i64* %_k4128
  br label %_pre4133
_post4132:
  %_j4169 = load i64, i64* %_j4120
  %_bop4170 = add i64 %_j4169, 1
  store i64 %_bop4170, i64* %_j4120
  br label %_pre4125
_post4124:
  %_i4172 = load i64, i64* %_i4112
  %_bop4173 = add i64 %_i4172, 1
  store i64 %_bop4173, i64* %_i4112
  br label %_pre4117
_post4116:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4069 = alloca i64
  %_j4077 = alloca i64
  %_a14061 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24063 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a34065 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34065
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24063
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14061
  store i64 0, i64* %_i4069
  br label %_pre4074
_pre4074:
  %_i4071 = load i64, i64* %_i4069
  %_bop4072 = icmp slt i64 %_i4071, 2
  %_cnd4076 = icmp eq i1 %_bop4072, 0
  br i1 %_cnd4076, label %_post4073, label %_body4075
_body4075:
  store i64 0, i64* %_j4077
  br label %_pre4082
_pre4082:
  %_j4079 = load i64, i64* %_j4077
  %_bop4080 = icmp slt i64 %_j4079, 4
  %_cnd4084 = icmp eq i1 %_bop4080, 0
  br i1 %_cnd4084, label %_post4081, label %_body4083
_body4083:
  %_a14085 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14066
  %_a24086 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24067
  %_i4087 = load i64, i64* %_i4069
  %_j4088 = load i64, i64* %_j4077
  %_id4089 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a14085, { i64, [0 x { i64, [0 x i64] }*] }* %_a24086, i64 %_i4087, i64 %_j4088)
  %_a34092 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34068
  %_i4093 = load i64, i64* %_i4069
  %_ptr4090 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34092, i32 0, i32 1, i64 %_i4093
  %_resPtr4091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4090
  %_j4094 = load i64, i64* %_j4077
  %_ptr4095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4091, i32 0, i32 1, i64 %_j4094
  store i64 %_id4089, i64* %_ptr4095
  %_j4097 = load i64, i64* %_j4077
  %_bop4098 = add i64 %_j4097, 1
  store i64 %_bop4098, i64* %_j4077
  br label %_pre4082
_post4081:
  %_i4100 = load i64, i64* %_i4069
  %_bop4101 = add i64 %_i4100, 1
  store i64 %_bop4101, i64* %_i4069
  br label %_pre4074
_post4073:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_sum4028 = alloca i64
  %_k4030 = alloca i64
  %_a14017 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24019 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row4021 = alloca i64
  %_col4023 = alloca i64
  store i64 %col, i64* %_col4023
  store i64 %row, i64* %_row4021
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24019
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14017
  store i64 0, i64* %_sum4028
  store i64 0, i64* %_k4030
  br label %_pre4035
_pre4035:
  %_k4032 = load i64, i64* %_k4030
  %_bop4033 = icmp slt i64 %_k4032, 3
  %_cnd4037 = icmp eq i1 %_bop4033, 0
  br i1 %_cnd4037, label %_post4034, label %_body4036
_body4036:
  %_sum4038 = load i64, i64* %_sum4028
  %_a14043 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14024
  %_row4044 = load i64, i64* %_row4026
  %_ptr4041 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a14043, i32 0, i32 1, i64 %_row4044
  %_resPtr4042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4041
  %_k4045 = load i64, i64* %_k4030
  %_ptr4039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4042, i32 0, i32 1, i64 %_k4045
  %_resPtr4040 = load i64, i64* %_ptr4039
  %_a24050 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24025
  %_k4051 = load i64, i64* %_k4030
  %_ptr4048 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a24050, i32 0, i32 1, i64 %_k4051
  %_resPtr4049 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4048
  %_col4052 = load i64, i64* %_col4027
  %_ptr4046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4049, i32 0, i32 1, i64 %_col4052
  %_resPtr4047 = load i64, i64* %_ptr4046
  %_bop4053 = mul i64 %_resPtr4040, %_resPtr4047
  %_bop4054 = add i64 %_sum4038, %_bop4053
  store i64 %_bop4054, i64* %_sum4028
  %_k4056 = load i64, i64* %_k4030
  %_bop4057 = add i64 %_k4056, 1
  store i64 %_bop4057, i64* %_k4030
  br label %_pre4035
_post4034:
  %_sum4059 = load i64, i64* %_sum4028
  ret i64 %_sum4059
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_i3977 = alloca i64
  %_j3986 = alloca i64
  %_ar3972 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3974 = alloca i64
  store i64 %n, i64* %_n3974
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3972
  store i64 0, i64* %_i3977
  br label %_pre3983
_pre3983:
  %_i3979 = load i64, i64* %_i3977
  %_n3980 = load i64, i64* %_n3976
  %_bop3981 = icmp slt i64 %_i3979, %_n3980
  %_cnd3985 = icmp eq i1 %_bop3981, 0
  br i1 %_cnd3985, label %_post3982, label %_body3984
_body3984:
  store i64 0, i64* %_j3986
  br label %_pre3991
_pre3991:
  %_j3988 = load i64, i64* %_j3986
  %_bop3989 = icmp slt i64 %_j3988, 4
  %_cnd3993 = icmp eq i1 %_bop3989, 0
  br i1 %_cnd3993, label %_post3990, label %_body3992
_body3992:
  %_ar3998 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3975
  %_i3999 = load i64, i64* %_i3977
  %_ptr3996 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3998, i32 0, i32 1, i64 %_i3999
  %_resPtr3997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3996
  %_j4000 = load i64, i64* %_j3986
  %_ptr3994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr3997, i32 0, i32 1, i64 %_j4000
  %_resPtr3995 = load i64, i64* %_ptr3994
  call void @print_int(i64 %_resPtr3995)
  %_tmp4004 = load i8*, i8** @_s4003
  call void @print_string(i8* %_tmp4004)
  %_j4006 = load i64, i64* %_j3986
  %_bop4007 = add i64 %_j4006, 1
  store i64 %_bop4007, i64* %_j3986
  br label %_pre3991
_post3990:
  %_tmp4011 = load i8*, i8** @_s4010
  call void @print_string(i8* %_tmp4011)
  %_i4013 = load i64, i64* %_i3977
  %_bop4014 = add i64 %_i4013, 1
  store i64 %_bop4014, i64* %_i3977
  br label %_pre3983
_post3982:
  ret void
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
