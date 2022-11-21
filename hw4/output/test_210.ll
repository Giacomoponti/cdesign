; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5901 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5901
  %_i5903 = alloca i64
  store i64 %i, i64* %_i5903
  %_j5905 = alloca i64
  store i64 %j, i64* %_j5905
  %_count5907 = alloca i64
  store i64 %count, i64* %_count5907
  %_i5908 = load i64, i64* %_i5903
  %_bop5909 = icmp sge i64 %_i5908, 0
  %_j5910 = load i64, i64* %_j5905
  %_bop5911 = icmp sge i64 %_j5910, 0
  %_bop5912 = and i1 %_bop5909, %_bop5911
  %_i5913 = load i64, i64* %_i5903
  %_len5914 = load i64, i64* @len
  %_bop5915 = icmp slt i64 %_i5913, %_len5914
  %_bop5916 = and i1 %_bop5912, %_bop5915
  %_j5917 = load i64, i64* %_j5905
  %_len5918 = load i64, i64* @len
  %_bop5919 = icmp slt i64 %_j5917, %_len5918
  %_bop5920 = and i1 %_bop5916, %_bop5919
  br i1 %_bop5920, label %_if5923, label %_else5922
_if5923:
  %_count5926 = load i64, i64* %_count5907
  %_board5931 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5901
  %_i5932 = load i64, i64* %_i5903
  %_ptr5929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5931, i32 0, i32 1, i64 %_i5932
  %_resPtr5930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5929
  %_j5933 = load i64, i64* %_j5905
  %_ptr5927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5930, i32 0, i32 1, i64 %_j5933
  %_resPtr5928 = load i64, i64* %_ptr5927
  %_bop5934 = add i64 %_count5926, %_resPtr5928
  ret i64 %_bop5934
_else5922:
  %_count5925 = load i64, i64* %_count5907
  ret i64 %_count5925
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_alive5812 = alloca i64
  %_count5814 = alloca i64
  %_board5800 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5802 = alloca i64
  store i64 %i, i64* %_i5802
  %_j5804 = alloca i64
  store i64 %j, i64* %_j5804
  %_board5809 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5810 = load i64, i64* %_i5802
  %_ptr5807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5809, i32 0, i32 1, i64 %_i5810
  %_resPtr5808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5807
  %_j5811 = load i64, i64* %_j5804
  %_ptr5805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5808, i32 0, i32 1, i64 %_j5811
  %_resPtr5806 = load i64, i64* %_ptr5805
  store i64 %_resPtr5806, i64* %_alive5812
  store i64 0, i64* %_count5814
  %_board5816 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5817 = load i64, i64* %_i5802
  %_bop5818 = sub i64 %_i5817, 1
  %_j5819 = load i64, i64* %_j5804
  %_bop5820 = sub i64 %_j5819, 1
  %_count5821 = load i64, i64* %_count5814
  %_5822 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5816, i64 %_bop5818, i64 %_bop5820, i64 %_count5821)
  store i64 %_5822, i64* %_count5814
  %_board5824 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5825 = load i64, i64* %_i5802
  %_bop5826 = sub i64 %_i5825, 1
  %_j5827 = load i64, i64* %_j5804
  %_count5828 = load i64, i64* %_count5814
  %_5829 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5824, i64 %_bop5826, i64 %_j5827, i64 %_count5828)
  store i64 %_5829, i64* %_count5814
  %_board5831 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5832 = load i64, i64* %_i5802
  %_bop5833 = sub i64 %_i5832, 1
  %_j5834 = load i64, i64* %_j5804
  %_bop5835 = add i64 %_j5834, 1
  %_count5836 = load i64, i64* %_count5814
  %_5837 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5831, i64 %_bop5833, i64 %_bop5835, i64 %_count5836)
  store i64 %_5837, i64* %_count5814
  %_board5839 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5840 = load i64, i64* %_i5802
  %_j5841 = load i64, i64* %_j5804
  %_bop5842 = sub i64 %_j5841, 1
  %_count5843 = load i64, i64* %_count5814
  %_5844 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5839, i64 %_i5840, i64 %_bop5842, i64 %_count5843)
  store i64 %_5844, i64* %_count5814
  %_board5846 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5847 = load i64, i64* %_i5802
  %_j5848 = load i64, i64* %_j5804
  %_bop5849 = add i64 %_j5848, 1
  %_count5850 = load i64, i64* %_count5814
  %_5851 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5846, i64 %_i5847, i64 %_bop5849, i64 %_count5850)
  store i64 %_5851, i64* %_count5814
  %_board5853 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5854 = load i64, i64* %_i5802
  %_bop5855 = add i64 %_i5854, 1
  %_j5856 = load i64, i64* %_j5804
  %_bop5857 = sub i64 %_j5856, 1
  %_count5858 = load i64, i64* %_count5814
  %_5859 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5853, i64 %_bop5855, i64 %_bop5857, i64 %_count5858)
  store i64 %_5859, i64* %_count5814
  %_board5861 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5862 = load i64, i64* %_i5802
  %_bop5863 = add i64 %_i5862, 1
  %_j5864 = load i64, i64* %_j5804
  %_count5865 = load i64, i64* %_count5814
  %_5866 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5861, i64 %_bop5863, i64 %_j5864, i64 %_count5865)
  store i64 %_5866, i64* %_count5814
  %_board5868 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5800
  %_i5869 = load i64, i64* %_i5802
  %_bop5870 = add i64 %_i5869, 1
  %_j5871 = load i64, i64* %_j5804
  %_bop5872 = add i64 %_j5871, 1
  %_count5873 = load i64, i64* %_count5814
  %_5874 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5868, i64 %_bop5870, i64 %_bop5872, i64 %_count5873)
  store i64 %_5874, i64* %_count5814
  %_alive5876 = load i64, i64* %_alive5812
  %_bop5877 = icmp eq i64 %_alive5876, 1
  br i1 %_bop5877, label %_if5880, label %_else5879
