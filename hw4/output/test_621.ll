; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_arr4201 to { i64, [0 x i64] }*)
@_arr4201 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars4120 = alloca { i64, [0 x i64] }*
  %_b_chars4124 = alloca { i64, [0 x i64] }*
  %_last_char_a4130 = alloca i64
  %_last_char_b4136 = alloca i64
  %_prev_lcs4152 = alloca i8*
  %_next_char4163 = alloca i8*
  %_left_lcs4174 = alloca i8*
  %_right_lcs4182 = alloca i8*
  %_left_len4186 = alloca i64
  %_right_len4190 = alloca i64
  %_i4098 = alloca i64
  %_j4100 = alloca i64
  %_a4102 = alloca i8*
  %_b4104 = alloca i8*
  store i8* %b, i8** %_b4104
  store i8* %a, i8** %_a4102
  store i64 %j, i64* %_j4100
  store i64 %i, i64* %_i4098
  %_i4109 = load i64, i64* %_i4105
  %_bop4110 = icmp slt i64 %_i4109, 0
  %_j4111 = load i64, i64* %_j4106
  %_bop4112 = icmp slt i64 %_j4111, 0
  %_bop4113 = or i1 %_bop4110, %_bop4112
  br i1 %_bop4113, label %_if4116, label %_else4115
_if4116:
  ret void null
_else4115:
  br label %_after4114
_after4114:
  %_a4118 = load i8*, i8** %_a4107
  %_id4119 = call { i64, [0 x i64] }* @array_of_string(i8* %_a4118)
  store { i64, [0 x i64] }* %_id4119, { i64, [0 x i64] }** %_a_chars4120
  %_b4122 = load i8*, i8** %_b4108
  %_id4123 = call { i64, [0 x i64] }* @array_of_string(i8* %_b4122)
  store { i64, [0 x i64] }* %_id4123, { i64, [0 x i64] }** %_b_chars4124
  %_a_chars4128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4120
  %_i4129 = load i64, i64* %_i4105
  %_ptr4126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4128, i32 0, i32 1, i64 %_i4129
  %_resPtr4127 = load i64, i64* %_ptr4126
  store i64 %_resPtr4127, i64* %_last_char_a4130
  %_b_chars4134 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4124
  %_j4135 = load i64, i64* %_j4106
  %_ptr4132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars4134, i32 0, i32 1, i64 %_j4135
  %_resPtr4133 = load i64, i64* %_ptr4132
  store i64 %_resPtr4133, i64* %_last_char_b4136
  %_last_char_a4138 = load i64, i64* %_last_char_a4130
  %_last_char_b4139 = load i64, i64* %_last_char_b4136
  %_bop4140 = icmp eq i64 %_last_char_a4138, %_last_char_b4139
  br i1 %_bop4140, label %_if4143, label %_else4142
_if4143:
  %_i4145 = load i64, i64* %_i4105
  %_bop4146 = sub i64 %_i4145, 1
  %_j4147 = load i64, i64* %_j4106
  %_bop4148 = sub i64 %_j4147, 1
  %_a4149 = load i8*, i8** %_a4107
  %_b4150 = load i8*, i8** %_b4108
  %_id4151 = call i8* @lcs(i64 %_bop4146, i64 %_bop4148, i8* %_a4149, i8* %_b4150)
  store i8* %_id4151, i8** %_prev_lcs4152
  %_a_chars4156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4120
  %_i4157 = load i64, i64* %_i4105
  %_ptr4154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4156, i32 0, i32 1, i64 %_i4157
  %_resPtr4155 = load i64, i64* %_ptr4154
  %_buf4158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_ptr4159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf4158, i32 0, i32 1, i32 0
  store i64 %_resPtr4155, i64* %_ptr4159
  %_buf4161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_id4162 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf4161)
  store i8* %_id4162, i8** %_next_char4163
  %_prev_lcs4165 = load i8*, i8** %_prev_lcs4152
  %_next_char4166 = load i8*, i8** %_next_char4163
  %_id4167 = call i8* @string_cat(i8* %_prev_lcs4165, i8* %_next_char4166)
  ret i8* %_id4167
_else4142:
  br label %_after4141
_after4141:
  %_i4168 = load i64, i64* %_i4105
  %_j4169 = load i64, i64* %_j4106
  %_bop4170 = sub i64 %_j4169, 1
  %_a4171 = load i8*, i8** %_a4107
  %_b4172 = load i8*, i8** %_b4108
  %_id4173 = call i8* @lcs(i64 %_i4168, i64 %_bop4170, i8* %_a4171, i8* %_b4172)
  store i8* %_id4173, i8** %_left_lcs4174
  %_i4176 = load i64, i64* %_i4105
  %_bop4177 = sub i64 %_i4176, 1
  %_j4178 = load i64, i64* %_j4106
  %_a4179 = load i8*, i8** %_a4107
  %_b4180 = load i8*, i8** %_b4108
  %_id4181 = call i8* @lcs(i64 %_bop4177, i64 %_j4178, i8* %_a4179, i8* %_b4180)
  store i8* %_id4181, i8** %_right_lcs4182
  %_left_lcs4184 = load i8*, i8** %_left_lcs4174
  %_id4185 = call i64 @length_of_string(i8* %_left_lcs4184)
  store i64 %_id4185, i64* %_left_len4186
  %_right_lcs4188 = load i8*, i8** %_right_lcs4182
  %_id4189 = call i64 @length_of_string(i8* %_right_lcs4188)
  store i64 %_id4189, i64* %_right_len4190
  %_left_len4192 = load i64, i64* %_left_len4186
  %_right_len4193 = load i64, i64* %_right_len4190
  %_bop4194 = icmp slt i64 %_left_len4192, %_right_len4193
  br i1 %_bop4194, label %_if4197, label %_else4196
_if4197:
  %_right_lcs4200 = load i8*, i8** %_right_lcs4182
  ret i8* %_right_lcs4200
_else4196:
  %_left_lcs4199 = load i8*, i8** %_left_lcs4174
  ret i8* %_left_lcs4199
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato4089 = alloca void
  %_orating4091 = alloca void
  %_argc4084 = alloca i64
  %_argv4086 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4086
  store i64 %argc, i64* %_argc4084
  store void null, void* %_tomato4089
  store void null, void* %_orating4091
  %_tomato4093 = load void, void* %_tomato4089
  %_orating4094 = load void, void* %_orating4091
  %_id4095 = call i8* @lcs(i64 5, i64 6, void %_tomato4093, void %_orating4094)
  call void @print_string(i8* %_id4095)
  ret i64 0
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
