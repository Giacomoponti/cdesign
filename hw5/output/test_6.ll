; generated from: hw5programs/compile_global_struct.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64 }

@white = global %Color* @_global_arr62
@_global_arr62 = global %Color {  }

define i64 @program(i64 %_argc50, { i64, [0 x i8*] }* %_argv48) {
  %_argc51 = alloca i64
  %_argv49 = alloca { i64, [0 x i8*] }*
  %_garr57 = alloca %Color*
  store i64 %_argc50, i64* %_argc51
  store { i64, [0 x i8*] }* %_argv48, { i64, [0 x i8*] }** %_argv49
  %_raw_struct52 = call i64* @oat_malloc(i64 24)
  %_struct53 = bitcast i64* %_raw_struct52 to %Color*
  %_ind54 = getelementptr %Color, %Color* %_struct53, i32 0, i32 0
  store i64 3, i64* %_ind54
  %_ind55 = getelementptr %Color, %Color* %_struct53, i32 0, i32 1
  store i64 5, i64* %_ind55
  %_ind56 = getelementptr %Color, %Color* %_struct53, i32 0, i32 2
  store i64 7, i64* %_ind56
  store %Color* %_struct53, %Color** %_garr57
  %_white58 = load %Color*, %Color** @white
  %_index_ptr59 = getelementptr %Color, %Color* %_white58, i32 0, i32 2
  %_proj60 = load i64, i64* %_index_ptr59
  %_bop61 = add i64 %_proj60, 1
  ret i64 %_bop61
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