_if5880:
  %_count5882 = load i64, i64* %_count5814
  %_bop5883 = icmp slt i64 %_count5882, 2
  br i1 %_bop5883, label %_if5886, label %_else5885
_if5886:
  ret i64 0
_else5885:
  %_count5888 = load i64, i64* %_count5814
  %_bop5889 = icmp slt i64 %_count5888, 4
  br i1 %_bop5889, label %_if5892, label %_else5891
_if5892:
  ret i64 1
_else5891:
  br label %_after5890
_after5890:
  br label %_after5884
_after5884:
  ret i64 0
_else5879:
  br label %_after5878
_after5878:
  %_count5894 = load i64, i64* %_count5814
  %_bop5895 = icmp eq i64 %_count5894, 3
  br i1 %_bop5895, label %_if5898, label %_else5897
_if5898:
  ret i64 1
_else5897:
  ret i64 0
_after5896:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_board5674 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board5726 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5728 = alloca i64
  %_j5742 = alloca i64
  %_i5767 = alloca i64
  %_j5776 = alloca i64
  %_argc5621 = alloca i64
  store i64 %argc, i64* %_argc5621
  %_argv5623 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5623
  %_raw_array5624 = call i64* @oat_alloc_array(i64 4)
  %_array5625 = bitcast i64* %_raw_array5624 to { i64, [0 x i64] }*
  %_gep5626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5625, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5626
  %_gep5628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5625, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5628
  %_gep5630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5625, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5630
  %_gep5632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5625, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5632
  %_raw_array5634 = call i64* @oat_alloc_array(i64 4)
  %_array5635 = bitcast i64* %_raw_array5634 to { i64, [0 x i64] }*
  %_gep5636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5635, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5636
  %_gep5638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5635, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5638
  %_gep5640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5635, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5640
  %_gep5642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5635, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep5642
  %_raw_array5644 = call i64* @oat_alloc_array(i64 4)
  %_array5645 = bitcast i64* %_raw_array5644 to { i64, [0 x i64] }*
  %_gep5646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5645, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep5646
  %_gep5648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5645, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5648
  %_gep5650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5645, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5650
  %_gep5652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5645, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5652
  %_raw_array5654 = call i64* @oat_alloc_array(i64 4)
  %_array5655 = bitcast i64* %_raw_array5654 to { i64, [0 x i64] }*
  %_gep5656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5655, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5656
  %_gep5658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5655, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5658
  %_gep5660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5655, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5660
  %_gep5662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5655, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5662
  %_raw_array5664 = call i64* @oat_alloc_array(i64 4)
  %_array5665 = bitcast i64* %_raw_array5664 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep5666 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5665, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5625, { i64, [0 x i64] }** %_gep5666
  %_gep5668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5665, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5635, { i64, [0 x i64] }** %_gep5668
  %_gep5670 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5665, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5645, { i64, [0 x i64] }** %_gep5670
  %_gep5672 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5665, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5655, { i64, [0 x i64] }** %_gep5672
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5665, { i64, [0 x { i64, [0 x i64] }*] }** %_board5674
  %_raw_array5676 = call i64* @oat_alloc_array(i64 4)
  %_array5677 = bitcast i64* %_raw_array5676 to { i64, [0 x i64] }*
  %_gep5678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5677, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5678
  %_gep5680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5677, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5680
  %_gep5682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5677, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5682
  %_gep5684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5677, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5684
  %_raw_array5686 = call i64* @oat_alloc_array(i64 4)
  %_array5687 = bitcast i64* %_raw_array5686 to { i64, [0 x i64] }*
  %_gep5688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5687, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5688
  %_gep5690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5687, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5690
  %_gep5692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5687, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5692
  %_gep5694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5687, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5694
  %_raw_array5696 = call i64* @oat_alloc_array(i64 4)
  %_array5697 = bitcast i64* %_raw_array5696 to { i64, [0 x i64] }*
  %_gep5698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5697, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5698
  %_gep5700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5697, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5700
  %_gep5702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5697, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5702
  %_gep5704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5697, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5704
  %_raw_array5706 = call i64* @oat_alloc_array(i64 4)
  %_array5707 = bitcast i64* %_raw_array5706 to { i64, [0 x i64] }*
  %_gep5708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5707, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5708
  %_gep5710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5707, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5710
  %_gep5712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5707, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5712
  %_gep5714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5707, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5714
  %_raw_array5716 = call i64* @oat_alloc_array(i64 4)
  %_array5717 = bitcast i64* %_raw_array5716 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep5718 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5717, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5677, { i64, [0 x i64] }** %_gep5718
  %_gep5720 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5717, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5687, { i64, [0 x i64] }** %_gep5720
  %_gep5722 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5717, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5697, { i64, [0 x i64] }** %_gep5722
  %_gep5724 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5717, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5707, { i64, [0 x i64] }** %_gep5724
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5717, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5726
  store i64 0, i64* %_i5728
  br label %_pre5733
