; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n4206 = alloca i64
  store i64 %n, i64* %_n4206
  %_n4208 = load i64, i64* %_n4207
  %_bop4209 = icmp eq i64 %_n4208, 0
  br i1 %_bop4209, label %_if4212, label %_else4211
_if4212:
  ret i64 0
_else4211:
  br label %_after4210
_after4210:
  %_n4214 = load i64, i64* %_n4207
  %_bop4215 = icmp eq i64 %_n4214, 1
  br i1 %_bop4215, label %_if4218, label %_else4217
_if4218:
  ret i64 1
_else4217:
  br label %_after4216
_after4216:
  %_n4220 = load i64, i64* %_n4207
  %_bop4221 = sub i64 %_n4220, 1
  %_id4222 = call i64 @fibR(i64 %_bop4221)
  %_n4223 = load i64, i64* %_n4207
  %_bop4224 = sub i64 %_n4223, 2
  %_id4225 = call i64 @fibR(i64 %_bop4224)
  %_bop4226 = add i64 %_id4222, %_id4225
  ret i64 %_bop4226
}

define i64 @fibI(i64 %n) {
  %_a4165 = alloca i64
  %_b4167 = alloca i64
  %_old4191 = alloca i64
  %_n4163 = alloca i64
  store i64 %n, i64* %_n4163
  store i64 0, i64* %_a4165
  store i64 1, i64* %_b4167
  %_n4169 = load i64, i64* %_n4164
  %_bop4170 = icmp eq i64 %_n4169, 0
  br i1 %_bop4170, label %_if4173, label %_else4172
_if4173:
  %_a4175 = load i64, i64* %_a4165
  ret i64 %_a4175
_else4172:
  br label %_after4171
_after4171:
  %_n4176 = load i64, i64* %_n4164
  %_bop4177 = icmp eq i64 %_n4176, 1
  br i1 %_bop4177, label %_if4180, label %_else4179
_if4180:
  %_b4182 = load i64, i64* %_b4167
  ret i64 %_b4182
_else4179:
  br label %_after4178
_pre4187:
  br label %_pre4187
_post4186:
  br label %_pre4187
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val4149 = alloca i64
  %_argc4144 = alloca i64
  %_argv4146 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4146
  store i64 %argc, i64* %_argc4144
  store i64 1, i64* %_val4149
  %_id4151 = call i64 @fibR(i64 12)
  %_bop4152 = icmp eq i64 %_id4151, 144
  %_id4153 = call i64 @fibI(i64 12)
  %_bop4154 = icmp eq i64 %_id4153, 144
  %_bop4155 = and i1 %_bop4152, %_bop4154
  br i1 %_bop4155, label %_if4158, label %_else4157
_if4158:
  store i64 0, i64* %_val4149
  br label %_after4156
_else4157:
  br label %_after4156
_after4156:
  %_val4161 = load i64, i64* %_val4149
  ret i64 %_val4161
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
