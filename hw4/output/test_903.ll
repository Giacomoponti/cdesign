; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x46 = alloca i64
  %_i48 = alloca i64
  %_argc41 = alloca i64
  %_argv43 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv43
  store i64 %argc, i64* %_argc41
  store i64 0, i64* %_x46
  store i64 0, i64* %_i48
  br label %_pre53
_pre53:
  %_i50 = load i64, i64* %_i48
  %_bop51 = icmp slt i64 %_i50, 3
  %_cnd55 = icmp eq i1 %_bop51, 0
  br i1 %_cnd55, label %_post52, label %_body54
_body54:
  %_x56 = load i64, i64* %_x46
  %_bop57 = add i64 %_x56, 2
  store i64 %_bop57, i64* %_x46
  %_i59 = load i64, i64* %_i48
  %_bop60 = add i64 %_i59, 1
  store i64 %_bop60, i64* %_i48
  br label %_pre53
_post52:
  %_x62 = load i64, i64* %_x46
  ret i64 %_x62
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
