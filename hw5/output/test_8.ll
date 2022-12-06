; generated from: hw5programs/compile_global_struct_fptr.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64, %Color* (%Color*)* }

@c = global %Color* @_global_arr416
@_global_arr416 = global %Color {  }

define %Color* @rot(%Color* %_c1417) {
  %_c1418 = alloca %Color*
  %_c2437 = alloca %Color*
  store %Color* %_c1417, %Color** %_c1418
  %_raw_struct419 = call i64* @oat_malloc(i64 32)
  %_struct420 = bitcast i64* %_raw_struct419 to %Color*
  %_c1421 = load %Color*, %Color** %_c1418
  %_index_ptr422 = getelementptr %Color, %Color* %_c1421, i32 0, i32 1
  %_proj423 = load i64, i64* %_index_ptr422
  %_ind424 = getelementptr %Color, %Color* %_struct420, i32 0, i32 0
  store i64 %_proj423, i64* %_ind424
  %_c1425 = load %Color*, %Color** %_c1418
  %_index_ptr426 = getelementptr %Color, %Color* %_c1425, i32 0, i32 2
  %_proj427 = load i64, i64* %_index_ptr426
  %_ind428 = getelementptr %Color, %Color* %_struct420, i32 0, i32 1
  store i64 %_proj427, i64* %_ind428
  %_c1429 = load %Color*, %Color** %_c1418
  %_index_ptr430 = getelementptr %Color, %Color* %_c1429, i32 0, i32 0
  %_proj431 = load i64, i64* %_index_ptr430
  %_ind432 = getelementptr %Color, %Color* %_struct420, i32 0, i32 2
  store i64 %_proj431, i64* %_ind432
  %_c1433 = load %Color*, %Color** %_c1418
  %_index_ptr434 = getelementptr %Color, %Color* %_c1433, i32 0, i32 3
  %_proj435 = load %Color* (%Color*)*, %Color* (%Color*)** %_index_ptr434
  %_ind436 = getelementptr %Color, %Color* %_struct420, i32 0, i32 3
  store %Color* (%Color*)* %_proj435, %Color* (%Color*)** %_ind436
  store %Color* %_struct420, %Color** %_c2437
  %_c2438 = load %Color*, %Color** %_c2437
  ret %Color* %_c2438
}

define i64 @program(i64 %_argc407, { i64, [0 x i8*] }* %_argv405) {
  %_argc408 = alloca i64
  %_argv406 = alloca { i64, [0 x i8*] }*
  store i64 %_argc407, i64* %_argc408
  store { i64, [0 x i8*] }* %_argv405, { i64, [0 x i8*] }** %_argv406
  %_c409 = load %Color*, %Color** @c
  %_index_ptr410 = getelementptr %Color, %Color* %_c409, i32 0, i32 3
  %_proj411 = load %Color* (%Color*)*, %Color* (%Color*)** %_index_ptr410
  %_c412 = load %Color*, %Color** @c
  %_result413 = call %Color* %_proj411(%Color* %_c412)
  %_index_ptr414 = getelementptr %Color, %Color* %_result413, i32 0, i32 0
  %_proj415 = load i64, i64* %_index_ptr414
  ret i64 %_proj415
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
