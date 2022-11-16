; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5945 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5947 = alloca i64
  %_j5949 = alloca i64
  %_count5951 = alloca i64
  store i64 %count, i64* %_count5951
  store i64 %j, i64* %_j5949
  store i64 %i, i64* %_i5947
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5945
  %_i5956 = load i64, i64* %_i5953
  %_bop5957 = icmp sge i64 %_i5956, 0
  %_j5958 = load i64, i64* %_j5954
  %_bop5959 = icmp sge i64 %_j5958, 0
  %_bop5960 = and i1 %_bop5957, %_bop5959
  %_i5961 = load i64, i64* %_i5953
  %_len5962 = load i64, i64* @len
  %_bop5963 = icmp slt i64 %_i5961, %_len5962
  %_bop5964 = and i1 %_bop5960, %_bop5963
  %_j5965 = load i64, i64* %_j5954
  %_len5966 = load i64, i64* @len
  %_bop5967 = icmp slt i64 %_j5965, %_len5966
  %_bop5968 = and i1 %_bop5964, %_bop5967
  br i1 %_bop5968, label %_if5971, label %_else5970
_if5971:
  %_count5974 = load i64, i64* %_count5955
  %_board5979 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5952
  %_i5980 = load i64, i64* %_i5953
  %_ptr5977 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5979, i32 0, i32 1, i64 %_i5980
  %_resPtr5978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5977
  %_j5981 = load i64, i64* %_j5954
  %_ptr5975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5978, i32 0, i32 1, i64 %_j5981
  %_resPtr5976 = load i64, i64* %_ptr5975
  %_bop5982 = add i64 %_count5974, %_resPtr5976
  ret i64 %_bop5982
_else5970:
  %_count5973 = load i64, i64* %_count5955
  ret i64 %_count5973
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_alive5856 = alloca i64
  %_count5858 = alloca i64
  %_board5841 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5843 = alloca i64
  %_j5845 = alloca i64
  store i64 %j, i64* %_j5845
  store i64 %i, i64* %_i5843
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5841
  %_board5853 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5854 = load i64, i64* %_i5847
  %_ptr5851 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5853, i32 0, i32 1, i64 %_i5854
  %_resPtr5852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5851
  %_j5855 = load i64, i64* %_j5848
  %_ptr5849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5852, i32 0, i32 1, i64 %_j5855
  %_resPtr5850 = load i64, i64* %_ptr5849
  store i64 %_resPtr5850, i64* %_alive5856
  store i64 0, i64* %_count5858
  %_board5860 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5861 = load i64, i64* %_i5847
  %_bop5862 = sub i64 %_i5861, 1
  %_j5863 = load i64, i64* %_j5848
  %_bop5864 = sub i64 %_j5863, 1
  %_count5865 = load i64, i64* %_count5858
  %_id5866 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5860, i64 %_bop5862, i64 %_bop5864, i64 %_count5865)
  store i64 %_id5866, i64* %_count5858
  %_board5868 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5869 = load i64, i64* %_i5847
  %_bop5870 = sub i64 %_i5869, 1
  %_j5871 = load i64, i64* %_j5848
  %_count5872 = load i64, i64* %_count5858
  %_id5873 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5868, i64 %_bop5870, i64 %_j5871, i64 %_count5872)
  store i64 %_id5873, i64* %_count5858
  %_board5875 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5876 = load i64, i64* %_i5847
  %_bop5877 = sub i64 %_i5876, 1
  %_j5878 = load i64, i64* %_j5848
  %_bop5879 = add i64 %_j5878, 1
  %_count5880 = load i64, i64* %_count5858
  %_id5881 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5875, i64 %_bop5877, i64 %_bop5879, i64 %_count5880)
  store i64 %_id5881, i64* %_count5858
  %_board5883 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5884 = load i64, i64* %_i5847
  %_j5885 = load i64, i64* %_j5848
  %_bop5886 = sub i64 %_j5885, 1
  %_count5887 = load i64, i64* %_count5858
  %_id5888 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5883, i64 %_i5884, i64 %_bop5886, i64 %_count5887)
  store i64 %_id5888, i64* %_count5858
  %_board5890 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5891 = load i64, i64* %_i5847
  %_j5892 = load i64, i64* %_j5848
  %_bop5893 = add i64 %_j5892, 1
  %_count5894 = load i64, i64* %_count5858
  %_id5895 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5890, i64 %_i5891, i64 %_bop5893, i64 %_count5894)
  store i64 %_id5895, i64* %_count5858
  %_board5897 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5898 = load i64, i64* %_i5847
  %_bop5899 = add i64 %_i5898, 1
  %_j5900 = load i64, i64* %_j5848
  %_bop5901 = sub i64 %_j5900, 1
  %_count5902 = load i64, i64* %_count5858
  %_id5903 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5897, i64 %_bop5899, i64 %_bop5901, i64 %_count5902)
  store i64 %_id5903, i64* %_count5858
  %_board5905 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5906 = load i64, i64* %_i5847
  %_bop5907 = add i64 %_i5906, 1
  %_j5908 = load i64, i64* %_j5848
  %_count5909 = load i64, i64* %_count5858
  %_id5910 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5905, i64 %_bop5907, i64 %_j5908, i64 %_count5909)
  store i64 %_id5910, i64* %_count5858
  %_board5912 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5846
  %_i5913 = load i64, i64* %_i5847
  %_bop5914 = add i64 %_i5913, 1
  %_j5915 = load i64, i64* %_j5848
  %_bop5916 = add i64 %_j5915, 1
  %_count5917 = load i64, i64* %_count5858
  %_id5918 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5912, i64 %_bop5914, i64 %_bop5916, i64 %_count5917)
  store i64 %_id5918, i64* %_count5858
  %_alive5920 = load i64, i64* %_alive5856
  %_bop5921 = icmp eq i64 %_alive5920, 1
  br i1 %_bop5921, label %_if5924, label %_else5923
