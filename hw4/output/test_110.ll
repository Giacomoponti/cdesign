; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x38 = alloca i64
  %_i40 = alloca i64
  %_argc35 = alloca i64
  store i64 %argc, i64* %_argc35
  %_argv37 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv37
  store i64 0, i64* %_x38
  store i64 0, i64* %_i40
  br label %_pre45
_pre45:
  %_i42 = load i64, i64* %_i40
  %_bop43 = icmp slt i64 %_i42, 3
  %_cnd47 = icmp eq i1 %_bop43, 0
  br i1 %_cnd47, label %_post44, label %_body46
_body46:
  %_x48 = load i64, i64* %_x38
  %_bop49 = add i64 %_x48, 2
  store i64 %_bop49, i64* %_x38
  %_i51 = load i64, i64* %_i40
  %_bop52 = add i64 %_i51, 1
  store i64 %_bop52, i64* %_i40
  br label %_pre45
_post44:
  %_x54 = load i64, i64* %_x38
  ret i64 %_x54
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
