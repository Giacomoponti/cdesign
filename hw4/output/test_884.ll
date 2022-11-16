; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a4149 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b4189 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c4217 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc4122 = alloca i64
  %_argv4124 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4124
  store i64 %argc, i64* %_argc4122
  %_raw_array4127 = call i64* @oat_alloc_array(i64 3)
  %_array4128 = bitcast i64* %_raw_array4127 to { i64, [0 x i64] }*
  %_gep4129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4128, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep4129
  %_gep4131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4128, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep4131
  %_gep4133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4128, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep4133
  %_raw_array4135 = call i64* @oat_alloc_array(i64 3)
  %_array4136 = bitcast i64* %_raw_array4135 to { i64, [0 x i64] }*
  %_gep4137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4136, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep4137
  %_gep4139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4136, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4139
  %_gep4141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4136, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4141
  %_raw_array4143 = call i64* @oat_alloc_array(i64 2)
  %_array4144 = bitcast i64* %_raw_array4143 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4145 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4144, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4128, { i64, [0 x i64] }** %_gep4145
  %_gep4147 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4144, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4136, { i64, [0 x i64] }** %_gep4147
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4144, { i64, [0 x { i64, [0 x i64] }*] }** %_a4149
  %_raw_array4151 = call i64* @oat_alloc_array(i64 4)
  %_array4152 = bitcast i64* %_raw_array4151 to { i64, [0 x i64] }*
  %_gep4153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4152, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep4153
  %_gep4155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4152, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4155
  %_gep4157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4152, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep4157
  %_gep4159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4152, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep4159
  %_raw_array4161 = call i64* @oat_alloc_array(i64 4)
  %_array4162 = bitcast i64* %_raw_array4161 to { i64, [0 x i64] }*
  %_gep4163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4162, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep4163
  %_gep4165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4162, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4165
  %_gep4167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4162, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep4167
  %_gep4169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4162, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4169
  %_raw_array4171 = call i64* @oat_alloc_array(i64 4)
  %_array4172 = bitcast i64* %_raw_array4171 to { i64, [0 x i64] }*
  %_gep4173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4172, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep4173
  %_gep4175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4172, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep4175
  %_gep4177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4172, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4177
  %_gep4179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4172, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep4179
  %_raw_array4181 = call i64* @oat_alloc_array(i64 3)
  %_array4182 = bitcast i64* %_raw_array4181 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4182, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4152, { i64, [0 x i64] }** %_gep4183
  %_gep4185 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4182, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4162, { i64, [0 x i64] }** %_gep4185
  %_gep4187 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4182, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4172, { i64, [0 x i64] }** %_gep4187
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4182, { i64, [0 x { i64, [0 x i64] }*] }** %_b4189
  %_raw_array4191 = call i64* @oat_alloc_array(i64 4)
  %_array4192 = bitcast i64* %_raw_array4191 to { i64, [0 x i64] }*
  %_gep4193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4193
  %_gep4195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4195
  %_gep4197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep4197
  %_gep4199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4192, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4199
  %_raw_array4201 = call i64* @oat_alloc_array(i64 4)
  %_array4202 = bitcast i64* %_raw_array4201 to { i64, [0 x i64] }*
  %_gep4203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4202, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4203
  %_gep4205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4202, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep4205
  %_gep4207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4202, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep4207
  %_gep4209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4202, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep4209
  %_raw_array4211 = call i64* @oat_alloc_array(i64 2)
  %_array4212 = bitcast i64* %_raw_array4211 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep4213 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4212, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4192, { i64, [0 x i64] }** %_gep4213
  %_gep4215 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4212, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4202, { i64, [0 x i64] }** %_gep4215
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4212, { i64, [0 x { i64, [0 x i64] }*] }** %_c4217
  %_a4219 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4149
  %_b4220 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4189
  %_c4221 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4217
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a4219, { i64, [0 x { i64, [0 x i64] }*] }* %_b4220, { i64, [0 x { i64, [0 x i64] }*] }* %_c4221)
  %_c4223 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4217
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4223, i64 2)
  %_a4225 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4149
  %_b4226 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4189
  %_c4227 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4217
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a4225, { i64, [0 x { i64, [0 x i64] }*] }* %_b4226, { i64, [0 x { i64, [0 x i64] }*] }* %_c4227)
  %_c4229 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4217
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4229, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4058 = alloca i64
  %_j4066 = alloca i64
  %_k4074 = alloca i64
  %_a14050 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24052 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a34054 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34054
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24052
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14050
  store i64 0, i64* %_i4058
  br label %_pre4063
