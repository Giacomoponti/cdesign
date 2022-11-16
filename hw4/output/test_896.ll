; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5873 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5875 = alloca i64
  %_j5877 = alloca i64
  %_count5879 = alloca i64
  store i64 %count, i64* %_count5879
  store i64 %j, i64* %_j5877
  store i64 %i, i64* %_i5875
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5873
  %_i5884 = load i64, i64* %_i5881
  %_bop5885 = icmp sge i64 %_i5884, 0
  %_j5886 = load i64, i64* %_j5882
  %_bop5887 = icmp sge i64 %_j5886, 0
  %_bop5888 = and i1 %_bop5885, %_bop5887
  %_i5889 = load i64, i64* %_i5881
  %_len5890 = load i64, i64* @len
  %_bop5891 = icmp slt i64 %_i5889, %_len5890
  %_bop5892 = and i1 %_bop5888, %_bop5891
  %_j5893 = load i64, i64* %_j5882
  %_len5894 = load i64, i64* @len
  %_bop5895 = icmp slt i64 %_j5893, %_len5894
  %_bop5896 = and i1 %_bop5892, %_bop5895
  br i1 %_bop5896, label %_if5899, label %_else5898
_if5899:
  %_count5902 = load i64, i64* %_count5883
  %_board5907 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5880
  %_i5908 = load i64, i64* %_i5881
  %_ptr5905 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5907, i32 0, i32 1, i64 %_i5908
  %_resPtr5906 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5905
  %_j5909 = load i64, i64* %_j5882
  %_ptr5903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5906, i32 0, i32 1, i64 %_j5909
  %_resPtr5904 = load i64, i64* %_ptr5903
  %_bop5910 = add i64 %_count5902, %_resPtr5904
  ret i64 %_bop5910
_else5898:
  %_count5901 = load i64, i64* %_count5883
  ret i64 %_count5901
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_alive5784 = alloca i64
  %_count5786 = alloca i64
  %_board5769 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5771 = alloca i64
  %_j5773 = alloca i64
  store i64 %j, i64* %_j5773
  store i64 %i, i64* %_i5771
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5769
  %_board5781 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5782 = load i64, i64* %_i5775
  %_ptr5779 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5781, i32 0, i32 1, i64 %_i5782
  %_resPtr5780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5779
  %_j5783 = load i64, i64* %_j5776
  %_ptr5777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5780, i32 0, i32 1, i64 %_j5783
  %_resPtr5778 = load i64, i64* %_ptr5777
  store i64 %_resPtr5778, i64* %_alive5784
  store i64 0, i64* %_count5786
  %_board5788 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5789 = load i64, i64* %_i5775
  %_bop5790 = sub i64 %_i5789, 1
  %_j5791 = load i64, i64* %_j5776
  %_bop5792 = sub i64 %_j5791, 1
  %_count5793 = load i64, i64* %_count5786
  %_id5794 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5788, i64 %_bop5790, i64 %_bop5792, i64 %_count5793)
  store i64 %_id5794, i64* %_count5786
  %_board5796 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5797 = load i64, i64* %_i5775
  %_bop5798 = sub i64 %_i5797, 1
  %_j5799 = load i64, i64* %_j5776
  %_count5800 = load i64, i64* %_count5786
  %_id5801 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5796, i64 %_bop5798, i64 %_j5799, i64 %_count5800)
  store i64 %_id5801, i64* %_count5786
  %_board5803 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5804 = load i64, i64* %_i5775
  %_bop5805 = sub i64 %_i5804, 1
  %_j5806 = load i64, i64* %_j5776
  %_bop5807 = add i64 %_j5806, 1
  %_count5808 = load i64, i64* %_count5786
  %_id5809 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5803, i64 %_bop5805, i64 %_bop5807, i64 %_count5808)
  store i64 %_id5809, i64* %_count5786
  %_board5811 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5812 = load i64, i64* %_i5775
  %_j5813 = load i64, i64* %_j5776
  %_bop5814 = sub i64 %_j5813, 1
  %_count5815 = load i64, i64* %_count5786
  %_id5816 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5811, i64 %_i5812, i64 %_bop5814, i64 %_count5815)
  store i64 %_id5816, i64* %_count5786
  %_board5818 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5819 = load i64, i64* %_i5775
  %_j5820 = load i64, i64* %_j5776
  %_bop5821 = add i64 %_j5820, 1
  %_count5822 = load i64, i64* %_count5786
  %_id5823 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5818, i64 %_i5819, i64 %_bop5821, i64 %_count5822)
  store i64 %_id5823, i64* %_count5786
  %_board5825 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5826 = load i64, i64* %_i5775
  %_bop5827 = add i64 %_i5826, 1
  %_j5828 = load i64, i64* %_j5776
  %_bop5829 = sub i64 %_j5828, 1
  %_count5830 = load i64, i64* %_count5786
  %_id5831 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5825, i64 %_bop5827, i64 %_bop5829, i64 %_count5830)
  store i64 %_id5831, i64* %_count5786
  %_board5833 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5834 = load i64, i64* %_i5775
  %_bop5835 = add i64 %_i5834, 1
  %_j5836 = load i64, i64* %_j5776
  %_count5837 = load i64, i64* %_count5786
  %_id5838 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5833, i64 %_bop5835, i64 %_j5836, i64 %_count5837)
  store i64 %_id5838, i64* %_count5786
  %_board5840 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5774
  %_i5841 = load i64, i64* %_i5775
  %_bop5842 = add i64 %_i5841, 1
  %_j5843 = load i64, i64* %_j5776
  %_bop5844 = add i64 %_j5843, 1
  %_count5845 = load i64, i64* %_count5786
  %_id5846 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5840, i64 %_bop5842, i64 %_bop5844, i64 %_count5845)
  store i64 %_id5846, i64* %_count5786
  %_alive5848 = load i64, i64* %_alive5784
  %_bop5849 = icmp eq i64 %_alive5848, 1
  br i1 %_bop5849, label %_if5852, label %_else5851