_pre5733:
  %_i5730 = load i64, i64* %_i5728
  %_bop5731 = icmp slt i64 %_i5730, 4
  %_cnd5735 = icmp eq i1 %_bop5731, 0
  br i1 %_cnd5735, label %_post5732, label %_body5734
_body5734:
  %_raw_array5736 = call i64* @oat_alloc_array(i64 4)
  %_array5737 = bitcast i64* %_raw_array5736 to { i64, [0 x i64] }*
  %_new_board5738 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5726
  %_i5739 = load i64, i64* %_i5728
  %_ptr5740 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5738, i32 0, i32 1, i64 %_i5739
  store { i64, [0 x i64] }* %_array5737, { i64, [0 x i64] }** %_ptr5740
  store i64 0, i64* %_j5742
  br label %_pre5747
_pre5747:
  %_j5744 = load i64, i64* %_j5742
  %_bop5745 = icmp slt i64 %_j5744, 4
  %_cnd5749 = icmp eq i1 %_bop5745, 0
  br i1 %_cnd5749, label %_post5746, label %_body5748
_body5748:
  %_board5750 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5674
  %_i5751 = load i64, i64* %_i5728
  %_j5752 = load i64, i64* %_j5742
  %_5753 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5750, i64 %_i5751, i64 %_j5752)
  %_new_board5756 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5726
  %_i5757 = load i64, i64* %_i5728
  %_ptr5754 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5756, i32 0, i32 1, i64 %_i5757
  %_resPtr5755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5754
  %_j5758 = load i64, i64* %_j5742
  %_ptr5759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5755, i32 0, i32 1, i64 %_j5758
  store i64 %_5753, i64* %_ptr5759
  %_j5761 = load i64, i64* %_j5742
  %_bop5762 = add i64 %_j5761, 1
  store i64 %_bop5762, i64* %_j5742
  br label %_pre5747
_post5746:
  %_i5764 = load i64, i64* %_i5728
  %_bop5765 = add i64 %_i5764, 1
  store i64 %_bop5765, i64* %_i5728
  br label %_pre5733
_post5732:
  store i64 0, i64* %_i5767
  br label %_pre5773
_pre5773:
  %_i5769 = load i64, i64* %_i5767
  %_len5770 = load i64, i64* @len
  %_bop5771 = icmp slt i64 %_i5769, %_len5770
  %_cnd5775 = icmp eq i1 %_bop5771, 0
  br i1 %_cnd5775, label %_post5772, label %_body5774
_body5774:
  store i64 0, i64* %_j5776
  br label %_pre5782
_pre5782:
  %_j5778 = load i64, i64* %_j5776
  %_len5779 = load i64, i64* @len
  %_bop5780 = icmp slt i64 %_j5778, %_len5779
  %_cnd5784 = icmp eq i1 %_bop5780, 0
  br i1 %_cnd5784, label %_post5781, label %_body5783
_body5783:
  %_new_board5789 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5726
  %_i5790 = load i64, i64* %_i5767
  %_ptr5787 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5789, i32 0, i32 1, i64 %_i5790
  %_resPtr5788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5787
  %_j5791 = load i64, i64* %_j5776
  %_ptr5785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5788, i32 0, i32 1, i64 %_j5791
  %_resPtr5786 = load i64, i64* %_ptr5785
  call void @print_int(i64 %_resPtr5786)
  %_j5793 = load i64, i64* %_j5776
  %_bop5794 = add i64 %_j5793, 1
  store i64 %_bop5794, i64* %_j5776
  br label %_pre5782
_post5781:
  %_i5796 = load i64, i64* %_i5767
  %_bop5797 = add i64 %_i5796, 1
  store i64 %_bop5797, i64* %_i5767
  br label %_pre5773
_post5772:
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
