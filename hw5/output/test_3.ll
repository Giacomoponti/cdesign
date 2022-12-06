; generated from: hw5programs/compile_various_fields.oat
target triple = "x86_64-unknown-linux"
%Test = type { i64, i1, i8*, { i64, [0 x i64] }*, %Test*, i64 (i64)* }

@_str_arr207 = global [6 x i8] c"hello\00"

define i64 @neg(i64 %_x257) {
  %_x258 = alloca i64
  store i64 %_x257, i64* %_x258
  %_x259 = load i64, i64* %_x258
  %_unop260 = sub i64 0, %_x259
  ret i64 %_unop260
}

define i64 @program(i64 %_argc199, { i64, [0 x i8*] }* %_argv197) {
  %_argc200 = alloca i64
  %_argv198 = alloca { i64, [0 x i8*] }*
  %_j217 = alloca i64
  %_n236 = alloca %Test*
  store i64 %_argc199, i64* %_argc200
  store { i64, [0 x i8*] }* %_argv197, { i64, [0 x i8*] }** %_argv198
  %_raw_struct201 = call i64* @oat_malloc(i64 48)
  %_struct202 = bitcast i64* %_raw_struct201 to %Test*
  %_cast203 = bitcast i64 3 to i64 (i64)*
  %_ind204 = getelementptr %Test, %Test* %_struct202, i32 0, i32 5
  store i64 (i64)* %_cast203, i64 (i64)** %_ind204
  %_cast205 = bitcast i1 1 to %Test*
  %_ind206 = getelementptr %Test, %Test* %_struct202, i32 0, i32 4
  store %Test* %_cast205, %Test** %_ind206
  %_str208 = getelementptr [6 x i8], [6 x i8]* @_str_arr207, i32 0, i32 0
  %_cast209 = bitcast i8* %_str208 to { i64, [0 x i64] }*
  %_ind210 = getelementptr %Test, %Test* %_struct202, i32 0, i32 3
  store { i64, [0 x i64] }* %_cast209, { i64, [0 x i64] }** %_ind210
  %_raw_array211 = call i64* @oat_alloc_array(i64 3)
  %_array212 = bitcast i64* %_raw_array211 to { i64, [0 x i64] }*
  %_res216 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array212, { i64, [0 x i64] }** %_res216
  %_res_len213 = alloca i64
  store i64 3, i64* %_res_len213
  store i64 0, i64* %_j217
  br label %_cond223
_cond223:
  %_j218 = load i64, i64* %_j217
  %__arr_len214219 = load i64, i64* %_res_len213
  %_bop220 = icmp slt i64 %_j218, %__arr_len214219
  br i1 %_bop220, label %_body222, label %_post221
_body222:
  %__arr_name215224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_res216
  %_j225 = load i64, i64* %_j217
  %_index_ptr227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__arr_name215224, i32 0, i32 1, i64 %_j225
  store i64 0, i64* %_index_ptr227
  %_j228 = load i64, i64* %_j217
  %_bop229 = add i64 %_j228, 1
  store i64 %_bop229, i64* %_j217
  br label %_cond223
_post221:
  %_cast230 = bitcast { i64, [0 x i64] }* %_array212 to i8*
  %_ind231 = getelementptr %Test, %Test* %_struct202, i32 0, i32 2
  store i8* %_cast230, i8** %_ind231
  %_cast232 = bitcast %Test* null to i1
  %_ind233 = getelementptr %Test, %Test* %_struct202, i32 0, i32 1
  store i1 %_cast232, i1* %_ind233
  %_cast234 = bitcast i64 (i64)* @neg to i64
  %_ind235 = getelementptr %Test, %Test* %_struct202, i32 0, i32 0
  store i64 %_cast234, i64* %_ind235
  store %Test* %_struct202, %Test** %_n236
  %_n237 = load %Test*, %Test** %_n236
  %_index_ptr238 = getelementptr %Test, %Test* %_n237, i32 0, i32 2
  %_proj239 = load i8*, i8** %_index_ptr238
  call void @print_string(i8* %_proj239)
  %_n241 = load %Test*, %Test** %_n236
  %_index_ptr242 = getelementptr %Test, %Test* %_n241, i32 0, i32 1
  %_proj243 = load i1, i1* %_index_ptr242
  br i1 %_proj243, label %_then256, label %_else255
_then256:
  %_n244 = load %Test*, %Test** %_n236
  %_index_ptr245 = getelementptr %Test, %Test* %_n244, i32 0, i32 5
  %_proj246 = load i64 (i64)*, i64 (i64)** %_index_ptr245
  %_n247 = load %Test*, %Test** %_n236
  %_index_ptr248 = getelementptr %Test, %Test* %_n247, i32 0, i32 0
  %_proj249 = load i64, i64* %_index_ptr248
  %_result250 = call i64 %_proj246(i64 %_proj249)
  ret i64 %_result250
_else255:
  %_n251 = load %Test*, %Test** %_n236
  %_index_ptr252 = getelementptr %Test, %Test* %_n251, i32 0, i32 0
  %_proj253 = load i64, i64* %_index_ptr252
  ret i64 %_proj253
_merge254:
  ret i64 0
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
