; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a722 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s724 = alloca i64
  %_i726 = alloca i64
  %_j734 = alloca i64
  %_argc679 = alloca i64
  %_argv681 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv681
  store i64 %argc, i64* %_argc679
  %_raw_array684 = call i64* @oat_alloc_array(i64 4)
  %_array685 = bitcast i64* %_raw_array684 to { i64, [0 x i64] }*
  %_gep686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array685, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep686
  %_gep688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array685, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep688
  %_gep690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array685, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep690
  %_gep692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array685, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep692
  %_raw_array694 = call i64* @oat_alloc_array(i64 4)
  %_array695 = bitcast i64* %_raw_array694 to { i64, [0 x i64] }*
  %_gep696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array695, i32 0, i32 1, i32 0
  store i64 7, i64* %_gep696
  %_gep698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array695, i32 0, i32 1, i32 1
  store i64 6, i64* %_gep698
  %_gep700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array695, i32 0, i32 1, i32 2
  store i64 5, i64* %_gep700
  %_gep702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array695, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep702
  %_raw_array704 = call i64* @oat_alloc_array(i64 4)
  %_array705 = bitcast i64* %_raw_array704 to { i64, [0 x i64] }*
  %_gep706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 0
  store i64 11, i64* %_gep706
  %_gep708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 1
  store i64 10, i64* %_gep708
  %_gep710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 2
  store i64 9, i64* %_gep710
  %_gep712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 3
  store i64 8, i64* %_gep712
  %_raw_array714 = call i64* @oat_alloc_array(i64 3)
  %_array715 = bitcast i64* %_raw_array714 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array715, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array705, { i64, [0 x i64] }** %_gep716
  %_gep718 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array715, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array695, { i64, [0 x i64] }** %_gep718
  %_gep720 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array715, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array685, { i64, [0 x i64] }** %_gep720
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array715, { i64, [0 x { i64, [0 x i64] }*] }** %_a722
  store i64 0, i64* %_s724
  store i64 0, i64* %_i726
  br label %_pre731
_pre731:
  %_i728 = load i64, i64* %_i726
  %_bop729 = icmp slt i64 %_i728, 3
  %_cnd733 = icmp eq i1 %_bop729, 0
  br i1 %_cnd733, label %_post730, label %_body732
_body732:
  store i64 0, i64* %_j734
  br label %_pre739
_pre739:
  %_j736 = load i64, i64* %_j734
  %_bop737 = icmp slt i64 %_j736, 4
  %_cnd741 = icmp eq i1 %_bop737, 0
  br i1 %_cnd741, label %_post738, label %_body740
_body740:
  %_s742 = load i64, i64* %_s724
  %_a747 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a722
  %_i748 = load i64, i64* %_i726
  %_ptr745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a747, i32 0, i32 1, i64 %_i748
  %_resPtr746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr745
  %_j749 = load i64, i64* %_j734
  %_ptr743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr746, i32 0, i32 1, i64 %_j749
  %_resPtr744 = load i64, i64* %_ptr743
  %_bop750 = add i64 %_s742, %_resPtr744
  store i64 %_bop750, i64* %_s724
  %_j752 = load i64, i64* %_j734
  %_bop753 = add i64 %_j752, 1
  store i64 %_bop753, i64* %_j734
  br label %_pre739
_post738:
  %_i755 = load i64, i64* %_i726
  %_bop756 = add i64 %_i755, 1
  store i64 %_bop756, i64* %_i726
  br label %_pre731
_post730:
  %_s758 = load i64, i64* %_s724
  ret i64 %_s758
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
