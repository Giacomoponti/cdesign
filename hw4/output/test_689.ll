; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3176 = alloca { i64, [0 x i64] }*
  %_argc3149 = alloca i64
  %_argv3151 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3151
  store i64 %argc, i64* %_argc3149
  %_raw_array3154 = call i64* @oat_alloc_array(i64 10)
  %_array3155 = bitcast i64* %_raw_array3154 to { i64, [0 x i64] }*
  %_gep3156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep3156
  %_gep3158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3158
  %_gep3160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep3160
  %_gep3162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep3162
  %_gep3164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep3164
  %_gep3166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep3166
  %_gep3168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep3168
  %_gep3170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3170
  %_gep3172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep3172
  %_gep3174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3155, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep3174
  store { i64, [0 x i64] }* %_array3155, { i64, [0 x i64] }** %_a3176
  %_a3178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3176
  %_id3179 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3178)
  call void @print_string(i8* %_id3179)
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