_if5852:
  %_count5854 = load i64, i64* %_count5786
  %_bop5855 = icmp slt i64 %_count5854, 2
  br i1 %_bop5855, label %_if5858, label %_else5857
_if5858:
  ret i64 0
_else5857:
  %_count5860 = load i64, i64* %_count5786
  %_bop5861 = icmp slt i64 %_count5860, 4
  br i1 %_bop5861, label %_if5864, label %_else5863
_if5864:
  ret i64 1
_else5863:
  br label %_after5862
_after5862:
  br label %_after5856
_after5856:
  ret i64 0
_else5851:
  br label %_after5850
_after5850:
  %_count5866 = load i64, i64* %_count5786
  %_bop5867 = icmp eq i64 %_count5866, 3
  br i1 %_bop5867, label %_if5870, label %_else5869
_if5870:
  ret i64 1
_else5869:
  ret i64 0
_after5868:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_board5643 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board5695 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5697 = alloca i64
  %_j5711 = alloca i64
  %_i5736 = alloca i64
  %_j5745 = alloca i64
  %_argc5588 = alloca i64
  %_argv5590 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5590
  store i64 %argc, i64* %_argc5588
  %_raw_array5593 = call i64* @oat_alloc_array(i64 4)
  %_array5594 = bitcast i64* %_raw_array5593 to { i64, [0 x i64] }*
  %_gep5595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5595
  %_gep5597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5597
  %_gep5599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5599
  %_gep5601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5594, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5601
  %_raw_array5603 = call i64* @oat_alloc_array(i64 4)
  %_array5604 = bitcast i64* %_raw_array5603 to { i64, [0 x i64] }*
  %_gep5605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5604, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5605
  %_gep5607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5604, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5607
  %_gep5609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5604, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5609
  %_gep5611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5604, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep5611
  %_raw_array5613 = call i64* @oat_alloc_array(i64 4)
  %_array5614 = bitcast i64* %_raw_array5613 to { i64, [0 x i64] }*
  %_gep5615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5614, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep5615
  %_gep5617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5614, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5617
  %_gep5619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5614, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep5619
  %_gep5621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5614, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5621
  %_raw_array5623 = call i64* @oat_alloc_array(i64 4)
  %_array5624 = bitcast i64* %_raw_array5623 to { i64, [0 x i64] }*
  %_gep5625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5624, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5625
  %_gep5627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5624, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5627
  %_gep5629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5624, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5629
  %_gep5631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5624, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5631
  %_raw_array5633 = call i64* @oat_alloc_array(i64 4)
  %_array5634 = bitcast i64* %_raw_array5633 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep5635 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5634, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5594, { i64, [0 x i64] }** %_gep5635
  %_gep5637 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5634, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5604, { i64, [0 x i64] }** %_gep5637
  %_gep5639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5634, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5614, { i64, [0 x i64] }** %_gep5639
  %_gep5641 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5634, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5624, { i64, [0 x i64] }** %_gep5641
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5634, { i64, [0 x { i64, [0 x i64] }*] }** %_board5643
  %_raw_array5645 = call i64* @oat_alloc_array(i64 4)
  %_array5646 = bitcast i64* %_raw_array5645 to { i64, [0 x i64] }*
  %_gep5647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5646, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5647
  %_gep5649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5646, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5649
  %_gep5651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5646, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5651
  %_gep5653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5646, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5653
  %_raw_array5655 = call i64* @oat_alloc_array(i64 4)
  %_array5656 = bitcast i64* %_raw_array5655 to { i64, [0 x i64] }*
  %_gep5657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep5657
  %_gep5659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep5659
  %_gep5661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5661
  %_gep5663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5663
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
  store i64 0, i64* %_gep5679
  %_gep5681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5676, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep5681
  %_gep5683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5676, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep5683
  %_raw_array5685 = call i64* @oat_alloc_array(i64 4)
  %_array5686 = bitcast i64* %_raw_array5685 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_gep5687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5686, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5646, { i64, [0 x i64] }** %_gep5687
  %_gep5689 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5686, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5656, { i64, [0 x i64] }** %_gep5689
  %_gep5691 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5686, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5666, { i64, [0 x i64] }** %_gep5691
  %_gep5693 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5686, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5676, { i64, [0 x i64] }** %_gep5693
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5686, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5695
  store i64 0, i64* %_i5697
  br label %_pre5702
