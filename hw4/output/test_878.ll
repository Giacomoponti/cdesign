; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i3143 = alloca i64
  %_argc3138 = alloca i64
  %_argv3140 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3140
  store i64 %argc, i64* %_argc3138
  store i64 1, i64* %_i3143
  br label %_pre3149
_pre3149:
  %_i3145 = load i64, i64* %_i3143
  %_argc3146 = load i64, i64* %_argc3141
  %_bop3147 = icmp slt i64 %_i3145, %_argc3146
  %_cnd3151 = icmp eq i1 %_bop3147, 0
  br i1 %_cnd3151, label %_post3148, label %_body3150
_body3150:
  %_argv3154 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3142
  %_i3155 = load i64, i64* %_i3143
  %_ptr3152 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv3154, i32 0, i32 1, i64 %_i3155
  %_resPtr3153 = load i8*, i8** %_ptr3152
  call void @print_string(i8* %_resPtr3153)
  %_i3157 = load i64, i64* %_i3143
  %_bop3158 = add i64 %_i3157, 1
  store i64 %_bop3158, i64* %_i3143
  br label %_pre3149
_post3148:
  %_argc3160 = load i64, i64* %_argc3141
  ret i64 %_argc3160
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
