; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_s4036 = global [2 x i8] c" \00"
@_s4037 = global i8* bitcast ([2 x i8]* @_s4036 to i8*)
@_s4043 = global [2 x i8] c"	\00"
@_s4044 = global i8* bitcast ([2 x i8]* @_s4043 to i8*)

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a4225 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b4265 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c4293 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc4200 = alloca i64
  store i64 %argc, i64* %_argc4200
  %_argv4202 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4202
  %_raw_array4203 = call i64* @oat_alloc_array(i64 3)
  %_array4204 = bitcast i64* %_raw_array4203 to { i64, [0 x i64] }*
  %_gep4205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4204, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep4205
  %_gep4207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4204, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep4207
  %_gep4209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4204, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep4209
  %_raw_array4211 = call i64* @oat_alloc_array(i64 3)
  %_array4212 = bitcast i64* %_raw_array4211 to { i64, [0 x i64] }*
  %_gep4213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4212, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep4213
  %_gep4215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4212, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4215
  %_gep4217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4212, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4217
  %_raw_array4219 = call i64* @oat_alloc_array(i64 2)
  %_array4220 = bitcast i64* %_raw_array4219 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4221 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4220, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4204, { i64, [0 x i64] }** %_gep4221
  %_gep4223 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4220, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4212, { i64, [0 x i64] }** %_gep4223
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4220, { i64, [0 x { i64, [0 x i64] }*] }** %_a4225
  %_raw_array4227 = call i64* @oat_alloc_array(i64 4)
  %_array4228 = bitcast i64* %_raw_array4227 to { i64, [0 x i64] }*
  %_gep4229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4228, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep4229
  %_gep4231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4228, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4231
  %_gep4233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4228, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep4233
  %_gep4235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4228, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep4235
  %_raw_array4237 = call i64* @oat_alloc_array(i64 4)
  %_array4238 = bitcast i64* %_raw_array4237 to { i64, [0 x i64] }*
  %_gep4239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4238, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep4239
  %_gep4241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4238, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4241
  %_gep4243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4238, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4243
  %_gep4245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4238, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4245
  %_raw_array4247 = call i64* @oat_alloc_array(i64 4)
  %_array4248 = bitcast i64* %_raw_array4247 to { i64, [0 x i64] }*
  %_gep4249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4248, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep4249
  %_gep4251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4248, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4251
  %_gep4253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4248, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4253
  %_gep4255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4248, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep4255
  %_raw_array4257 = call i64* @oat_alloc_array(i64 3)
  %_array4258 = bitcast i64* %_raw_array4257 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4259 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4258, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4228, { i64, [0 x i64] }** %_gep4259
  %_gep4261 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4258, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4238, { i64, [0 x i64] }** %_gep4261
  %_gep4263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4258, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4248, { i64, [0 x i64] }** %_gep4263
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4258, { i64, [0 x { i64, [0 x i64] }*] }** %_b4265
  %_raw_array4267 = call i64* @oat_alloc_array(i64 4)
  %_array4268 = bitcast i64* %_raw_array4267 to { i64, [0 x i64] }*
  %_gep4269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4268, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4269
  %_gep4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4268, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4271
  %_gep4273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4268, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep4273
  %_gep4275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4268, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4275
  %_raw_array4277 = call i64* @oat_alloc_array(i64 4)
  %_array4278 = bitcast i64* %_raw_array4277 to { i64, [0 x i64] }*
  %_gep4279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4278, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4279
  %_gep4281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4278, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4281
  %_gep4283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4278, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep4283
  %_gep4285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4278, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4285
  %_raw_array4287 = call i64* @oat_alloc_array(i64 2)
  %_array4288 = bitcast i64* %_raw_array4287 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4289 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4288, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4268, { i64, [0 x i64] }** %_gep4289
  %_gep4291 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4288, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4278, { i64, [0 x i64] }** %_gep4291
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4288, { i64, [0 x { i64, [0 x i64] }*] }** %_c4293
  %_a4295 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4225
  %_b4296 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4265
  %_c4297 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4293
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a4295, { i64, [0 x { i64, [0 x i64] }*] }* %_b4296, { i64, [0 x { i64, [0 x i64] }*] }* %_c4297)
  %_c4299 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4293
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4299, i64 2)
  %_a4301 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4225
  %_b4302 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4265
  %_c4303 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4293
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a4301, { i64, [0 x { i64, [0 x i64] }*] }* %_b4302, { i64, [0 x { i64, [0 x i64] }*] }* %_c4303)
  %_c4305 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4293
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4305, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4136 = alloca i64
  %_j4144 = alloca i64
  %_k4152 = alloca i64
  %_a14131 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14131
  %_a24133 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24133
  %_a34135 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34135
  store i64 0, i64* %_i4136
  br label %_pre4141
