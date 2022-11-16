; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_l5036 = alloca i64
  %_r5040 = alloca i64
  %_tmp5042 = alloca i64
  %_m5045 = alloca i64
  %_array5026 = alloca { i64, [0 x i64] }*
  %_i5028 = alloca i64
  %_len5030 = alloca i64
  store i64 %len, i64* %_len5030
  store i64 %i, i64* %_i5028
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array5026
  %_i5034 = load i64, i64* %_i5032
  %_bop5035 = mul i64 %_i5034, 2
  store i64 %_bop5035, i64* %_l5036
  %_i5038 = load i64, i64* %_i5032
  %_bop5039 = add i64 %_i5038, 1
  store i64 %_bop5039, i64* %_r5040
  store i64 0, i64* %_tmp5042
  %_i5044 = load i64, i64* %_i5032
  store i64 %_i5044, i64* %_m5045
  %_l5047 = load i64, i64* %_l5036
  %_len5048 = load i64, i64* %_len5033
  %_bop5049 = icmp slt i64 %_l5047, %_len5048
  br i1 %_bop5049, label %_if5052, label %_else5051
_if5052:
  %_array5056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_l5057 = load i64, i64* %_l5036
  %_ptr5054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5056, i32 0, i32 1, i64 %_l5057
  %_resPtr5055 = load i64, i64* %_ptr5054
  %_array5060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_m5061 = load i64, i64* %_m5045
  %_ptr5058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5060, i32 0, i32 1, i64 %_m5061
  %_resPtr5059 = load i64, i64* %_ptr5058
  %_bop5062 = icmp sgt i64 %_resPtr5055, %_resPtr5059
  br i1 %_bop5062, label %_if5065, label %_else5064
_if5065:
  %_l5067 = load i64, i64* %_l5036
  store i64 %_l5067, i64* %_m5045
  br label %_after5063
_else5064:
  br label %_after5063
_after5063:
  br label %_after5050
_else5051:
  br label %_after5050
_after5050:
  %_r5069 = load i64, i64* %_r5040
  %_len5070 = load i64, i64* %_len5033
  %_bop5071 = icmp slt i64 %_r5069, %_len5070
  br i1 %_bop5071, label %_if5074, label %_else5073
_if5074:
  %_array5078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_r5079 = load i64, i64* %_r5040
  %_ptr5076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5078, i32 0, i32 1, i64 %_r5079
  %_resPtr5077 = load i64, i64* %_ptr5076
  %_array5082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_m5083 = load i64, i64* %_m5045
  %_ptr5080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5082, i32 0, i32 1, i64 %_m5083
  %_resPtr5081 = load i64, i64* %_ptr5080
  %_bop5084 = icmp sgt i64 %_resPtr5077, %_resPtr5081
  br i1 %_bop5084, label %_if5087, label %_else5086
_if5087:
  %_r5089 = load i64, i64* %_r5040
  store i64 %_r5089, i64* %_m5045
  br label %_after5085
_else5086:
  br label %_after5085
_after5085:
  br label %_after5072
_else5073:
  br label %_after5072
_after5072:
  %_m5091 = load i64, i64* %_m5045
  %_i5092 = load i64, i64* %_i5032
  %_bop5093 = icmp ne i64 %_m5091, %_i5092
  br i1 %_bop5093, label %_if5096, label %_else5095
_if5096:
  %_array5100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_i5101 = load i64, i64* %_i5032
  %_ptr5098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5100, i32 0, i32 1, i64 %_i5101
  %_resPtr5099 = load i64, i64* %_ptr5098
  store i64 %_resPtr5099, i64* %_tmp5042
  %_array5105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_m5106 = load i64, i64* %_m5045
  %_ptr5103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5105, i32 0, i32 1, i64 %_m5106
  %_resPtr5104 = load i64, i64* %_ptr5103
  %_array5107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_i5108 = load i64, i64* %_i5032
  %_ptr5109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5107, i32 0, i32 1, i64 %_i5108
  store i64 %_resPtr5104, i64* %_ptr5109
  %_tmp5111 = load i64, i64* %_tmp5042
  %_array5112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_m5113 = load i64, i64* %_m5045
  %_ptr5114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5112, i32 0, i32 1, i64 %_m5113
  store i64 %_tmp5111, i64* %_ptr5114
  %_array5116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5031
  %_m5117 = load i64, i64* %_m5045
  %_len5118 = load i64, i64* %_len5033
  call void @min_heapify({ i64, [0 x i64] }* %_array5116, i64 %_m5117, i64 %_len5118)
  br label %_after5094