_if5924:
  %_count5926 = load i64, i64* %_count5858
  %_bop5927 = icmp slt i64 %_count5926, 2
  br i1 %_bop5927, label %_if5930, label %_else5929
_if5930:
  ret i64 0
_else5929:
  %_count5932 = load i64, i64* %_count5858
  %_bop5933 = icmp slt i64 %_count5932, 4
  br i1 %_bop5933, label %_if5936, label %_else5935
_if5936:
  ret i64 1
_else5935:
  br label %_after5934
_after5934:
  br label %_after5928
_after5928:
  ret i64 0
_else5923:
  br label %_after5922
_after5922:
  %_count5938 = load i64, i64* %_count5858
  %_bop5939 = icmp eq i64 %_count5938, 3
  br i1 %_bop5939, label %_if5942, label %_else5941
_if5942:
  ret i64 1
_else5941:
  ret i64 0
_after5940:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_board5715 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board5767 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5769 = alloca i64
  %_j5783 = alloca i64
  %_i5808 = alloca i64
  %_j5817 = alloca i64
  %_argc5660 = alloca i64
  %_argv5662 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5662
  store i64 %argc, i64* %_argc5660
  %_raw_array5665 = call i64* @oat_alloc_array(i64 4)
  %_array5666 = bitcast i64* %_raw_array5665 to { i64, [0 x i64] }*
  %_gep5667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5666, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5667
  %_gep5669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5666, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5669
  %_gep5671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5666, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5671
  %_gep5673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5666, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5673
  %_raw_array5675 = call i64* @oat_alloc_array(i64 4)
  %_array5676 = bitcast i64* %_raw_array5675 to { i64, [0 x i64] }*
  %_gep5677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5676, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5677
  %_gep5679 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5676, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5679
  %_gep5681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5676, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5681
  %_gep5683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5676, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep5683
  %_raw_array5685 = call i64* @oat_alloc_array(i64 4)
  %_array5686 = bitcast i64* %_raw_array5685 to { i64, [0 x i64] }*
  %_gep5687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5686, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep5687
  %_gep5689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5686, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5689
  %_gep5691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5686, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5691
  %_gep5693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5686, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5693
  %_raw_array5695 = call i64* @oat_alloc_array(i64 4)
  %_array5696 = bitcast i64* %_raw_array5695 to { i64, [0 x i64] }*
  %_gep5697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5696, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5697
  %_gep5699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5696, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5699
  %_gep5701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5696, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5701
  %_gep5703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5696, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5703
  %_raw_array5705 = call i64* @oat_alloc_array(i64 4)
  %_array5706 = bitcast i64* %_raw_array5705 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep5707 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5706, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5666, { i64, [0 x i64] }** %_gep5707
  %_gep5709 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5706, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5676, { i64, [0 x i64] }** %_gep5709
  %_gep5711 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5706, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5686, { i64, [0 x i64] }** %_gep5711
  %_gep5713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5706, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5696, { i64, [0 x i64] }** %_gep5713
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5706, { i64, [0 x { i64, [0 x i64] }*] }** %_board5715
  %_raw_array5717 = call i64* @oat_alloc_array(i64 4)
  %_array5718 = bitcast i64* %_raw_array5717 to { i64, [0 x i64] }*
  %_gep5719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5718, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5719
  %_gep5721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5718, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5721
  %_gep5723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5718, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5723
  %_gep5725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5718, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5725
  %_raw_array5727 = call i64* @oat_alloc_array(i64 4)
  %_array5728 = bitcast i64* %_raw_array5727 to { i64, [0 x i64] }*
  %_gep5729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5728, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5729
  %_gep5731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5728, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5731
  %_gep5733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5728, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5733
  %_gep5735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5728, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5735
  %_raw_array5737 = call i64* @oat_alloc_array(i64 4)
  %_array5738 = bitcast i64* %_raw_array5737 to { i64, [0 x i64] }*
  %_gep5739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5738, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5739
  %_gep5741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5738, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5741
  %_gep5743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5738, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5743
  %_gep5745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5738, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5745
  %_raw_array5747 = call i64* @oat_alloc_array(i64 4)
  %_array5748 = bitcast i64* %_raw_array5747 to { i64, [0 x i64] }*
  %_gep5749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5748, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5749
  %_gep5751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5748, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5751
  %_gep5753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5748, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5753
  %_gep5755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5748, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5755
  %_raw_array5757 = call i64* @oat_alloc_array(i64 4)
  %_array5758 = bitcast i64* %_raw_array5757 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep5759 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5758, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5718, { i64, [0 x i64] }** %_gep5759
  %_gep5761 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5758, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5728, { i64, [0 x i64] }** %_gep5761
  %_gep5763 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5758, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5738, { i64, [0 x i64] }** %_gep5763
  %_gep5765 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5758, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5748, { i64, [0 x i64] }** %_gep5765
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5758, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5767
  store i64 0, i64* %_i5769
  br label %_pre5774