_pre5702:
  %_i5699 = load i64, i64* %_i5697
  %_bop5700 = icmp slt i64 %_i5699, 4
  %_cnd5704 = icmp eq i1 %_bop5700, 0
  br i1 %_cnd5704, label %_post5701, label %_body5703
_body5703:
  %_raw_array5705 = call i64* @oat_alloc_array(i64 4)
  %_array5706 = bitcast i64* %_raw_array5705 to { i64, [0 x i64] }*
  %_new_board5707 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5695
  %_i5708 = load i64, i64* %_i5697
  %_ptr5709 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5707, i32 0, i32 1, i64 %_i5708
  store { i64, [0 x i64] }* %_array5706, { i64, [0 x i64] }** %_ptr5709
  store i64 0, i64* %_j5711
  br label %_pre5716
_pre5716:
  %_j5713 = load i64, i64* %_j5711
  %_bop5714 = icmp slt i64 %_j5713, 4
  %_cnd5718 = icmp eq i1 %_bop5714, 0
  br i1 %_cnd5718, label %_post5715, label %_body5717
_body5717:
  %_board5719 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5643
  %_i5720 = load i64, i64* %_i5697
  %_j5721 = load i64, i64* %_j5711
  %_id5722 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5719, i64 %_i5720, i64 %_j5721)
  %_new_board5725 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5695
  %_i5726 = load i64, i64* %_i5697
  %_ptr5723 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5725, i32 0, i32 1, i64 %_i5726
  %_resPtr5724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5723
  %_j5727 = load i64, i64* %_j5711
  %_ptr5728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5724, i32 0, i32 1, i64 %_j5727
  store i64 %_id5722, i64* %_ptr5728
  %_j5730 = load i64, i64* %_j5711
  %_bop5731 = add i64 %_j5730, 1
  store i64 %_bop5731, i64* %_j5711
  br label %_pre5716
_post5715:
  %_i5733 = load i64, i64* %_i5697
  %_bop5734 = add i64 %_i5733, 1
  store i64 %_bop5734, i64* %_i5697
  br label %_pre5702
_post5701:
  store i64 0, i64* %_i5736
  br label %_pre5742
_pre5742:
  %_i5738 = load i64, i64* %_i5736
  %_len5739 = load i64, i64* @len
  %_bop5740 = icmp slt i64 %_i5738, %_len5739
  %_cnd5744 = icmp eq i1 %_bop5740, 0
  br i1 %_cnd5744, label %_post5741, label %_body5743
_body5743:
  store i64 0, i64* %_j5745
  br label %_pre5751
_pre5751:
  %_j5747 = load i64, i64* %_j5745
  %_len5748 = load i64, i64* @len
  %_bop5749 = icmp slt i64 %_j5747, %_len5748
  %_cnd5753 = icmp eq i1 %_bop5749, 0
  br i1 %_cnd5753, label %_post5750, label %_body5752
_body5752:
  %_new_board5758 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5695
  %_i5759 = load i64, i64* %_i5736
  %_ptr5756 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5758, i32 0, i32 1, i64 %_i5759
  %_resPtr5757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr5756
  %_j5760 = load i64, i64* %_j5745
  %_ptr5754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_resPtr5757, i32 0, i32 1, i64 %_j5760
  %_resPtr5755 = load i64, i64* %_ptr5754
  call void @print_int(i64 %_resPtr5755)
  %_j5762 = load i64, i64* %_j5745
  %_bop5763 = add i64 %_j5762, 1
  store i64 %_bop5763, i64* %_j5745
  br label %_pre5751
_post5750:
  %_i5765 = load i64, i64* %_i5736
  %_bop5766 = add i64 %_i5765, 1
  store i64 %_bop5766, i64* %_i5736
  br label %_pre5742
_post5741:
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