_else5095:
  br label %_after5094
_after5094:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_i5010 = alloca i64
  %_array5004 = alloca { i64, [0 x i64] }*
  %_len5006 = alloca i64
  store i64 %len, i64* %_len5006
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array5004
  %_len5009 = load i64, i64* %_len5008
  store i64 %_len5009, i64* %_i5010
  br label %_pre5015
_pre5015:
  %_cnd5017 = icmp eq i1 %_bop5013, 0
  br i1 %_cnd5017, label %_post5014, label %_body5016
_body5016:
  %_i5012 = load i64, i64* %_i5010
  %_bop5013 = icmp sge i64 %_i5012, 1
  %_array5018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5007
  %_i5019 = load i64, i64* %_i5010
  %_len5020 = load i64, i64* %_len5008
  call void @min_heapify({ i64, [0 x i64] }* %_array5018, i64 %_i5019, i64 %_len5020)
  %_i5022 = load i64, i64* %_i5010
  %_bop5023 = sub i64 %_i5022, 1
  store i64 %_bop5023, i64* %_i5010
  br label %_pre5015
_post5014:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array4945 = alloca { i64, [0 x i64] }*
  %_end_result4971 = alloca { i64, [0 x i64] }*
  %_same4975 = alloca i64
  %_i4977 = alloca i64
  %_argc4916 = alloca i64
  %_argv4918 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4918
  store i64 %argc, i64* %_argc4916
  %_raw_array4921 = call i64* @oat_alloc_array(i64 11)
  %_array4922 = bitcast i64* %_raw_array4921 to { i64, [0 x i64] }*
  %_gep4923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4923
  %_gep4925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep4925
  %_gep4927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep4927
  %_gep4929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4929
  %_gep4931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep4931
  %_gep4933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 5
  store i64 10, i64* %_gep4933
  %_gep4935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep4935
  %_gep4937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep4937
  %_gep4939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep4939
  %_gep4941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 9
  store i64 4, i64* %_gep4941
  %_gep4943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4922, i32 0, i32 1, i32 10
  store i64 5, i64* %_gep4943
  store { i64, [0 x i64] }* %_array4922, { i64, [0 x i64] }** %_array4945
  %_raw_array4947 = call i64* @oat_alloc_array(i64 11)
  %_array4948 = bitcast i64* %_raw_array4947 to { i64, [0 x i64] }*
  %_gep4949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep4949
  %_gep4951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep4951
  %_gep4953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep4953
  %_gep4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep4955
  %_gep4957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep4957
  %_gep4959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 5
  store i64 5, i64* %_gep4959
  %_gep4961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep4961
  %_gep4963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep4963
  %_gep4965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep4965
  %_gep4967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 9
  store i64 9, i64* %_gep4967
  %_gep4969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 10
  store i64 10, i64* %_gep4969
  store { i64, [0 x i64] }* %_array4948, { i64, [0 x i64] }** %_end_result4971
  %_array4973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4945
  call void @make_min_heap({ i64, [0 x i64] }* %_array4973, i64 10)
  store i64 0, i64* %_same4975
  store i64 0, i64* %_i4977
  br label %_pre4982
_pre4982:
  %_cnd4984 = icmp eq i1 %_bop4980, 0
  br i1 %_cnd4984, label %_post4981, label %_body4983
_body4983:
  %_i4979 = load i64, i64* %_i4977
  %_bop4980 = icmp slt i64 %_i4979, 11
  %_array4987 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4945
  %_i4988 = load i64, i64* %_i4977
  %_ptr4985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4987, i32 0, i32 1, i64 %_i4988
  %_resPtr4986 = load i64, i64* %_ptr4985
  %_end_result4991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4971
  %_i4992 = load i64, i64* %_i4977
  %_ptr4989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result4991, i32 0, i32 1, i64 %_i4992
  %_resPtr4990 = load i64, i64* %_ptr4989
  %_bop4993 = icmp ne i64 %_resPtr4986, %_resPtr4990
  br i1 %_bop4993, label %_if4996, label %_else4995
_if4996:
  store i64 1, i64* %_same4975
  br label %_after4994
_else4995:
  br label %_after4994
_after4994:
  %_i4999 = load i64, i64* %_i4977
  %_bop5000 = add i64 %_i4999, 1
  store i64 %_bop5000, i64* %_i4977
  br label %_pre4982
_post4981:
  %_same5002 = load i64, i64* %_same4975
  ret i64 %_same5002
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