_pre4063:
  %_i4060 = load i64, i64* %_i4058
  %_bop4061 = icmp slt i64 %_i4060, 2
  %_cnd4065 = icmp eq i1 %_bop4061, 0
  br i1 %_cnd4065, label %_post4062, label %_body4064
_body4064:
  store i64 0, i64* %_j4066
  br label %_pre4071
_pre4071:
  %_j4068 = load i64, i64* %_j4066
  %_bop4069 = icmp slt i64 %_j4068, 4
  %_cnd4073 = icmp eq i1 %_bop4069, 0
  br i1 %_cnd4073, label %_post4070, label %_body4072
_body4072:
  store i64 0, i64* %_k4074
  br label %_pre4079
_pre4079:
  %_k4076 = load i64, i64* %_k4074
  %_bop4077 = icmp slt i64 %_k4076, 3
  %_cnd4081 = icmp eq i1 %_bop4077, 0
  br i1 %_cnd4081, label %_post4078, label %_body4080
_body4080:
  %_a34086 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34057
  %_i4087 = load i64, i64* %_i4058
  %_ptr4084 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34086, i32 0, i32 1, i64 %_i4087
  %_resPtr4085 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4084
  %_j4088 = load i64, i64* %_j4066
  %_ptr4082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4085, i32 0, i32 1, i64 %_j4088
  %_resPtr4083 = load i64, i64* %_ptr4082
  %_a14093 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14055
  %_i4094 = load i64, i64* %_i4058
  %_ptr4091 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a14093, i32 0, i32 1, i64 %_i4094
  %_resPtr4092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4091
  %_k4095 = load i64, i64* %_k4074
  %_ptr4089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4092, i32 0, i32 1, i64 %_k4095
  %_resPtr4090 = load i64, i64* %_ptr4089
  %_a24100 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24056
  %_k4101 = load i64, i64* %_k4074
  %_ptr4098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a24100, i32 0, i32 1, i64 %_k4101
  %_resPtr4099 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4098
  %_j4102 = load i64, i64* %_j4066
  %_ptr4096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4099, i32 0, i32 1, i64 %_j4102
  %_resPtr4097 = load i64, i64* %_ptr4096
  %_bop4103 = mul i64 %_resPtr4090, %_resPtr4097
  %_bop4104 = add i64 %_resPtr4083, %_bop4103
  %_a34107 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34057
  %_i4108 = load i64, i64* %_i4058
  %_ptr4105 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34107, i32 0, i32 1, i64 %_i4108
  %_resPtr4106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4105
  %_j4109 = load i64, i64* %_j4066
  %_ptr4110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4106, i32 0, i32 1, i64 %_j4109
  store i64 %_bop4104, i64* %_ptr4110
  %_k4112 = load i64, i64* %_k4074
  %_bop4113 = add i64 %_k4112, 1
  store i64 %_bop4113, i64* %_k4074
  br label %_pre4079
_post4078:
  %_j4115 = load i64, i64* %_j4066
  %_bop4116 = add i64 %_j4115, 1
  store i64 %_bop4116, i64* %_j4066
  br label %_pre4071
_post4070:
  %_i4118 = load i64, i64* %_i4058
  %_bop4119 = add i64 %_i4118, 1
  store i64 %_bop4119, i64* %_i4058
  br label %_pre4063
_post4062:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4015 = alloca i64
  %_j4023 = alloca i64
  %_a14007 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24009 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a34011 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34011
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24009
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14007
  store i64 0, i64* %_i4015
  br label %_pre4020
_pre4020:
  %_i4017 = load i64, i64* %_i4015
  %_bop4018 = icmp slt i64 %_i4017, 2
  %_cnd4022 = icmp eq i1 %_bop4018, 0
  br i1 %_cnd4022, label %_post4019, label %_body4021
_body4021:
  store i64 0, i64* %_j4023
  br label %_pre4028
_pre4028:
  %_j4025 = load i64, i64* %_j4023
  %_bop4026 = icmp slt i64 %_j4025, 4
  %_cnd4030 = icmp eq i1 %_bop4026, 0
  br i1 %_cnd4030, label %_post4027, label %_body4029
