; generated from: hw5programs/compile_nested_struct.oat
target triple = "x86_64-unknown-linux"
%RGB = type { i64, i64, i64 }
%Point = type { %RGB*, %RGB*, %RGB* }

@red = global %RGB* @_global_arr121
@_global_arr121 = global %RGB {  }
@green = global %RGB* @_global_arr120
@_global_arr120 = global %RGB {  }
@blue = global %RGB* @_global_arr119
@_global_arr119 = global %RGB {  }
@points = global { i64, [1 x %Point*] }* @_global_arr118
@_global_arr118 = global { i64, [1 x %Point*] } { i64 1, [1 x %Point*] [ %Point* @_global_arr117 ] }
@_global_arr117 = global %Point {  }

define i64 @program(i64 %_argc65, { i64, [0 x i8*] }* %_argv63) {
  %_argc66 = alloca i64
  %_argv64 = alloca { i64, [0 x i8*] }*
  store i64 %_argc65, i64* %_argc66
  store { i64, [0 x i8*] }* %_argv63, { i64, [0 x i8*] }** %_argv64
  %_points67 = load { i64, [1 x %Point*] }*, { i64, [1 x %Point*] }** @points
  %_index_ptr69 = getelementptr { i64, [1 x %Point*] }, { i64, [1 x %Point*] }* %_points67, i32 0, i32 1, i32 0
  %_index70 = load %Point*, %Point** %_index_ptr69
  %_index_ptr71 = getelementptr %Point, %Point* %_index70, i32 0, i32 0
  %_proj72 = load %RGB*, %RGB** %_index_ptr71
  %_index_ptr73 = getelementptr %RGB, %RGB* %_proj72, i32 0, i32 0
  store i64 3, i64* %_index_ptr73
  %_points74 = load { i64, [1 x %Point*] }*, { i64, [1 x %Point*] }** @points
  %_index_ptr76 = getelementptr { i64, [1 x %Point*] }, { i64, [1 x %Point*] }* %_points74, i32 0, i32 1, i32 0
  %_index77 = load %Point*, %Point** %_index_ptr76
  %_index_ptr78 = getelementptr %Point, %Point* %_index77, i32 0, i32 0
  %_proj79 = load %RGB*, %RGB** %_index_ptr78
  %_index_ptr80 = getelementptr %RGB, %RGB* %_proj79, i32 0, i32 1
  store i64 2, i64* %_index_ptr80
  %_points81 = load { i64, [1 x %Point*] }*, { i64, [1 x %Point*] }** @points
  %_index_ptr83 = getelementptr { i64, [1 x %Point*] }, { i64, [1 x %Point*] }* %_points81, i32 0, i32 1, i32 0
  %_index84 = load %Point*, %Point** %_index_ptr83
  %_index_ptr85 = getelementptr %Point, %Point* %_index84, i32 0, i32 0
  %_proj86 = load %RGB*, %RGB** %_index_ptr85
  %_index_ptr87 = getelementptr %RGB, %RGB* %_proj86, i32 0, i32 2
  store i64 4, i64* %_index_ptr87
  %_points88 = load { i64, [1 x %Point*] }*, { i64, [1 x %Point*] }** @points
  %_index_ptr90 = getelementptr { i64, [1 x %Point*] }, { i64, [1 x %Point*] }* %_points88, i32 0, i32 1, i32 0
  %_index91 = load %Point*, %Point** %_index_ptr90
  %_index_ptr92 = getelementptr %Point, %Point* %_index91, i32 0, i32 0
  %_proj93 = load %RGB*, %RGB** %_index_ptr92
  %_index_ptr94 = getelementptr %RGB, %RGB* %_proj93, i32 0, i32 0
  %_proj95 = load i64, i64* %_index_ptr94
  %_points96 = load { i64, [1 x %Point*] }*, { i64, [1 x %Point*] }** @points
  %_index_ptr98 = getelementptr { i64, [1 x %Point*] }, { i64, [1 x %Point*] }* %_points96, i32 0, i32 1, i32 0
  %_index99 = load %Point*, %Point** %_index_ptr98
  %_index_ptr100 = getelementptr %Point, %Point* %_index99, i32 0, i32 0
  %_proj101 = load %RGB*, %RGB** %_index_ptr100
  %_index_ptr102 = getelementptr %RGB, %RGB* %_proj101, i32 0, i32 1
  %_proj103 = load i64, i64* %_index_ptr102
  %_bop104 = mul i64 %_proj95, %_proj103
  %_points105 = load { i64, [1 x %Point*] }*, { i64, [1 x %Point*] }** @points
  %_index_ptr107 = getelementptr { i64, [1 x %Point*] }, { i64, [1 x %Point*] }* %_points105, i32 0, i32 1, i32 0
  %_index108 = load %Point*, %Point** %_index_ptr107
  %_index_ptr109 = getelementptr %Point, %Point* %_index108, i32 0, i32 0
  %_proj110 = load %RGB*, %RGB** %_index_ptr109
  %_index_ptr111 = getelementptr %RGB, %RGB* %_proj110, i32 0, i32 2
  %_proj112 = load i64, i64* %_index_ptr111
  %_bop113 = add i64 %_bop104, %_proj112
  ret i64 %_bop113
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