_pre5774:
  %_i5771 = load i64, i64* %_i5769
  %_bop5772 = icmp slt i64 %_i5771, 4
  %_cnd5776 = icmp eq i1 %_bop5772, 0
  br i1 %_cnd5776, label %_post5773, label %_body5775
_body5775:
  %_raw_array5777 = call i64* @oat_alloc_array(i64 4)
  %_array5778 = bitcast i64* %_raw_array5777 to { i64, [0 x i64] }*
  %_new_board5779 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5767
  %_i5780 = load i64, i64* %_i5769
  %_ptr5781 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5779, i32 0, i32 1, i64 %_i5780
  store { i64, [0 x i64] }* %_array5778, { i64, [0 x i64] }** %_ptr5781
  store i64 0, i64* %_j5783
  br label %_pre5788
_pre5788:
  %_j5785 = load i64, i64* %_j5783
  %_bop5786 = icmp slt i64 %_j5785, 4
  %_cnd5790 = icmp eq i1 %_bop5786, 0
  br i1 %_cnd5790, label %_post5787, label %_body5789
_body5789:
  %_board5791 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5715
  %_i5792 = load i64, i64* %_i5769
  %_j5793 = load i64, i64* %_j5783
  %_id5794 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5791, i64 %_i5792, i64 %_j5793)
  %_new_board5797 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5767
  %_i5798 = load i64, i64* %_i5769
  %_ptr5795 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5797, i32 0, i32 1, i64 %_i5798
  %_resPtr5796 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5795
  %_j5799 = load i64, i64* %_j5783
  %_ptr5800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5796, i32 0, i32 1, i64 %_j5799
  store i64 %_id5794, i64* %_ptr5800
  %_j5802 = load i64, i64* %_j5783
  %_bop5803 = add i64 %_j5802, 1
  store i64 %_bop5803, i64* %_j5783
  br label %_pre5788
_post5787:
  %_i5805 = load i64, i64* %_i5769
  %_bop5806 = add i64 %_i5805, 1
  store i64 %_bop5806, i64* %_i5769
  br label %_pre5774
_post5773:
  store i64 0, i64* %_i5808
  br label %_pre5814
_pre5814:
  %_i5810 = load i64, i64* %_i5808
  %_len5811 = load i64, i64* @len
  %_bop5812 = icmp slt i64 %_i5810, %_len5811
  %_cnd5816 = icmp eq i1 %_bop5812, 0
  br i1 %_cnd5816, label %_post5813, label %_body5815
_body5815:
  store i64 0, i64* %_j5817
  br label %_pre5823
_pre5823:
  %_j5819 = load i64, i64* %_j5817
  %_len5820 = load i64, i64* @len
  %_bop5821 = icmp slt i64 %_j5819, %_len5820
  %_cnd5825 = icmp eq i1 %_bop5821, 0
  br i1 %_cnd5825, label %_post5822, label %_body5824
_body5824:
  %_new_board5830 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5767
  %_i5831 = load i64, i64* %_i5808
  %_ptr5828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5830, i32 0, i32 1, i64 %_i5831
  %_resPtr5829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5828
  %_j5832 = load i64, i64* %_j5817
  %_ptr5826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5829, i32 0, i32 1, i64 %_j5832
  %_resPtr5827 = load i64, i64* %_ptr5826
  call void @print_int(i64 %_resPtr5827)
  %_j5834 = load i64, i64* %_j5817
  %_bop5835 = add i64 %_j5834, 1
  store i64 %_bop5835, i64* %_j5817
  br label %_pre5823
_post5822:
  %_i5837 = load i64, i64* %_i5808
  %_bop5838 = add i64 %_i5837, 1
  store i64 %_bop5838, i64* %_i5808
  br label %_pre5814
_post5813:
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