_pre4141:
  %_i4138 = load i64, i64* %_i4136
  %_bop4139 = icmp slt i64 %_i4138, 2
  %_cnd4143 = icmp eq i1 %_bop4139, 0
  br i1 %_cnd4143, label %_post4140, label %_body4142
_body4142:
  store i64 0, i64* %_j4144
  br label %_pre4149
_pre4149:
  %_j4146 = load i64, i64* %_j4144
  %_bop4147 = icmp slt i64 %_j4146, 4
  %_cnd4151 = icmp eq i1 %_bop4147, 0
  br i1 %_cnd4151, label %_post4148, label %_body4150
_body4150:
  store i64 0, i64* %_k4152
  br label %_pre4157
_pre4157:
  %_k4154 = load i64, i64* %_k4152
  %_bop4155 = icmp slt i64 %_k4154, 3
  %_cnd4159 = icmp eq i1 %_bop4155, 0
  br i1 %_cnd4159, label %_post4156, label %_body4158
_body4158:
  %_a34164 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34135
  %_i4165 = load i64, i64* %_i4136
  %_ptr4162 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34164, i32 0, i32 1, i64 %_i4165
  %_resPtr4163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4162
  %_j4166 = load i64, i64* %_j4144
  %_ptr4160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4163, i32 0, i32 1, i64 %_j4166
  %_resPtr4161 = load i64, i64* %_ptr4160
  %_a14171 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14131
  %_i4172 = load i64, i64* %_i4136
  %_ptr4169 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a14171, i32 0, i32 1, i64 %_i4172
  %_resPtr4170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4169
  %_k4173 = load i64, i64* %_k4152
  %_ptr4167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4170, i32 0, i32 1, i64 %_k4173
  %_resPtr4168 = load i64, i64* %_ptr4167
  %_a24178 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24133
  %_k4179 = load i64, i64* %_k4152
  %_ptr4176 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a24178, i32 0, i32 1, i64 %_k4179
  %_resPtr4177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4176
  %_j4180 = load i64, i64* %_j4144
  %_ptr4174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4177, i32 0, i32 1, i64 %_j4180
  %_resPtr4175 = load i64, i64* %_ptr4174
  %_bop4181 = mul i64 %_resPtr4168, %_resPtr4175
  %_bop4182 = add i64 %_resPtr4161, %_bop4181
  %_a34185 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34135
  %_i4186 = load i64, i64* %_i4136
  %_ptr4183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34185, i32 0, i32 1, i64 %_i4186
  %_resPtr4184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4183
  %_j4187 = load i64, i64* %_j4144
  %_ptr4188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4184, i32 0, i32 1, i64 %_j4187
  store i64 %_bop4182, i64* %_ptr4188
  %_k4190 = load i64, i64* %_k4152
  %_bop4191 = add i64 %_k4190, 1
  store i64 %_bop4191, i64* %_k4152
  br label %_pre4157
_post4156:
  %_j4193 = load i64, i64* %_j4144
  %_bop4194 = add i64 %_j4193, 1
  store i64 %_bop4194, i64* %_j4144
  br label %_pre4149
_post4148:
  %_i4196 = load i64, i64* %_i4136
  %_bop4197 = add i64 %_i4196, 1
  store i64 %_bop4197, i64* %_i4136
  br label %_pre4141
_post4140:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4096 = alloca i64
  %_j4104 = alloca i64
  %_a14091 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14091
  %_a24093 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24093
  %_a34095 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34095
  store i64 0, i64* %_i4096
  br label %_pre4101
_pre4101:
  %_i4098 = load i64, i64* %_i4096
  %_bop4099 = icmp slt i64 %_i4098, 2
  %_cnd4103 = icmp eq i1 %_bop4099, 0
  br i1 %_cnd4103, label %_post4100, label %_body4102
_body4102:
  store i64 0, i64* %_j4104
  br label %_pre4109
_pre4109:
  %_j4106 = load i64, i64* %_j4104
  %_bop4107 = icmp slt i64 %_j4106, 4
  %_cnd4111 = icmp eq i1 %_bop4107, 0
  br i1 %_cnd4111, label %_post4108, label %_body4110
_body4110:
  %_a14112 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14091
  %_a24113 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24093
  %_i4114 = load i64, i64* %_i4096
  %_j4115 = load i64, i64* %_j4104
  %_4116 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a14112, { i64, [0 x { i64, [0 x i64] }*] }* %_a24113, i64 %_i4114, i64 %_j4115)
  %_a34119 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34095
  %_i4120 = load i64, i64* %_i4096
  %_ptr4117 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34119, i32 0, i32 1, i64 %_i4120
  %_resPtr4118 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4117
  %_j4121 = load i64, i64* %_j4104
  %_ptr4122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4118, i32 0, i32 1, i64 %_j4121
  store i64 %_4116, i64* %_ptr4122
  %_j4124 = load i64, i64* %_j4104
  %_bop4125 = add i64 %_j4124, 1
  store i64 %_bop4125, i64* %_j4104
  br label %_pre4109