_body4029:
  %_a14031 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14012
  %_a24032 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24013
  %_i4033 = load i64, i64* %_i4015
  %_j4034 = load i64, i64* %_j4023
  %_id4035 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a14031, { i64, [0 x { i64, [0 x i64] }*] }* %_a24032, i64 %_i4033, i64 %_j4034)
  %_a34038 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34014
  %_i4039 = load i64, i64* %_i4015
  %_ptr4036 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a34038, i32 0, i32 1, i64 %_i4039
  %_resPtr4037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4036
  %_j4040 = load i64, i64* %_j4023
  %_ptr4041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr4037, i32 0, i32 1, i64 %_j4040
  store i64 %_id4035, i64* %_ptr4041
  %_j4043 = load i64, i64* %_j4023
  %_bop4044 = add i64 %_j4043, 1
  store i64 %_bop4044, i64* %_j4023
  br label %_pre4028
_post4027:
  %_i4046 = load i64, i64* %_i4015
  %_bop4047 = add i64 %_i4046, 1
  store i64 %_bop4047, i64* %_i4015
  br label %_pre4020
_post4019:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_sum3974 = alloca i64
  %_k3976 = alloca i64
  %_a13963 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23965 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3967 = alloca i64
  %_col3969 = alloca i64
  store i64 %col, i64* %_col3969
  store i64 %row, i64* %_row3967
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23965
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13963
  store i64 0, i64* %_sum3974
  store i64 0, i64* %_k3976
  br label %_pre3981
_pre3981:
  %_k3978 = load i64, i64* %_k3976
  %_bop3979 = icmp slt i64 %_k3978, 3
  %_cnd3983 = icmp eq i1 %_bop3979, 0
  br i1 %_cnd3983, label %_post3980, label %_body3982
_body3982:
  %_sum3984 = load i64, i64* %_sum3974
  %_a13989 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13970
  %_row3990 = load i64, i64* %_row3972
  %_ptr3987 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13989, i32 0, i32 1, i64 %_row3990
  %_resPtr3988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3987
  %_k3991 = load i64, i64* %_k3976
  %_ptr3985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr3988, i32 0, i32 1, i64 %_k3991
  %_resPtr3986 = load i64, i64* %_ptr3985
  %_a23996 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23971
  %_k3997 = load i64, i64* %_k3976
  %_ptr3994 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23996, i32 0, i32 1, i64 %_k3997
  %_resPtr3995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3994
  %_col3998 = load i64, i64* %_col3973
  %_ptr3992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr3995, i32 0, i32 1, i64 %_col3998
  %_resPtr3993 = load i64, i64* %_ptr3992
  %_bop3999 = mul i64 %_resPtr3986, %_resPtr3993
  %_bop4000 = add i64 %_sum3984, %_bop3999
  store i64 %_bop4000, i64* %_sum3974
  %_k4002 = load i64, i64* %_k3976
  %_bop4003 = add i64 %_k4002, 1
  store i64 %_bop4003, i64* %_k3976
  br label %_pre3981
_post3980:
  %_sum4005 = load i64, i64* %_sum3974
  ret i64 %_sum4005
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_i3929 = alloca i64
  %_j3938 = alloca i64
  %_ar3924 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3926 = alloca i64
  store i64 %n, i64* %_n3926
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3924
  store i64 0, i64* %_i3929
  br label %_pre3935
_pre3935:
  %_i3931 = load i64, i64* %_i3929
  %_n3932 = load i64, i64* %_n3928
  %_bop3933 = icmp slt i64 %_i3931, %_n3932
  %_cnd3937 = icmp eq i1 %_bop3933, 0
  br i1 %_cnd3937, label %_post3934, label %_body3936
_body3936:
  store i64 0, i64* %_j3938
  br label %_pre3943
_pre3943:
  %_j3940 = load i64, i64* %_j3938
  %_bop3941 = icmp slt i64 %_j3940, 4
  %_cnd3945 = icmp eq i1 %_bop3941, 0
  br i1 %_cnd3945, label %_post3942, label %_body3944
_body3944:
  %_ar3950 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3927
  %_i3951 = load i64, i64* %_i3929
  %_ptr3948 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3950, i32 0, i32 1, i64 %_i3951
  %_resPtr3949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3948
  %_j3952 = load i64, i64* %_j3938
  %_ptr3946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr3949, i32 0, i32 1, i64 %_j3952
  %_resPtr3947 = load i64, i64* %_ptr3946
  call void @print_int(i64 %_resPtr3947)
  call void @print_string(void null)
  %_j3955 = load i64, i64* %_j3938
  %_bop3956 = add i64 %_j3955, 1
  store i64 %_bop3956, i64* %_j3938
  br label %_pre3943
_post3942:
  call void @print_string(void null)
  %_i3959 = load i64, i64* %_i3929
  %_bop3960 = add i64 %_i3959, 1
  store i64 %_bop3960, i64* %_i3929
  br label %_pre3935
_post3934:
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
