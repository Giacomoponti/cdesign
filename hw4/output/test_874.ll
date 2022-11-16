; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str3000 = alloca void
  %_arr3004 = alloca { i64, [0 x i64] }*
  %_s3006 = alloca i64
  %_i3008 = alloca i64
  %_argc2995 = alloca i64
  %_argv2997 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2997
  store i64 %argc, i64* %_argc2995
  store void null, void* %_str3000
  %_str3002 = load void, void* %_str3000
  %_id3003 = call { i64, [0 x i64] }* @array_of_string(void %_str3002)
  store { i64, [0 x i64] }* %_id3003, { i64, [0 x i64] }** %_arr3004
  store i64 0, i64* %_s3006
  store i64 0, i64* %_i3008
  br label %_pre3013
_pre3013:
  %_i3010 = load i64, i64* %_i3008
  %_bop3011 = icmp slt i64 %_i3010, 5
  %_cnd3015 = icmp eq i1 %_bop3011, 0
  br i1 %_cnd3015, label %_post3012, label %_body3014
_body3014:
  %_s3016 = load i64, i64* %_s3006
  %_arr3019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3004
  %_i3020 = load i64, i64* %_i3008
  %_ptr3017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3019, i32 0, i32 1, i64 %_i3020
  %_resPtr3018 = load i64, i64* %_ptr3017
  %_bop3021 = add i64 %_s3016, %_resPtr3018
  store i64 %_bop3021, i64* %_s3006
  %_i3023 = load i64, i64* %_i3008
  %_bop3024 = add i64 %_i3023, 1
  store i64 %_bop3024, i64* %_i3008
  br label %_pre3013
_post3012:
  %_s3026 = load i64, i64* %_s3006
  ret i64 %_s3026
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