_post4108:
  %_i4127 = load i64, i64* %_i4096
  %_bop4128 = add i64 %_i4127, 1
  store i64 %_bop4128, i64* %_i4096
  br label %_pre4101
_post4100:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_sum4058 = alloca i64
  %_k4060 = alloca i64
  %_a14051 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14051
  %_a24053 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24053
  %_row4055 = alloca i64
  store i64 %row, i64* %_row4055
  %_col4057 = alloca i64
  store i64 %col, i64* %_col4057
  store i64 0, i64* %_sum4058
  store i64 0, i64* %_k4060
  br label %_pre4065
_pre4065:
  %_k4062 = load i64, i64* %_k4060
  %_bop4063 = icmp slt i64 %_k4062, 3
  %_cnd4067 = icmp eq i1 %_bop4063, 0
  br i1 %_cnd4067, label %_post4064, label %_body4066
_body4066:
  %_sum4068 = load i64, i64* %_sum4058
  %_a14073 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14051
  %_row4074 = load i64, i64* %_row4055
  %_ptr4071 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a14073, i32 0, i32 1, i64 %_row4074
  %_resPtr4072 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4071
  %_k4075 = load i64, i64* %_k4060
  %_ptr4069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4072, i32 0, i32 1, i64 %_k4075
  %_resPtr4070 = load i64, i64* %_ptr4069
  %_a24080 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24053
  %_k4081 = load i64, i64* %_k4060
  %_ptr4078 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a24080, i32 0, i32 1, i64 %_k4081
  %_resPtr4079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4078
  %_col4082 = load i64, i64* %_col4057
  %_ptr4076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4079, i32 0, i32 1, i64 %_col4082
  %_resPtr4077 = load i64, i64* %_ptr4076
  %_bop4083 = mul i64 %_resPtr4070, %_resPtr4077
  %_bop4084 = add i64 %_sum4068, %_bop4083
  store i64 %_bop4084, i64* %_sum4058
  %_k4086 = load i64, i64* %_k4060
  %_bop4087 = add i64 %_k4086, 1
  store i64 %_bop4087, i64* %_k4060
  br label %_pre4065
_post4064:
  %_sum4089 = load i64, i64* %_sum4058
  ret i64 %_sum4089
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_i4011 = alloca i64
  %_j4020 = alloca i64
  %_ar4008 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar4008
  %_n4010 = alloca i64
  store i64 %n, i64* %_n4010
  store i64 0, i64* %_i4011
  br label %_pre4017
_pre4017:
  %_i4013 = load i64, i64* %_i4011
  %_n4014 = load i64, i64* %_n4010
  %_bop4015 = icmp slt i64 %_i4013, %_n4014
  %_cnd4019 = icmp eq i1 %_bop4015, 0
  br i1 %_cnd4019, label %_post4016, label %_body4018
_body4018:
  store i64 0, i64* %_j4020
  br label %_pre4025
_pre4025:
  %_j4022 = load i64, i64* %_j4020
  %_bop4023 = icmp slt i64 %_j4022, 4
  %_cnd4027 = icmp eq i1 %_bop4023, 0
  br i1 %_cnd4027, label %_post4024, label %_body4026
_body4026:
  %_ar4032 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar4008
  %_i4033 = load i64, i64* %_i4011
  %_ptr4030 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar4032, i32 0, i32 1, i64 %_i4033
  %_resPtr4031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4030
  %_j4034 = load i64, i64* %_j4020
  %_ptr4028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4031, i32 0, i32 1, i64 %_j4034
  %_resPtr4029 = load i64, i64* %_ptr4028
  call void @print_int(i64 %_resPtr4029)
  %_tmp4038 = load i8*, i8** @_s4037
  call void @print_string(i8* %_tmp4038)
  %_j4040 = load i64, i64* %_j4020
  %_bop4041 = add i64 %_j4040, 1
  store i64 %_bop4041, i64* %_j4020
  br label %_pre4025
_post4024:
  %_tmp4045 = load i8*, i8** @_s4044
  call void @print_string(i8* %_tmp4045)
  %_i4047 = load i64, i64* %_i4011
  %_bop4048 = add i64 %_i4047, 1
  store i64 %_bop4048, i64* %_i4011
  br label %_pre4017
_post4016:
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
