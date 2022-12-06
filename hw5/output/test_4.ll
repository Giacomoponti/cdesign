; generated from: hw5programs/compile_struct_fptr.oat
target triple = "x86_64-unknown-linux"
%S = type { i64, i64, i64 (i64, i64)* }

define i64 @add(i64 %_x192, i64 %_y190) {
  %_x193 = alloca i64
  %_y191 = alloca i64
  store i64 %_x192, i64* %_x193
  store i64 %_y190, i64* %_y191
  %_x194 = load i64, i64* %_x193
  %_y195 = load i64, i64* %_y191
  %_bop196 = add i64 %_x194, %_y195
  ret i64 %_bop196
}

define i64 @program(i64 %_argc170, { i64, [0 x i8*] }* %_argv168) {
  %_argc171 = alloca i64
  %_argv169 = alloca { i64, [0 x i8*] }*
  %_x179 = alloca %S*
  store i64 %_argc170, i64* %_argc171
  store { i64, [0 x i8*] }* %_argv168, { i64, [0 x i8*] }** %_argv169
  %_raw_struct172 = call i64* @oat_malloc(i64 24)
  %_struct173 = bitcast i64* %_raw_struct172 to %S*
  %_cast174 = bitcast i64 3 to i64 (i64, i64)*
  %_ind175 = getelementptr %S, %S* %_struct173, i32 0, i32 2
  store i64 (i64, i64)* %_cast174, i64 (i64, i64)** %_ind175
  %_ind176 = getelementptr %S, %S* %_struct173, i32 0, i32 1
  store i64 4, i64* %_ind176
  %_cast177 = bitcast i64 (i64, i64)* @add to i64
  %_ind178 = getelementptr %S, %S* %_struct173, i32 0, i32 0
  store i64 %_cast177, i64* %_ind178
  store %S* %_struct173, %S** %_x179
  %_x180 = load %S*, %S** %_x179
  %_index_ptr181 = getelementptr %S, %S* %_x180, i32 0, i32 2
  %_proj182 = load i64 (i64, i64)*, i64 (i64, i64)** %_index_ptr181
  %_x183 = load %S*, %S** %_x179
  %_index_ptr184 = getelementptr %S, %S* %_x183, i32 0, i32 1
  %_proj185 = load i64, i64* %_index_ptr184
  %_x186 = load %S*, %S** %_x179
  %_index_ptr187 = getelementptr %S, %S* %_x186, i32 0, i32 0
  %_proj188 = load i64, i64* %_index_ptr187
  %_result189 = call i64 %_proj182(i64 %_proj188, i64 %_proj185)
  ret i64 %_result189
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
