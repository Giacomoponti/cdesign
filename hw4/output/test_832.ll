; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_s801 = alloca i64
  %_i803 = alloca i64
  %_j811 = alloca i64
  %_argc757 = alloca i64
  %_argv759 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv759
  store i64 %argc, i64* %_argc757
  %_raw_array762 = call i64* @oat_alloc_array(i64 4)
  %_array763 = bitcast i64* %_raw_array762 to { i64, [0 x i64] }*
  %_gep764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array763, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep764
  %_gep766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array763, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep766
  %_gep768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array763, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep768
  %_gep770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array763, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep770
  %_raw_array772 = call i64* @oat_alloc_array(i64 4)
  %_array773 = bitcast i64* %_raw_array772 to { i64, [0 x i64] }*
  %_gep774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep774
  %_gep776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep776
  %_gep778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep778
  %_gep780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array773, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep780
  %_raw_array782 = call i64* @oat_alloc_array(i64 4)
  %_array783 = bitcast i64* %_raw_array782 to { i64, [0 x i64] }*
  %_gep784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array783, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep784
  %_gep786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array783, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep786
  %_gep788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array783, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep788
  %_gep790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array783, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep790
  %_raw_array792 = call i64* @oat_alloc_array(i64 3)
  %_array793 = bitcast i64* %_raw_array792 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep794 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array793, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array763, { i64, [0 x i64] }** %_gep794
  %_gep796 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array793, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array773, { i64, [0 x i64] }** %_gep796
  %_gep798 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array793, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array783, { i64, [0 x i64] }** %_gep798
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array793, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s801
  store i64 0, i64* %_i803
  br label %_pre808
_pre808:
  %_i805 = load i64, i64* %_i803
  %_bop806 = icmp slt i64 %_i805, 3
  %_cnd810 = icmp eq i1 %_bop806, 0
  br i1 %_cnd810, label %_post807, label %_body809
_body809:
  store i64 0, i64* %_j811
  br label %_pre816
_pre816:
  %_j813 = load i64, i64* %_j811
  %_bop814 = icmp slt i64 %_j813, 4
  %_cnd818 = icmp eq i1 %_bop814, 0
  br i1 %_cnd818, label %_post815, label %_body817
_body817:
  %_s819 = load i64, i64* %_s801
  %_a824 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i825 = load i64, i64* %_i803
  %_ptr822 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a824, i32 0, i32 1, i64 %_i825
  %_resPtr823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr822
  %_j826 = load i64, i64* %_j811
  %_ptr820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr823, i32 0, i32 1, i64 %_j826
  %_resPtr821 = load i64, i64* %_ptr820
  %_bop827 = add i64 %_s819, %_resPtr821
  store i64 %_bop827, i64* %_s801
  %_j829 = load i64, i64* %_j811
  %_bop830 = add i64 %_j829, 1
  store i64 %_bop830, i64* %_j811
  br label %_pre816
_post815:
  %_i832 = load i64, i64* %_i803
  %_bop833 = add i64 %_i832, 1
  store i64 %_bop833, i64* %_i803
  br label %_pre808
_post807:
  %_s835 = load i64, i64* %_s801
  ret i64 %_s835
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
