Те
ы1‘1
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
И
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%Ј—8"
data_formatstringNHWC"
is_trainingbool(
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
°
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
…
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ю€€€€€€€€"
value_indexint(0ю€€€€€€€€"+

vocab_sizeint€€€€€€€€€(0€€€€€€€€€"
	delimiterstring	И
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
М
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
К
ReverseSequence

input"T
seq_lengths"Tlen
output"T"
seq_dimint"
	batch_dimint "	
Ttype"
Tlentype0	:
2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
Љ
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.6.02v1.6.0-0-gd2e24b6039ЮТ
Р
-global_step/Initializer/zeros/shape_as_tensorConst*
valueB *
_class
loc:@global_step*
dtype0*
_output_shapes
: 
Е
#global_step/Initializer/zeros/ConstConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
ћ
global_step/Initializer/zerosFill-global_step/Initializer/zeros/shape_as_tensor#global_step/Initializer/zeros/Const*
T0	*

index_type0*
_class
loc:@global_step*
_output_shapes
: 
П
global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
^
x_lPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
^
x_rPlaceholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
\
lPlaceholder*
dtype0	*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
f

total_text
StringJoinx_lx_r*
N*#
_output_shapes
:€€€€€€€€€*
	separator <a> 
«
string_to_index/hash_tableHashTableV2*
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *2
shared_name#!hash_table_./data/vocab.txt_-2_-1*
use_node_name_sharing( 
b
 string_to_index/hash_table/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Е
4string_to_index/hash_table/table_init/asset_filepathConst*!
valueB B./data/vocab.txt*
dtype0*
_output_shapes
: 
ы
%string_to_index/hash_table/table_initInitializeTableFromTextFileV2string_to_index/hash_table4string_to_index/hash_table/table_init/asset_filepath*
	key_indexю€€€€€€€€*
value_index€€€€€€€€€*

vocab_size€€€€€€€€€*
	delimiter	
G
ConstConst*
value	B B *
dtype0*
_output_shapes
: 
}
StringSplitStringSplit
total_textConst*

skip_empty(*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:
a
SparseToDense/default_valueConst*
valueB B<PAD>*
dtype0*
_output_shapes
: 
…
SparseToDenseSparseToDenseStringSplitStringSplit:2StringSplit:1SparseToDense/default_value*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tindices0	*
T0*
validate_indices(
Љ
hash_table_LookupLookupTableFindV2string_to_index/hash_tableSparseToDense string_to_index/hash_table/Const*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*	
Tin0*

Tout0	
i
CastCasthash_table_Lookup*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

DstT0*

SrcT0	
Щ
*embedding/Initializer/random_uniform/shapeConst*
valueB"&  А   *
_class
loc:@embedding*
dtype0*
_output_shapes
:
Л
(embedding/Initializer/random_uniform/minConst*
valueB
 *oЉ)љ*
_class
loc:@embedding*
dtype0*
_output_shapes
: 
Л
(embedding/Initializer/random_uniform/maxConst*
valueB
 *oЉ)=*
_class
loc:@embedding*
dtype0*
_output_shapes
: 
ё
2embedding/Initializer/random_uniform/RandomUniformRandomUniform*embedding/Initializer/random_uniform/shape*
T0*
_class
loc:@embedding*
seed2 *
dtype0* 
_output_shapes
:
¶А*

seed 
¬
(embedding/Initializer/random_uniform/subSub(embedding/Initializer/random_uniform/max(embedding/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@embedding
÷
(embedding/Initializer/random_uniform/mulMul2embedding/Initializer/random_uniform/RandomUniform(embedding/Initializer/random_uniform/sub* 
_output_shapes
:
¶А*
T0*
_class
loc:@embedding
»
$embedding/Initializer/random_uniformAdd(embedding/Initializer/random_uniform/mul(embedding/Initializer/random_uniform/min*
T0*
_class
loc:@embedding* 
_output_shapes
:
¶А
Я
	embedding
VariableV2*
shared_name *
_class
loc:@embedding*
	container *
shape:
¶А*
dtype0* 
_output_shapes
:
¶А
љ
embedding/AssignAssign	embedding$embedding/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
¶А
n
embedding/readIdentity	embedding*
T0*
_class
loc:@embedding* 
_output_shapes
:
¶А
ї
word_embeddingsGatherembedding/readCast*
Tindices0*
Tparams0*
validate_indices(*
_class
loc:@embedding*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
]
DropoutWrapperInit/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
_
DropoutWrapperInit/Const_1Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
_
DropoutWrapperInit/Const_2Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
_
DropoutWrapperInit_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
a
DropoutWrapperInit_1/Const_1Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
a
DropoutWrapperInit_1/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  А?
f
$bi-lstm/bidirectional_rnn/fw/fw/RankConst*
dtype0*
_output_shapes
: *
value	B :
m
+bi-lstm/bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
m
+bi-lstm/bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
÷
%bi-lstm/bidirectional_rnn/fw/fw/rangeRange+bi-lstm/bidirectional_rnn/fw/fw/range/start$bi-lstm/bidirectional_rnn/fw/fw/Rank+bi-lstm/bidirectional_rnn/fw/fw/range/delta*
_output_shapes
:*

Tidx0
А
/bi-lstm/bidirectional_rnn/fw/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
m
+bi-lstm/bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
с
&bi-lstm/bidirectional_rnn/fw/fw/concatConcatV2/bi-lstm/bidirectional_rnn/fw/fw/concat/values_0%bi-lstm/bidirectional_rnn/fw/fw/range+bi-lstm/bidirectional_rnn/fw/fw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Љ
)bi-lstm/bidirectional_rnn/fw/fw/transpose	Transposeword_embeddings&bi-lstm/bidirectional_rnn/fw/fw/concat*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
Tperm0
o
'bi-lstm/bidirectional_rnn/fw/fw/ToInt32Castl*

SrcT0	*#
_output_shapes
:€€€€€€€€€*

DstT0
Т
/bi-lstm/bidirectional_rnn/fw/fw/sequence_lengthIdentity'bi-lstm/bidirectional_rnn/fw/fw/ToInt32*
T0*#
_output_shapes
:€€€€€€€€€
О
%bi-lstm/bidirectional_rnn/fw/fw/ShapeShape)bi-lstm/bidirectional_rnn/fw/fw/transpose*
_output_shapes
:*
T0*
out_type0
}
3bi-lstm/bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
-bi-lstm/bidirectional_rnn/fw/fw/strided_sliceStridedSlice%bi-lstm/bidirectional_rnn/fw/fw/Shape3bi-lstm/bidirectional_rnn/fw/fw/strided_slice/stack5bi-lstm/bidirectional_rnn/fw/fw/strided_slice/stack_15bi-lstm/bidirectional_rnn/fw/fw/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
Ъ
Xbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
Tbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDims-bi-lstm/bidirectional_rnn/fw/fw/strided_sliceXbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
Щ
Obi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Ч
Ubi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
Pbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2Tbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDimsObi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ConstUbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ъ
Ubi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ƒ
Obi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zerosFillPbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concatUbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ь
Zbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
†
Vbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDims-bi-lstm/bidirectional_rnn/fw/fw/strided_sliceZbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
Ы
Qbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:@
Ь
Zbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
†
Vbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDims-bi-lstm/bidirectional_rnn/fw/fw/strided_sliceZbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
Ы
Qbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
Щ
Wbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
Rbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2Vbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2Qbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Wbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ь
Wbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
Qbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1FillRbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1Wbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ь
Zbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
†
Vbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDims-bi-lstm/bidirectional_rnn/fw/fw/strided_sliceZbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0
Ы
Qbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:@
Ц
'bi-lstm/bidirectional_rnn/fw/fw/Shape_1Shape/bi-lstm/bidirectional_rnn/fw/fw/sequence_length*
T0*
out_type0*
_output_shapes
:
Ц
%bi-lstm/bidirectional_rnn/fw/fw/stackPack-bi-lstm/bidirectional_rnn/fw/fw/strided_slice*
T0*

axis *
N*
_output_shapes
:
£
%bi-lstm/bidirectional_rnn/fw/fw/EqualEqual'bi-lstm/bidirectional_rnn/fw/fw/Shape_1%bi-lstm/bidirectional_rnn/fw/fw/stack*
T0*
_output_shapes
:
o
%bi-lstm/bidirectional_rnn/fw/fw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
≠
#bi-lstm/bidirectional_rnn/fw/fw/AllAll%bi-lstm/bidirectional_rnn/fw/fw/Equal%bi-lstm/bidirectional_rnn/fw/fw/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Љ
,bi-lstm/bidirectional_rnn/fw/fw/Assert/ConstConst*`
valueWBU BOExpected shape for Tensor bi-lstm/bidirectional_rnn/fw/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 

.bi-lstm/bidirectional_rnn/fw/fw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
ƒ
4bi-lstm/bidirectional_rnn/fw/fw/Assert/Assert/data_0Const*`
valueWBU BOExpected shape for Tensor bi-lstm/bidirectional_rnn/fw/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 
Е
4bi-lstm/bidirectional_rnn/fw/fw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Є
-bi-lstm/bidirectional_rnn/fw/fw/Assert/AssertAssert#bi-lstm/bidirectional_rnn/fw/fw/All4bi-lstm/bidirectional_rnn/fw/fw/Assert/Assert/data_0%bi-lstm/bidirectional_rnn/fw/fw/stack4bi-lstm/bidirectional_rnn/fw/fw/Assert/Assert/data_2'bi-lstm/bidirectional_rnn/fw/fw/Shape_1*
T
2*
	summarize
∆
+bi-lstm/bidirectional_rnn/fw/fw/CheckSeqLenIdentity/bi-lstm/bidirectional_rnn/fw/fw/sequence_length.^bi-lstm/bidirectional_rnn/fw/fw/Assert/Assert*#
_output_shapes
:€€€€€€€€€*
T0
Р
'bi-lstm/bidirectional_rnn/fw/fw/Shape_2Shape)bi-lstm/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
£
/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1StridedSlice'bi-lstm/bidirectional_rnn/fw/fw/Shape_25bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1/stack7bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1/stack_17bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Р
'bi-lstm/bidirectional_rnn/fw/fw/Shape_3Shape)bi-lstm/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
Б
7bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
£
/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2StridedSlice'bi-lstm/bidirectional_rnn/fw/fw/Shape_35bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2/stack7bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2/stack_17bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
.bi-lstm/bidirectional_rnn/fw/fw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
 
*bi-lstm/bidirectional_rnn/fw/fw/ExpandDims
ExpandDims/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_2.bi-lstm/bidirectional_rnn/fw/fw/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
q
'bi-lstm/bidirectional_rnn/fw/fw/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
o
-bi-lstm/bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
т
(bi-lstm/bidirectional_rnn/fw/fw/concat_1ConcatV2*bi-lstm/bidirectional_rnn/fw/fw/ExpandDims'bi-lstm/bidirectional_rnn/fw/fw/Const_1-bi-lstm/bidirectional_rnn/fw/fw/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
p
+bi-lstm/bidirectional_rnn/fw/fw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
»
%bi-lstm/bidirectional_rnn/fw/fw/zerosFill(bi-lstm/bidirectional_rnn/fw/fw/concat_1+bi-lstm/bidirectional_rnn/fw/fw/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
q
'bi-lstm/bidirectional_rnn/fw/fw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Њ
#bi-lstm/bidirectional_rnn/fw/fw/MinMin+bi-lstm/bidirectional_rnn/fw/fw/CheckSeqLen'bi-lstm/bidirectional_rnn/fw/fw/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
q
'bi-lstm/bidirectional_rnn/fw/fw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
Њ
#bi-lstm/bidirectional_rnn/fw/fw/MaxMax+bi-lstm/bidirectional_rnn/fw/fw/CheckSeqLen'bi-lstm/bidirectional_rnn/fw/fw/Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
f
$bi-lstm/bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
„
+bi-lstm/bidirectional_rnn/fw/fw/TensorArrayTensorArrayV3/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1*$
element_shape:€€€€€€€€€@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*K
tensor_array_name64bi-lstm/bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
ў
-bi-lstm/bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV3/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1*J
tensor_array_name53bi-lstm/bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *%
element_shape:€€€€€€€€€А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
°
8bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShape)bi-lstm/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
Р
Fbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Т
Hbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Т
Hbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ш
@bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSlice8bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeFbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackHbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Hbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
А
>bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
А
>bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
і
8bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRange>bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/start@bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice>bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ц
Zbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3-bi-lstm/bidirectional_rnn/fw/fw/TensorArray_18bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/range)bi-lstm/bidirectional_rnn/fw/fw/transpose/bi-lstm/bidirectional_rnn/fw/fw/TensorArray_1:1*
_output_shapes
: *
T0*<
_class2
0.loc:@bi-lstm/bidirectional_rnn/fw/fw/transpose
k
)bi-lstm/bidirectional_rnn/fw/fw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
£
'bi-lstm/bidirectional_rnn/fw/fw/MaximumMaximum)bi-lstm/bidirectional_rnn/fw/fw/Maximum/x#bi-lstm/bidirectional_rnn/fw/fw/Max*
T0*
_output_shapes
: 
≠
'bi-lstm/bidirectional_rnn/fw/fw/MinimumMinimum/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1'bi-lstm/bidirectional_rnn/fw/fw/Maximum*
T0*
_output_shapes
: 
y
7bi-lstm/bidirectional_rnn/fw/fw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Б
+bi-lstm/bidirectional_rnn/fw/fw/while/EnterEnter7bi-lstm/bidirectional_rnn/fw/fw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
р
-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_1Enter$bi-lstm/bidirectional_rnn/fw/fw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
щ
-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_2Enter-bi-lstm/bidirectional_rnn/fw/fw/TensorArray:1*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
ђ
-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_3EnterObi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
Ѓ
-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_4EnterQbi-lstm/bidirectional_rnn/fw/fw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
¬
+bi-lstm/bidirectional_rnn/fw/fw/while/MergeMerge+bi-lstm/bidirectional_rnn/fw/fw/while/Enter3bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration*
T0*
N*
_output_shapes
: : 
»
-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_1Merge-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_15bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
»
-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_2Merge-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_25bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
ў
-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_3Merge-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_35bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_3*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
ў
-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_4Merge-bi-lstm/bidirectional_rnn/fw/fw/while/Enter_45bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_4*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
≤
*bi-lstm/bidirectional_rnn/fw/fw/while/LessLess+bi-lstm/bidirectional_rnn/fw/fw/while/Merge0bi-lstm/bidirectional_rnn/fw/fw/while/Less/Enter*
T0*
_output_shapes
: 
ю
0bi-lstm/bidirectional_rnn/fw/fw/while/Less/EnterEnter/bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
Є
,bi-lstm/bidirectional_rnn/fw/fw/while/Less_1Less-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_12bi-lstm/bidirectional_rnn/fw/fw/while/Less_1/Enter*
T0*
_output_shapes
: 
ш
2bi-lstm/bidirectional_rnn/fw/fw/while/Less_1/EnterEnter'bi-lstm/bidirectional_rnn/fw/fw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
∞
0bi-lstm/bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd*bi-lstm/bidirectional_rnn/fw/fw/while/Less,bi-lstm/bidirectional_rnn/fw/fw/while/Less_1*
_output_shapes
: 
Д
.bi-lstm/bidirectional_rnn/fw/fw/while/LoopCondLoopCond0bi-lstm/bidirectional_rnn/fw/fw/while/LogicalAnd*
_output_shapes
: 
ц
,bi-lstm/bidirectional_rnn/fw/fw/while/SwitchSwitch+bi-lstm/bidirectional_rnn/fw/fw/while/Merge.bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond*
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/fw/while/Merge*
_output_shapes
: : 
ь
.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_1Switch-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_1.bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/fw/while/Merge_1*
_output_shapes
: : 
ь
.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_2Switch-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_2.bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/fw/while/Merge_2*
_output_shapes
: : 
Ю
.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_3Switch-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_3.bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/fw/while/Merge_3*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ю
.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_4Switch-bi-lstm/bidirectional_rnn/fw/fw/while/Merge_4.bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/fw/while/Merge_4*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Л
.bi-lstm/bidirectional_rnn/fw/fw/while/IdentityIdentity.bi-lstm/bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 
П
0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_1Identity0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_1:1*
_output_shapes
: *
T0
П
0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_2Identity0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_2:1*
_output_shapes
: *
T0
†
0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_3Identity0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_3:1*
T0*'
_output_shapes
:€€€€€€€€€@
†
0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_4Identity0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_4:1*
T0*'
_output_shapes
:€€€€€€€€€@
Ю
+bi-lstm/bidirectional_rnn/fw/fw/while/add/yConst/^bi-lstm/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
)bi-lstm/bidirectional_rnn/fw/fw/while/addAdd.bi-lstm/bidirectional_rnn/fw/fw/while/Identity+bi-lstm/bidirectional_rnn/fw/fw/while/add/y*
T0*
_output_shapes
: 
µ
7bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV3=bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_1?bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:€€€€€€€€€А
Н
=bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter-bi-lstm/bidirectional_rnn/fw/fw/TensorArray_1*
parallel_iterations *
_output_shapes
:*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Є
?bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterZbi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
б
Nbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"ј      *@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
:
”
Lbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *Мнљ*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
”
Lbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Мн=*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel
 
Vbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformNbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
јА*

seed *
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
seed2 
“
Lbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/subSubLbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxLbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
_output_shapes
: 
ж
Lbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulMulVbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformLbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
јА*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel
Ў
Hbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniformAddLbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulLbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:
јА
з
-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel
VariableV2*
shared_name *@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
	container *
shape:
јА*
dtype0* 
_output_shapes
:
јА
Ќ
4bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/AssignAssign-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelHbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
јА
Ш
2bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/readIdentity-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
T0* 
_output_shapes
:
јА
Ў
Mbi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:А*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias
»
Cbi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/ConstConst*
valueB
 *    *>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
dtype0*
_output_shapes
: 
—
=bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zerosFillMbi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/shape_as_tensorCbi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
_output_shapes	
:А
ў
+bi-lstm/bidirectional_rnn/fw/lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
	container *
shape:А
Ј
2bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/AssignAssign+bi-lstm/bidirectional_rnn/fw/lstm_cell/bias=bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
П
0bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/readIdentity+bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
T0*
_output_shapes	
:А
Ѓ
;bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axisConst/^bi-lstm/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
≤
6bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/concatConcatV27bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV30bi-lstm/bidirectional_rnn/fw/fw/while/Identity_4;bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis*
N*(
_output_shapes
:€€€€€€€€€ј*

Tidx0*
T0
П
6bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulMatMul6bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/concat<bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
Ч
<bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/EnterEnter2bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
јА*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
Г
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAddBiasAdd6bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul=bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
С
=bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/EnterEnter0bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
®
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/ConstConst/^bi-lstm/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
≤
?bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimConst/^bi-lstm/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
і
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/splitSplit?bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split*
T0
Ђ
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add/yConst/^bi-lstm/bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
№
3bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/addAdd7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:25bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add/y*
T0*'
_output_shapes
:€€€€€€€€€@
©
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/SigmoidSigmoid3bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add*'
_output_shapes
:€€€€€€€€€@*
T0
„
3bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mulMul7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_3*
T0*'
_output_shapes
:€€€€€€€€€@
≠
9bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1Sigmoid5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split*
T0*'
_output_shapes
:€€€€€€€€€@
І
4bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/TanhTanh7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:1*'
_output_shapes
:€€€€€€€€€@*
T0
я
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1Mul9bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_14bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh*'
_output_shapes
:€€€€€€€€€@*
T0
Џ
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add_1Add3bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1*'
_output_shapes
:€€€€€€€€€@*
T0
ѓ
9bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2Sigmoid7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€@
І
6bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1Tanh5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
T0*'
_output_shapes
:€€€€€€€€€@
б
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2Mul9bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_26bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1*
T0*'
_output_shapes
:€€€€€€€€€@
№
2bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqualGreaterEqual0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_18bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
П
8bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual/EnterEnter+bi-lstm/bidirectional_rnn/fw/fw/CheckSeqLen*
parallel_iterations *#
_output_shapes
:€€€€€€€€€*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
—
,bi-lstm/bidirectional_rnn/fw/fw/while/SelectSelect2bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual2bi-lstm/bidirectional_rnn/fw/fw/while/Select/Enter5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*'
_output_shapes
:€€€€€€€€€@
—
2bi-lstm/bidirectional_rnn/fw/fw/while/Select/EnterEnter%bi-lstm/bidirectional_rnn/fw/fw/zeros*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*'
_output_shapes
:€€€€€€€€€@*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context
ё
4bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual_1GreaterEqual0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_18bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
”
.bi-lstm/bidirectional_rnn/fw/fw/while/Select_1Select4bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual_10bi-lstm/bidirectional_rnn/fw/fw/while/Identity_35bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*'
_output_shapes
:€€€€€€€€€@
ё
4bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual_2GreaterEqual0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_18bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
”
.bi-lstm/bidirectional_rnn/fw/fw/while/Select_2Select4bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual_20bi-lstm/bidirectional_rnn/fw/fw/while/Identity_45bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*'
_output_shapes
:€€€€€€€€€@
≠
Ibi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Obi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_1,bi-lstm/bidirectional_rnn/fw/fw/while/Select0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_2*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
_output_shapes
: 
з
Obi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter+bi-lstm/bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
:*C

frame_name53bi-lstm/bidirectional_rnn/fw/fw/while/while_context*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(
†
-bi-lstm/bidirectional_rnn/fw/fw/while/add_1/yConst/^bi-lstm/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
і
+bi-lstm/bidirectional_rnn/fw/fw/while/add_1Add0bi-lstm/bidirectional_rnn/fw/fw/while/Identity_1-bi-lstm/bidirectional_rnn/fw/fw/while/add_1/y*
T0*
_output_shapes
: 
Р
3bi-lstm/bidirectional_rnn/fw/fw/while/NextIterationNextIteration)bi-lstm/bidirectional_rnn/fw/fw/while/add*
T0*
_output_shapes
: 
Ф
5bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration+bi-lstm/bidirectional_rnn/fw/fw/while/add_1*
T0*
_output_shapes
: 
≤
5bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationIbi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
®
5bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_3NextIteration.bi-lstm/bidirectional_rnn/fw/fw/while/Select_1*
T0*'
_output_shapes
:€€€€€€€€€@
®
5bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_4NextIteration.bi-lstm/bidirectional_rnn/fw/fw/while/Select_2*
T0*'
_output_shapes
:€€€€€€€€€@
Б
*bi-lstm/bidirectional_rnn/fw/fw/while/ExitExit,bi-lstm/bidirectional_rnn/fw/fw/while/Switch*
_output_shapes
: *
T0
Е
,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_1Exit.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_1*
T0*
_output_shapes
: 
Е
,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_2Exit.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_2*
T0*
_output_shapes
: 
Ц
,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_3Exit.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_3*'
_output_shapes
:€€€€€€€€€@*
T0
Ц
,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_4Exit.bi-lstm/bidirectional_rnn/fw/fw/while/Switch_4*
T0*'
_output_shapes
:€€€€€€€€€@
К
Bbi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3+bi-lstm/bidirectional_rnn/fw/fw/TensorArray,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_2*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
Њ
<bi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
value	B : *>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
Њ
<bi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
р
6bi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/rangeRange<bi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/range/startBbi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3<bi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/fw/TensorArray*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ч
Dbi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3+bi-lstm/bidirectional_rnn/fw/fw/TensorArray6bi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/range,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_2*$
element_shape:€€€€€€€€€@*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/fw/TensorArray*
dtype0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
q
'bi-lstm/bidirectional_rnn/fw/fw/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
h
&bi-lstm/bidirectional_rnn/fw/fw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
o
-bi-lstm/bidirectional_rnn/fw/fw/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
o
-bi-lstm/bidirectional_rnn/fw/fw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ё
'bi-lstm/bidirectional_rnn/fw/fw/range_1Range-bi-lstm/bidirectional_rnn/fw/fw/range_1/start&bi-lstm/bidirectional_rnn/fw/fw/Rank_1-bi-lstm/bidirectional_rnn/fw/fw/range_1/delta*
_output_shapes
:*

Tidx0
В
1bi-lstm/bidirectional_rnn/fw/fw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
o
-bi-lstm/bidirectional_rnn/fw/fw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
(bi-lstm/bidirectional_rnn/fw/fw/concat_2ConcatV21bi-lstm/bidirectional_rnn/fw/fw/concat_2/values_0'bi-lstm/bidirectional_rnn/fw/fw/range_1-bi-lstm/bidirectional_rnn/fw/fw/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
ф
+bi-lstm/bidirectional_rnn/fw/fw/transpose_1	TransposeDbi-lstm/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3(bi-lstm/bidirectional_rnn/fw/fw/concat_2*
Tperm0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
њ
,bi-lstm/bidirectional_rnn/bw/ReverseSequenceReverseSequenceword_embeddingsl*
	batch_dim *
T0*
seq_dim*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*

Tlen0	
f
$bi-lstm/bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
m
+bi-lstm/bidirectional_rnn/bw/bw/range/startConst*
dtype0*
_output_shapes
: *
value	B :
m
+bi-lstm/bidirectional_rnn/bw/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
÷
%bi-lstm/bidirectional_rnn/bw/bw/rangeRange+bi-lstm/bidirectional_rnn/bw/bw/range/start$bi-lstm/bidirectional_rnn/bw/bw/Rank+bi-lstm/bidirectional_rnn/bw/bw/range/delta*
_output_shapes
:*

Tidx0
А
/bi-lstm/bidirectional_rnn/bw/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
m
+bi-lstm/bidirectional_rnn/bw/bw/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
с
&bi-lstm/bidirectional_rnn/bw/bw/concatConcatV2/bi-lstm/bidirectional_rnn/bw/bw/concat/values_0%bi-lstm/bidirectional_rnn/bw/bw/range+bi-lstm/bidirectional_rnn/bw/bw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ў
)bi-lstm/bidirectional_rnn/bw/bw/transpose	Transpose,bi-lstm/bidirectional_rnn/bw/ReverseSequence&bi-lstm/bidirectional_rnn/bw/bw/concat*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*
Tperm0*
T0
o
'bi-lstm/bidirectional_rnn/bw/bw/ToInt32Castl*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
Т
/bi-lstm/bidirectional_rnn/bw/bw/sequence_lengthIdentity'bi-lstm/bidirectional_rnn/bw/bw/ToInt32*
T0*#
_output_shapes
:€€€€€€€€€
О
%bi-lstm/bidirectional_rnn/bw/bw/ShapeShape)bi-lstm/bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
}
3bi-lstm/bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Щ
-bi-lstm/bidirectional_rnn/bw/bw/strided_sliceStridedSlice%bi-lstm/bidirectional_rnn/bw/bw/Shape3bi-lstm/bidirectional_rnn/bw/bw/strided_slice/stack5bi-lstm/bidirectional_rnn/bw/bw/strided_slice/stack_15bi-lstm/bidirectional_rnn/bw/bw/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
Ъ
Xbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
Tbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDims-bi-lstm/bidirectional_rnn/bw/bw/strided_sliceXbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Щ
Obi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Ч
Ubi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
Pbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2Tbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDimsObi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ConstUbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ъ
Ubi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ƒ
Obi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zerosFillPbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concatUbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ь
Zbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
†
Vbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDims-bi-lstm/bidirectional_rnn/bw/bw/strided_sliceZbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
Ы
Qbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ь
Zbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 
†
Vbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDims-bi-lstm/bidirectional_rnn/bw/bw/strided_sliceZbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*
_output_shapes
:*

Tdim0*
T0
Ы
Qbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
Щ
Wbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
Rbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2Vbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2Qbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Wbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ь
Wbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
Qbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1FillRbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/concat_1Wbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ь
Zbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
†
Vbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDims-bi-lstm/bidirectional_rnn/bw/bw/strided_sliceZbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0
Ы
Qbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
valueB:@*
dtype0*
_output_shapes
:
Ц
'bi-lstm/bidirectional_rnn/bw/bw/Shape_1Shape/bi-lstm/bidirectional_rnn/bw/bw/sequence_length*
T0*
out_type0*
_output_shapes
:
Ц
%bi-lstm/bidirectional_rnn/bw/bw/stackPack-bi-lstm/bidirectional_rnn/bw/bw/strided_slice*
T0*

axis *
N*
_output_shapes
:
£
%bi-lstm/bidirectional_rnn/bw/bw/EqualEqual'bi-lstm/bidirectional_rnn/bw/bw/Shape_1%bi-lstm/bidirectional_rnn/bw/bw/stack*
T0*
_output_shapes
:
o
%bi-lstm/bidirectional_rnn/bw/bw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
≠
#bi-lstm/bidirectional_rnn/bw/bw/AllAll%bi-lstm/bidirectional_rnn/bw/bw/Equal%bi-lstm/bidirectional_rnn/bw/bw/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
Љ
,bi-lstm/bidirectional_rnn/bw/bw/Assert/ConstConst*`
valueWBU BOExpected shape for Tensor bi-lstm/bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 

.bi-lstm/bidirectional_rnn/bw/bw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
ƒ
4bi-lstm/bidirectional_rnn/bw/bw/Assert/Assert/data_0Const*`
valueWBU BOExpected shape for Tensor bi-lstm/bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
Е
4bi-lstm/bidirectional_rnn/bw/bw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Є
-bi-lstm/bidirectional_rnn/bw/bw/Assert/AssertAssert#bi-lstm/bidirectional_rnn/bw/bw/All4bi-lstm/bidirectional_rnn/bw/bw/Assert/Assert/data_0%bi-lstm/bidirectional_rnn/bw/bw/stack4bi-lstm/bidirectional_rnn/bw/bw/Assert/Assert/data_2'bi-lstm/bidirectional_rnn/bw/bw/Shape_1*
T
2*
	summarize
∆
+bi-lstm/bidirectional_rnn/bw/bw/CheckSeqLenIdentity/bi-lstm/bidirectional_rnn/bw/bw/sequence_length.^bi-lstm/bidirectional_rnn/bw/bw/Assert/Assert*
T0*#
_output_shapes
:€€€€€€€€€
Р
'bi-lstm/bidirectional_rnn/bw/bw/Shape_2Shape)bi-lstm/bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
£
/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1StridedSlice'bi-lstm/bidirectional_rnn/bw/bw/Shape_25bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1/stack7bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1/stack_17bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Р
'bi-lstm/bidirectional_rnn/bw/bw/Shape_3Shape)bi-lstm/bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:

5bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Б
7bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
£
/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2StridedSlice'bi-lstm/bidirectional_rnn/bw/bw/Shape_35bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2/stack7bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2/stack_17bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
p
.bi-lstm/bidirectional_rnn/bw/bw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
 
*bi-lstm/bidirectional_rnn/bw/bw/ExpandDims
ExpandDims/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_2.bi-lstm/bidirectional_rnn/bw/bw/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
q
'bi-lstm/bidirectional_rnn/bw/bw/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
o
-bi-lstm/bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
т
(bi-lstm/bidirectional_rnn/bw/bw/concat_1ConcatV2*bi-lstm/bidirectional_rnn/bw/bw/ExpandDims'bi-lstm/bidirectional_rnn/bw/bw/Const_1-bi-lstm/bidirectional_rnn/bw/bw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
p
+bi-lstm/bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
»
%bi-lstm/bidirectional_rnn/bw/bw/zerosFill(bi-lstm/bidirectional_rnn/bw/bw/concat_1+bi-lstm/bidirectional_rnn/bw/bw/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
q
'bi-lstm/bidirectional_rnn/bw/bw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Њ
#bi-lstm/bidirectional_rnn/bw/bw/MinMin+bi-lstm/bidirectional_rnn/bw/bw/CheckSeqLen'bi-lstm/bidirectional_rnn/bw/bw/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
q
'bi-lstm/bidirectional_rnn/bw/bw/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
Њ
#bi-lstm/bidirectional_rnn/bw/bw/MaxMax+bi-lstm/bidirectional_rnn/bw/bw/CheckSeqLen'bi-lstm/bidirectional_rnn/bw/bw/Const_3*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
f
$bi-lstm/bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
„
+bi-lstm/bidirectional_rnn/bw/bw/TensorArrayTensorArrayV3/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1*$
element_shape:€€€€€€€€€@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*K
tensor_array_name64bi-lstm/bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
ў
-bi-lstm/bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV3/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1*
dtype0*
_output_shapes

:: *%
element_shape:€€€€€€€€€А*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*J
tensor_array_name53bi-lstm/bidirectional_rnn/bw/bw/dynamic_rnn/input_0
°
8bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShape)bi-lstm/bidirectional_rnn/bw/bw/transpose*
_output_shapes
:*
T0*
out_type0
Р
Fbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Т
Hbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Т
Hbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ш
@bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSlice8bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeFbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackHbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Hbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
А
>bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
А
>bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
і
8bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRange>bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/start@bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice>bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ц
Zbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3-bi-lstm/bidirectional_rnn/bw/bw/TensorArray_18bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/range)bi-lstm/bidirectional_rnn/bw/bw/transpose/bi-lstm/bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*<
_class2
0.loc:@bi-lstm/bidirectional_rnn/bw/bw/transpose*
_output_shapes
: 
k
)bi-lstm/bidirectional_rnn/bw/bw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
£
'bi-lstm/bidirectional_rnn/bw/bw/MaximumMaximum)bi-lstm/bidirectional_rnn/bw/bw/Maximum/x#bi-lstm/bidirectional_rnn/bw/bw/Max*
T0*
_output_shapes
: 
≠
'bi-lstm/bidirectional_rnn/bw/bw/MinimumMinimum/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1'bi-lstm/bidirectional_rnn/bw/bw/Maximum*
_output_shapes
: *
T0
y
7bi-lstm/bidirectional_rnn/bw/bw/while/iteration_counterConst*
dtype0*
_output_shapes
: *
value	B : 
Б
+bi-lstm/bidirectional_rnn/bw/bw/while/EnterEnter7bi-lstm/bidirectional_rnn/bw/bw/while/iteration_counter*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
р
-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_1Enter$bi-lstm/bidirectional_rnn/bw/bw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
щ
-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_2Enter-bi-lstm/bidirectional_rnn/bw/bw/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
ђ
-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_3EnterObi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
Ѓ
-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_4EnterQbi-lstm/bidirectional_rnn/bw/bw/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
¬
+bi-lstm/bidirectional_rnn/bw/bw/while/MergeMerge+bi-lstm/bidirectional_rnn/bw/bw/while/Enter3bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration*
T0*
N*
_output_shapes
: : 
»
-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_1Merge-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_15bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
»
-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_2Merge-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_25bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
ў
-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_3Merge-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_35bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_3*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
ў
-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_4Merge-bi-lstm/bidirectional_rnn/bw/bw/while/Enter_45bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_4*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
≤
*bi-lstm/bidirectional_rnn/bw/bw/while/LessLess+bi-lstm/bidirectional_rnn/bw/bw/while/Merge0bi-lstm/bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
ю
0bi-lstm/bidirectional_rnn/bw/bw/while/Less/EnterEnter/bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Є
,bi-lstm/bidirectional_rnn/bw/bw/while/Less_1Less-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_12bi-lstm/bidirectional_rnn/bw/bw/while/Less_1/Enter*
T0*
_output_shapes
: 
ш
2bi-lstm/bidirectional_rnn/bw/bw/while/Less_1/EnterEnter'bi-lstm/bidirectional_rnn/bw/bw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
∞
0bi-lstm/bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd*bi-lstm/bidirectional_rnn/bw/bw/while/Less,bi-lstm/bidirectional_rnn/bw/bw/while/Less_1*
_output_shapes
: 
Д
.bi-lstm/bidirectional_rnn/bw/bw/while/LoopCondLoopCond0bi-lstm/bidirectional_rnn/bw/bw/while/LogicalAnd*
_output_shapes
: 
ц
,bi-lstm/bidirectional_rnn/bw/bw/while/SwitchSwitch+bi-lstm/bidirectional_rnn/bw/bw/while/Merge.bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/bw/while/Merge
ь
.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_1Switch-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_1.bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/bw/while/Merge_1*
_output_shapes
: : 
ь
.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_2Switch-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_2.bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/bw/while/Merge_2*
_output_shapes
: : 
Ю
.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_3Switch-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_3.bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/bw/while/Merge_3*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ю
.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_4Switch-bi-lstm/bidirectional_rnn/bw/bw/while/Merge_4.bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/bw/while/Merge_4*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Л
.bi-lstm/bidirectional_rnn/bw/bw/while/IdentityIdentity.bi-lstm/bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 
П
0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_1Identity0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_1:1*
T0*
_output_shapes
: 
П
0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_2Identity0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_2:1*
T0*
_output_shapes
: 
†
0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_3Identity0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_3:1*'
_output_shapes
:€€€€€€€€€@*
T0
†
0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_4Identity0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_4:1*
T0*'
_output_shapes
:€€€€€€€€€@
Ю
+bi-lstm/bidirectional_rnn/bw/bw/while/add/yConst/^bi-lstm/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ѓ
)bi-lstm/bidirectional_rnn/bw/bw/while/addAdd.bi-lstm/bidirectional_rnn/bw/bw/while/Identity+bi-lstm/bidirectional_rnn/bw/bw/while/add/y*
T0*
_output_shapes
: 
µ
7bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV3=bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_1?bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*(
_output_shapes
:€€€€€€€€€А
Н
=bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter-bi-lstm/bidirectional_rnn/bw/bw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
Є
?bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterZbi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
б
Nbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"ј      *@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel
”
Lbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *Мнљ*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
”
Lbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *Мн=*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
 
Vbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformNbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
јА*

seed *
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel
“
Lbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/subSubLbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxLbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
_output_shapes
: 
ж
Lbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulMulVbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformLbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
јА
Ў
Hbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniformAddLbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulLbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
јА*
T0
з
-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel
VariableV2*
shape:
јА*
dtype0* 
_output_shapes
:
јА*
shared_name *@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
	container 
Ќ
4bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/AssignAssign-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelHbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
јА*
use_locking(
Ш
2bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/readIdentity-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
T0* 
_output_shapes
:
јА
Ў
Mbi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
dtype0*
_output_shapes
:
»
Cbi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/ConstConst*
valueB
 *    *>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
dtype0*
_output_shapes
: 
—
=bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zerosFillMbi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/shape_as_tensorCbi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
_output_shapes	
:А
ў
+bi-lstm/bidirectional_rnn/bw/lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
	container *
shape:А
Ј
2bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/AssignAssign+bi-lstm/bidirectional_rnn/bw/lstm_cell/bias=bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
П
0bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/readIdentity+bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
_output_shapes	
:А*
T0
Ѓ
;bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axisConst/^bi-lstm/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
≤
6bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/concatConcatV27bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV30bi-lstm/bidirectional_rnn/bw/bw/while/Identity_4;bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis*
T0*
N*(
_output_shapes
:€€€€€€€€€ј*

Tidx0
П
6bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulMatMul6bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/concat<bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
Ч
<bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/EnterEnter2bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
јА*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
Г
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAddBiasAdd6bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul=bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter*(
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC
С
=bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/EnterEnter0bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
®
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/ConstConst/^bi-lstm/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
≤
?bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimConst/^bi-lstm/bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
value	B :*
dtype0
і
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/splitSplit?bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd*
T0*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split
Ђ
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add/yConst/^bi-lstm/bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
№
3bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/addAdd7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:25bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add/y*'
_output_shapes
:€€€€€€€€€@*
T0
©
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/SigmoidSigmoid3bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add*
T0*'
_output_shapes
:€€€€€€€€€@
„
3bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mulMul7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_3*
T0*'
_output_shapes
:€€€€€€€€€@
≠
9bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1Sigmoid5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split*'
_output_shapes
:€€€€€€€€€@*
T0
І
4bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/TanhTanh7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:1*'
_output_shapes
:€€€€€€€€€@*
T0
я
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1Mul9bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_14bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh*
T0*'
_output_shapes
:€€€€€€€€€@
Џ
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add_1Add3bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1*
T0*'
_output_shapes
:€€€€€€€€€@
ѓ
9bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2Sigmoid7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€@
І
6bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1Tanh5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add_1*'
_output_shapes
:€€€€€€€€€@*
T0
б
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2Mul9bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_26bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1*'
_output_shapes
:€€€€€€€€€@*
T0
№
2bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqualGreaterEqual0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_18bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
П
8bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual/EnterEnter+bi-lstm/bidirectional_rnn/bw/bw/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:€€€€€€€€€*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
—
,bi-lstm/bidirectional_rnn/bw/bw/while/SelectSelect2bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual2bi-lstm/bidirectional_rnn/bw/bw/while/Select/Enter5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*'
_output_shapes
:€€€€€€€€€@
—
2bi-lstm/bidirectional_rnn/bw/bw/while/Select/EnterEnter%bi-lstm/bidirectional_rnn/bw/bw/zeros*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*'
_output_shapes
:€€€€€€€€€@*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
ё
4bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual_1GreaterEqual0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_18bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
”
.bi-lstm/bidirectional_rnn/bw/bw/while/Select_1Select4bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual_10bi-lstm/bidirectional_rnn/bw/bw/while/Identity_35bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add_1*'
_output_shapes
:€€€€€€€€€@*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add_1
ё
4bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual_2GreaterEqual0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_18bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
”
.bi-lstm/bidirectional_rnn/bw/bw/while/Select_2Select4bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual_20bi-lstm/bidirectional_rnn/bw/bw/while/Identity_45bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*'
_output_shapes
:€€€€€€€€€@
≠
Ibi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Obi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_1,bi-lstm/bidirectional_rnn/bw/bw/while/Select0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_2*
_output_shapes
: *
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2
з
Obi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter+bi-lstm/bidirectional_rnn/bw/bw/TensorArray*
T0*H
_class>
<:loc:@bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*C

frame_name53bi-lstm/bidirectional_rnn/bw/bw/while/while_context
†
-bi-lstm/bidirectional_rnn/bw/bw/while/add_1/yConst/^bi-lstm/bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
value	B :*
dtype0
і
+bi-lstm/bidirectional_rnn/bw/bw/while/add_1Add0bi-lstm/bidirectional_rnn/bw/bw/while/Identity_1-bi-lstm/bidirectional_rnn/bw/bw/while/add_1/y*
T0*
_output_shapes
: 
Р
3bi-lstm/bidirectional_rnn/bw/bw/while/NextIterationNextIteration)bi-lstm/bidirectional_rnn/bw/bw/while/add*
_output_shapes
: *
T0
Ф
5bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration+bi-lstm/bidirectional_rnn/bw/bw/while/add_1*
T0*
_output_shapes
: 
≤
5bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationIbi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
®
5bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_3NextIteration.bi-lstm/bidirectional_rnn/bw/bw/while/Select_1*'
_output_shapes
:€€€€€€€€€@*
T0
®
5bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_4NextIteration.bi-lstm/bidirectional_rnn/bw/bw/while/Select_2*
T0*'
_output_shapes
:€€€€€€€€€@
Б
*bi-lstm/bidirectional_rnn/bw/bw/while/ExitExit,bi-lstm/bidirectional_rnn/bw/bw/while/Switch*
T0*
_output_shapes
: 
Е
,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_1Exit.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_1*
_output_shapes
: *
T0
Е
,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_2Exit.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_2*
T0*
_output_shapes
: 
Ц
,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_3Exit.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_3*
T0*'
_output_shapes
:€€€€€€€€€@
Ц
,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_4Exit.bi-lstm/bidirectional_rnn/bw/bw/while/Switch_4*
T0*'
_output_shapes
:€€€€€€€€€@
К
Bbi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3+bi-lstm/bidirectional_rnn/bw/bw/TensorArray,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_2*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Њ
<bi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
Њ
<bi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
р
6bi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/rangeRange<bi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/range/startBbi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3<bi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*

Tidx0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:€€€€€€€€€
Ч
Dbi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3+bi-lstm/bidirectional_rnn/bw/bw/TensorArray6bi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/range,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_2*$
element_shape:€€€€€€€€€@*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/bw/TensorArray*
dtype0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
q
'bi-lstm/bidirectional_rnn/bw/bw/Const_4Const*
dtype0*
_output_shapes
:*
valueB:@
h
&bi-lstm/bidirectional_rnn/bw/bw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
o
-bi-lstm/bidirectional_rnn/bw/bw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
o
-bi-lstm/bidirectional_rnn/bw/bw/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
ё
'bi-lstm/bidirectional_rnn/bw/bw/range_1Range-bi-lstm/bidirectional_rnn/bw/bw/range_1/start&bi-lstm/bidirectional_rnn/bw/bw/Rank_1-bi-lstm/bidirectional_rnn/bw/bw/range_1/delta*

Tidx0*
_output_shapes
:
В
1bi-lstm/bidirectional_rnn/bw/bw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
o
-bi-lstm/bidirectional_rnn/bw/bw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
(bi-lstm/bidirectional_rnn/bw/bw/concat_2ConcatV21bi-lstm/bidirectional_rnn/bw/bw/concat_2/values_0'bi-lstm/bidirectional_rnn/bw/bw/range_1-bi-lstm/bidirectional_rnn/bw/bw/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
ф
+bi-lstm/bidirectional_rnn/bw/bw/transpose_1	TransposeDbi-lstm/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3(bi-lstm/bidirectional_rnn/bw/bw/concat_2*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0
≈
bi-lstm/ReverseSequenceReverseSequence+bi-lstm/bidirectional_rnn/bw/bw/transpose_1l*
	batch_dim *
T0*
seq_dim*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*

Tlen0	
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Я
concatConcatV2,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_3,bi-lstm/bidirectional_rnn/fw/fw/while/Exit_4,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_3,bi-lstm/bidirectional_rnn/bw/bw/while/Exit_4concat/axis*(
_output_shapes
:€€€€€€€€€А*

Tidx0*
T0*
N
^
Reshape/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
j
ReshapeReshapeconcatReshape/shape*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0
µ
8fully_connected/weights/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"   @   **
_class 
loc:@fully_connected/weights*
dtype0
І
6fully_connected/weights/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *М7Њ**
_class 
loc:@fully_connected/weights*
dtype0
І
6fully_connected/weights/Initializer/random_uniform/maxConst*
valueB
 *М7>**
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
: 
З
@fully_connected/weights/Initializer/random_uniform/RandomUniformRandomUniform8fully_connected/weights/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А@*

seed *
T0**
_class 
loc:@fully_connected/weights*
seed2 
ъ
6fully_connected/weights/Initializer/random_uniform/subSub6fully_connected/weights/Initializer/random_uniform/max6fully_connected/weights/Initializer/random_uniform/min**
_class 
loc:@fully_connected/weights*
_output_shapes
: *
T0
Н
6fully_connected/weights/Initializer/random_uniform/mulMul@fully_connected/weights/Initializer/random_uniform/RandomUniform6fully_connected/weights/Initializer/random_uniform/sub*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	А@
€
2fully_connected/weights/Initializer/random_uniformAdd6fully_connected/weights/Initializer/random_uniform/mul6fully_connected/weights/Initializer/random_uniform/min*
_output_shapes
:	А@*
T0**
_class 
loc:@fully_connected/weights
є
fully_connected/weights
VariableV2*
shape:	А@*
dtype0*
_output_shapes
:	А@*
shared_name **
_class 
loc:@fully_connected/weights*
	container 
ф
fully_connected/weights/AssignAssignfully_connected/weights2fully_connected/weights/Initializer/random_uniform*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	А@*
use_locking(
Ч
fully_connected/weights/readIdentityfully_connected/weights*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	А@
®
7fully_connected/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o:**
_class 
loc:@fully_connected/weights*
dtype0*
_output_shapes
: 
≠
8fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Lossfully_connected/weights/read*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
: 
ш
1fully_connected/kernel/Regularizer/l2_regularizerMul7fully_connected/kernel/Regularizer/l2_regularizer/scale8fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
: 
Я
fully_connected/MatMulMatMulReshapefully_connected/weights/read*
T0*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b( 
А
'fully_connected/BatchNorm/Reshape/shapeConst*%
valueB"€€€€      @   *
dtype0*
_output_shapes
:
µ
!fully_connected/BatchNorm/ReshapeReshapefully_connected/MatMul'fully_connected/BatchNorm/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€@
љ
@fully_connected/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*1
_class'
%#loc:@fully_connected/BatchNorm/beta*
dtype0*
_output_shapes
:
Ѓ
6fully_connected/BatchNorm/beta/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *1
_class'
%#loc:@fully_connected/BatchNorm/beta*
dtype0
Ь
0fully_connected/BatchNorm/beta/Initializer/zerosFill@fully_connected/BatchNorm/beta/Initializer/zeros/shape_as_tensor6fully_connected/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*1
_class'
%#loc:@fully_connected/BatchNorm/beta*
_output_shapes
:@
љ
fully_connected/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *1
_class'
%#loc:@fully_connected/BatchNorm/beta*
	container 
В
%fully_connected/BatchNorm/beta/AssignAssignfully_connected/BatchNorm/beta0fully_connected/BatchNorm/beta/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*1
_class'
%#loc:@fully_connected/BatchNorm/beta*
validate_shape(
І
#fully_connected/BatchNorm/beta/readIdentityfully_connected/BatchNorm/beta*
T0*1
_class'
%#loc:@fully_connected/BatchNorm/beta*
_output_shapes
:@
l
fully_connected/BatchNorm/ConstConst*
valueB@*  А?*
dtype0*
_output_shapes
:@
Ћ
Gfully_connected/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
dtype0*
_output_shapes
:
Љ
=fully_connected/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
dtype0*
_output_shapes
: 
Є
7fully_connected/BatchNorm/moving_mean/Initializer/zerosFillGfully_connected/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor=fully_connected/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
_output_shapes
:@
Ћ
%fully_connected/BatchNorm/moving_mean
VariableV2*
shared_name *8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ю
,fully_connected/BatchNorm/moving_mean/AssignAssign%fully_connected/BatchNorm/moving_mean7fully_connected/BatchNorm/moving_mean/Initializer/zeros*8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Љ
*fully_connected/BatchNorm/moving_mean/readIdentity%fully_connected/BatchNorm/moving_mean*8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
_output_shapes
:@*
T0
“
Jfully_connected/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance*
dtype0*
_output_shapes
:
√
@fully_connected/BatchNorm/moving_variance/Initializer/ones/ConstConst*
_output_shapes
: *
valueB
 *  А?*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance*
dtype0
≈
:fully_connected/BatchNorm/moving_variance/Initializer/onesFillJfully_connected/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor@fully_connected/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance*
_output_shapes
:@
”
)fully_connected/BatchNorm/moving_variance
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance
≠
0fully_connected/BatchNorm/moving_variance/AssignAssign)fully_connected/BatchNorm/moving_variance:fully_connected/BatchNorm/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance
»
.fully_connected/BatchNorm/moving_variance/readIdentity)fully_connected/BatchNorm/moving_variance*
_output_shapes
:@*
T0*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance
Н
(fully_connected/BatchNorm/FusedBatchNormFusedBatchNorm!fully_connected/BatchNorm/Reshapefully_connected/BatchNorm/Const#fully_connected/BatchNorm/beta/read*fully_connected/BatchNorm/moving_mean/read.fully_connected/BatchNorm/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*G
_output_shapes5
3:€€€€€€€€€@:@:@:@:@*
is_training( 
u
fully_connected/BatchNorm/ShapeShapefully_connected/MatMul*
T0*
out_type0*
_output_shapes
:
є
#fully_connected/BatchNorm/Reshape_1Reshape(fully_connected/BatchNorm/FusedBatchNormfully_connected/BatchNorm/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€@
s
fully_connected/ReluRelu#fully_connected/BatchNorm/Reshape_1*'
_output_shapes
:€€€€€€€€€@*
T0
d
Dropout/IdentityIdentityfully_connected/Relu*
T0*'
_output_shapes
:€€€€€€€€€@
є
:fully_connected_1/weights/Initializer/random_uniform/shapeConst*
valueB"      *,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
:
Ђ
8fully_connected_1/weights/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *Ц(Њ*,
_class"
 loc:@fully_connected_1/weights*
dtype0
Ђ
8fully_connected_1/weights/Initializer/random_uniform/maxConst*
valueB
 *Ц(>*,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
: 
Н
Bfully_connected_1/weights/Initializer/random_uniform/RandomUniformRandomUniform:fully_connected_1/weights/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А*

seed *
T0*,
_class"
 loc:@fully_connected_1/weights*
seed2 
В
8fully_connected_1/weights/Initializer/random_uniform/subSub8fully_connected_1/weights/Initializer/random_uniform/max8fully_connected_1/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
: 
Х
8fully_connected_1/weights/Initializer/random_uniform/mulMulBfully_connected_1/weights/Initializer/random_uniform/RandomUniform8fully_connected_1/weights/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
:	А
З
4fully_connected_1/weights/Initializer/random_uniformAdd8fully_connected_1/weights/Initializer/random_uniform/mul8fully_connected_1/weights/Initializer/random_uniform/min*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
:	А
љ
fully_connected_1/weights
VariableV2*
	container *
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name *,
_class"
 loc:@fully_connected_1/weights
ь
 fully_connected_1/weights/AssignAssignfully_connected_1/weights4fully_connected_1/weights/Initializer/random_uniform*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes
:	А
Э
fully_connected_1/weights/readIdentityfully_connected_1/weights*
_output_shapes
:	А*
T0*,
_class"
 loc:@fully_connected_1/weights
ђ
9fully_connected_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *o:*,
_class"
 loc:@fully_connected_1/weights*
dtype0*
_output_shapes
: 
≥
:fully_connected_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossfully_connected_1/weights/read*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
: 
А
3fully_connected_1/kernel/Regularizer/l2_regularizerMul9fully_connected_1/kernel/Regularizer/l2_regularizer/scale:fully_connected_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*,
_class"
 loc:@fully_connected_1/weights*
_output_shapes
: 
£
fully_connected_1/MatMulMatMulReshapefully_connected_1/weights/read*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
В
)fully_connected_1/BatchNorm/Reshape/shapeConst*
_output_shapes
:*%
valueB"€€€€         *
dtype0
ї
#fully_connected_1/BatchNorm/ReshapeReshapefully_connected_1/MatMul)fully_connected_1/BatchNorm/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€
Ѕ
Bfully_connected_1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
dtype0*
_output_shapes
:
≤
8fully_connected_1/BatchNorm/beta/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
dtype0
§
2fully_connected_1/BatchNorm/beta/Initializer/zerosFillBfully_connected_1/BatchNorm/beta/Initializer/zeros/shape_as_tensor8fully_connected_1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
_output_shapes
:
Ѕ
 fully_connected_1/BatchNorm/beta
VariableV2*
shared_name *3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
	container *
shape:*
dtype0*
_output_shapes
:
К
'fully_connected_1/BatchNorm/beta/AssignAssign fully_connected_1/BatchNorm/beta2fully_connected_1/BatchNorm/beta/Initializer/zeros*3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
≠
%fully_connected_1/BatchNorm/beta/readIdentity fully_connected_1/BatchNorm/beta*
T0*3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
_output_shapes
:
n
!fully_connected_1/BatchNorm/ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
ѕ
Ifully_connected_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean*
dtype0*
_output_shapes
:
ј
?fully_connected_1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean
ј
9fully_connected_1/BatchNorm/moving_mean/Initializer/zerosFillIfully_connected_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor?fully_connected_1/BatchNorm/moving_mean/Initializer/zeros/Const*
_output_shapes
:*
T0*

index_type0*:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean
ѕ
'fully_connected_1/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean*
	container *
shape:
¶
.fully_connected_1/BatchNorm/moving_mean/AssignAssign'fully_connected_1/BatchNorm/moving_mean9fully_connected_1/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:
¬
,fully_connected_1/BatchNorm/moving_mean/readIdentity'fully_connected_1/BatchNorm/moving_mean*
T0*:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean*
_output_shapes
:
÷
Lfully_connected_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
dtype0*
_output_shapes
:
«
Bfully_connected_1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  А?*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
dtype0*
_output_shapes
: 
Ќ
<fully_connected_1/BatchNorm/moving_variance/Initializer/onesFillLfully_connected_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorBfully_connected_1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
_output_shapes
:
„
+fully_connected_1/BatchNorm/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shared_name *>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
	container *
shape:
µ
2fully_connected_1/BatchNorm/moving_variance/AssignAssign+fully_connected_1/BatchNorm/moving_variance<fully_connected_1/BatchNorm/moving_variance/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
validate_shape(
ќ
0fully_connected_1/BatchNorm/moving_variance/readIdentity+fully_connected_1/BatchNorm/moving_variance*
T0*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
_output_shapes
:
Щ
*fully_connected_1/BatchNorm/FusedBatchNormFusedBatchNorm#fully_connected_1/BatchNorm/Reshape!fully_connected_1/BatchNorm/Const%fully_connected_1/BatchNorm/beta/read,fully_connected_1/BatchNorm/moving_mean/read0fully_connected_1/BatchNorm/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*G
_output_shapes5
3:€€€€€€€€€::::*
is_training( 
y
!fully_connected_1/BatchNorm/ShapeShapefully_connected_1/MatMul*
T0*
out_type0*
_output_shapes
:
њ
%fully_connected_1/BatchNorm/Reshape_1Reshape*fully_connected_1/BatchNorm/FusedBatchNorm!fully_connected_1/BatchNorm/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
r
output/SoftmaxSoftmax%fully_connected_1/BatchNorm/Reshape_1*
T0*'
_output_shapes
:€€€€€€€€€
a
output/scores/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Р
output/scoresMaxoutput/Softmaxoutput/scores/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
^
output/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
output/predictionsArgMax%fully_connected_1/BatchNorm/Reshape_1output/predictions/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
?
init_all_tablesNoOp&^string_to_index/hash_table/table_init
O
scoresIdentityoutput/scores*
T0*#
_output_shapes
:€€€€€€€€€
S
classIdentityoutput/predictions*
T0	*#
_output_shapes
:€€€€€€€€€
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_1c6d415cb7a54eefbb980e6f6ffacd93/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
я
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Г
valueщBцB+bi-lstm/bidirectional_rnn/bw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelB+bi-lstm/bidirectional_rnn/fw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelB	embeddingBfully_connected/BatchNorm/betaB%fully_connected/BatchNorm/moving_meanB)fully_connected/BatchNorm/moving_varianceBfully_connected/weightsB fully_connected_1/BatchNorm/betaB'fully_connected_1/BatchNorm/moving_meanB+fully_connected_1/BatchNorm/moving_varianceBfully_connected_1/weightsBglobal_step
О
save/SaveV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ю
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices+bi-lstm/bidirectional_rnn/bw/lstm_cell/bias-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel+bi-lstm/bidirectional_rnn/fw/lstm_cell/bias-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel	embeddingfully_connected/BatchNorm/beta%fully_connected/BatchNorm/moving_mean)fully_connected/BatchNorm/moving_variancefully_connected/weights fully_connected_1/BatchNorm/beta'fully_connected_1/BatchNorm/moving_mean+fully_connected_1/BatchNorm/moving_variancefully_connected_1/weightsglobal_step"/device:CPU:0*
dtypes
2	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
в
save/RestoreV2/tensor_namesConst"/device:CPU:0*Г
valueщBцB+bi-lstm/bidirectional_rnn/bw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelB+bi-lstm/bidirectional_rnn/fw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelB	embeddingBfully_connected/BatchNorm/betaB%fully_connected/BatchNorm/moving_meanB)fully_connected/BatchNorm/moving_varianceBfully_connected/weightsB fully_connected_1/BatchNorm/betaB'fully_connected_1/BatchNorm/moving_meanB+fully_connected_1/BatchNorm/moving_varianceBfully_connected_1/weightsBglobal_step*
dtype0*
_output_shapes
:
С
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
а
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2	
б
save/AssignAssign+bi-lstm/bidirectional_rnn/bw/lstm_cell/biassave/RestoreV2*
use_locking(*
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
о
save/Assign_1Assign-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelsave/RestoreV2:1* 
_output_shapes
:
јА*
use_locking(*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(
е
save/Assign_2Assign+bi-lstm/bidirectional_rnn/fw/lstm_cell/biassave/RestoreV2:2*
use_locking(*
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
о
save/Assign_3Assign-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelsave/RestoreV2:3*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
јА*
use_locking(
¶
save/Assign_4Assign	embeddingsave/RestoreV2:4*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
¶А*
use_locking(*
T0
 
save/Assign_5Assignfully_connected/BatchNorm/betasave/RestoreV2:5*
use_locking(*
T0*1
_class'
%#loc:@fully_connected/BatchNorm/beta*
validate_shape(*
_output_shapes
:@
Ў
save/Assign_6Assign%fully_connected/BatchNorm/moving_meansave/RestoreV2:6*
use_locking(*
T0*8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:@
а
save/Assign_7Assign)fully_connected/BatchNorm/moving_variancesave/RestoreV2:7*
use_locking(*
T0*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:@
Ѕ
save/Assign_8Assignfully_connected/weightssave/RestoreV2:8*
_output_shapes
:	А@*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(
ќ
save/Assign_9Assign fully_connected_1/BatchNorm/betasave/RestoreV2:9*
use_locking(*
T0*3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
validate_shape(*
_output_shapes
:
ё
save/Assign_10Assign'fully_connected_1/BatchNorm/moving_meansave/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean
ж
save/Assign_11Assign+fully_connected_1/BatchNorm/moving_variancesave/RestoreV2:11*
use_locking(*
T0*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:
«
save/Assign_12Assignfully_connected_1/weightssave/RestoreV2:12*
use_locking(*
T0*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes
:	А
Ґ
save/Assign_13Assignglobal_stepsave/RestoreV2:13*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
ь
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13
-
save/restore_allNoOp^save/restore_shard

initNoOp
A
init_all_tables_1NoOp&^string_to_index/hash_table/table_init

init_1NoOp
6

group_depsNoOp^init^init_all_tables_1^init_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_5a8292d1f4e44953b96fa2f4d972a7fb/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
б
save_1/SaveV2/tensor_namesConst"/device:CPU:0*Г
valueщBцB+bi-lstm/bidirectional_rnn/bw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelB+bi-lstm/bidirectional_rnn/fw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelB	embeddingBfully_connected/BatchNorm/betaB%fully_connected/BatchNorm/moving_meanB)fully_connected/BatchNorm/moving_varianceBfully_connected/weightsB fully_connected_1/BatchNorm/betaB'fully_connected_1/BatchNorm/moving_meanB+fully_connected_1/BatchNorm/moving_varianceBfully_connected_1/weightsBglobal_step*
dtype0*
_output_shapes
:
Р
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ж
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices+bi-lstm/bidirectional_rnn/bw/lstm_cell/bias-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel+bi-lstm/bidirectional_rnn/fw/lstm_cell/bias-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel	embeddingfully_connected/BatchNorm/beta%fully_connected/BatchNorm/moving_mean)fully_connected/BatchNorm/moving_variancefully_connected/weights fully_connected_1/BatchNorm/beta'fully_connected_1/BatchNorm/moving_mean+fully_connected_1/BatchNorm/moving_variancefully_connected_1/weightsglobal_step"/device:CPU:0*
dtypes
2	
®
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
≤
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
д
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*Г
valueщBцB+bi-lstm/bidirectional_rnn/bw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelB+bi-lstm/bidirectional_rnn/fw/lstm_cell/biasB-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelB	embeddingBfully_connected/BatchNorm/betaB%fully_connected/BatchNorm/moving_meanB)fully_connected/BatchNorm/moving_varianceBfully_connected/weightsB fully_connected_1/BatchNorm/betaB'fully_connected_1/BatchNorm/moving_meanB+fully_connected_1/BatchNorm/moving_varianceBfully_connected_1/weightsBglobal_step*
dtype0*
_output_shapes
:
У
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
и
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2	
е
save_1/AssignAssign+bi-lstm/bidirectional_rnn/bw/lstm_cell/biassave_1/RestoreV2*
use_locking(*
T0*>
_class4
20loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
т
save_1/Assign_1Assign-bi-lstm/bidirectional_rnn/bw/lstm_cell/kernelsave_1/RestoreV2:1*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
јА*
use_locking(
й
save_1/Assign_2Assign+bi-lstm/bidirectional_rnn/fw/lstm_cell/biassave_1/RestoreV2:2*>
_class4
20loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
т
save_1/Assign_3Assign-bi-lstm/bidirectional_rnn/fw/lstm_cell/kernelsave_1/RestoreV2:3*
use_locking(*
T0*@
_class6
42loc:@bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
јА
™
save_1/Assign_4Assign	embeddingsave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@embedding*
validate_shape(* 
_output_shapes
:
¶А
ќ
save_1/Assign_5Assignfully_connected/BatchNorm/betasave_1/RestoreV2:5*
use_locking(*
T0*1
_class'
%#loc:@fully_connected/BatchNorm/beta*
validate_shape(*
_output_shapes
:@
№
save_1/Assign_6Assign%fully_connected/BatchNorm/moving_meansave_1/RestoreV2:6*
use_locking(*
T0*8
_class.
,*loc:@fully_connected/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:@
д
save_1/Assign_7Assign)fully_connected/BatchNorm/moving_variancesave_1/RestoreV2:7*
use_locking(*
T0*<
_class2
0.loc:@fully_connected/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:@
≈
save_1/Assign_8Assignfully_connected/weightssave_1/RestoreV2:8*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	А@
“
save_1/Assign_9Assign fully_connected_1/BatchNorm/betasave_1/RestoreV2:9*
use_locking(*
T0*3
_class)
'%loc:@fully_connected_1/BatchNorm/beta*
validate_shape(*
_output_shapes
:
в
save_1/Assign_10Assign'fully_connected_1/BatchNorm/moving_meansave_1/RestoreV2:10*
use_locking(*
T0*:
_class0
.,loc:@fully_connected_1/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:
к
save_1/Assign_11Assign+fully_connected_1/BatchNorm/moving_variancesave_1/RestoreV2:11*
use_locking(*
T0*>
_class4
20loc:@fully_connected_1/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:
Ћ
save_1/Assign_12Assignfully_connected_1/weightssave_1/RestoreV2:12*,
_class"
 loc:@fully_connected_1/weights*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0
¶
save_1/Assign_13Assignglobal_stepsave_1/RestoreV2:13*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
Ъ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
global_step

global_step:0"О
saved_model_assetsx*v
t
+type.googleapis.com/tensorflow.AssetFileDefE
8
6string_to_index/hash_table/table_init/asset_filepath:0	vocab.txt"З
regularization_lossesn
l
3fully_connected/kernel/Regularizer/l2_regularizer:0
5fully_connected_1/kernel/Regularizer/l2_regularizer:0"„
model_variables√ј
С
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:0
§
 fully_connected/BatchNorm/beta:0%fully_connected/BatchNorm/beta/Assign%fully_connected/BatchNorm/beta/read:022fully_connected/BatchNorm/beta/Initializer/zeros:0
ј
'fully_connected/BatchNorm/moving_mean:0,fully_connected/BatchNorm/moving_mean/Assign,fully_connected/BatchNorm/moving_mean/read:029fully_connected/BatchNorm/moving_mean/Initializer/zeros:0
ѕ
+fully_connected/BatchNorm/moving_variance:00fully_connected/BatchNorm/moving_variance/Assign0fully_connected/BatchNorm/moving_variance/read:02<fully_connected/BatchNorm/moving_variance/Initializer/ones:0
Щ
fully_connected_1/weights:0 fully_connected_1/weights/Assign fully_connected_1/weights/read:026fully_connected_1/weights/Initializer/random_uniform:0
ђ
"fully_connected_1/BatchNorm/beta:0'fully_connected_1/BatchNorm/beta/Assign'fully_connected_1/BatchNorm/beta/read:024fully_connected_1/BatchNorm/beta/Initializer/zeros:0
»
)fully_connected_1/BatchNorm/moving_mean:0.fully_connected_1/BatchNorm/moving_mean/Assign.fully_connected_1/BatchNorm/moving_mean/read:02;fully_connected_1/BatchNorm/moving_mean/Initializer/zeros:0
„
-fully_connected_1/BatchNorm/moving_variance:02fully_connected_1/BatchNorm/moving_variance/Assign2fully_connected_1/BatchNorm/moving_variance/read:02>fully_connected_1/BatchNorm/moving_variance/Initializer/ones:0"К
trainable_variablesтп
Y
embedding:0embedding/Assignembedding/read:02&embedding/Initializer/random_uniform:0
й
/bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel:04bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Assign4bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/read:02Jbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:0
Ў
-bi-lstm/bidirectional_rnn/fw/lstm_cell/bias:02bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Assign2bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/read:02?bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:0
й
/bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel:04bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Assign4bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/read:02Jbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:0
Ў
-bi-lstm/bidirectional_rnn/bw/lstm_cell/bias:02bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Assign2bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/read:02?bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:0
С
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:0
§
 fully_connected/BatchNorm/beta:0%fully_connected/BatchNorm/beta/Assign%fully_connected/BatchNorm/beta/read:022fully_connected/BatchNorm/beta/Initializer/zeros:0
Щ
fully_connected_1/weights:0 fully_connected_1/weights/Assign fully_connected_1/weights/read:026fully_connected_1/weights/Initializer/random_uniform:0
ђ
"fully_connected_1/BatchNorm/beta:0'fully_connected_1/BatchNorm/beta/Assign'fully_connected_1/BatchNorm/beta/read:024fully_connected_1/BatchNorm/beta/Initializer/zeros:0"Лl
while_contextщkцk
ш5
3bi-lstm/bidirectional_rnn/fw/fw/while/while_context *0bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond:02-bi-lstm/bidirectional_rnn/fw/fw/while/Merge:0:0bi-lstm/bidirectional_rnn/fw/fw/while/Identity:0B,bi-lstm/bidirectional_rnn/fw/fw/while/Exit:0B.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_1:0B.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_2:0B.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_3:0B.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_4:0JХ0
-bi-lstm/bidirectional_rnn/fw/fw/CheckSeqLen:0
)bi-lstm/bidirectional_rnn/fw/fw/Minimum:0
-bi-lstm/bidirectional_rnn/fw/fw/TensorArray:0
\bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
/bi-lstm/bidirectional_rnn/fw/fw/TensorArray_1:0
1bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1:0
-bi-lstm/bidirectional_rnn/fw/fw/while/Enter:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_1:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_2:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_3:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_4:0
,bi-lstm/bidirectional_rnn/fw/fw/while/Exit:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_1:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_2:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_3:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Exit_4:0
:bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0
4bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual:0
6bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual_1:0
6bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual_2:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Identity:0
2bi-lstm/bidirectional_rnn/fw/fw/while/Identity_1:0
2bi-lstm/bidirectional_rnn/fw/fw/while/Identity_2:0
2bi-lstm/bidirectional_rnn/fw/fw/while/Identity_3:0
2bi-lstm/bidirectional_rnn/fw/fw/while/Identity_4:0
2bi-lstm/bidirectional_rnn/fw/fw/while/Less/Enter:0
,bi-lstm/bidirectional_rnn/fw/fw/while/Less:0
4bi-lstm/bidirectional_rnn/fw/fw/while/Less_1/Enter:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Less_1:0
2bi-lstm/bidirectional_rnn/fw/fw/while/LogicalAnd:0
0bi-lstm/bidirectional_rnn/fw/fw/while/LoopCond:0
-bi-lstm/bidirectional_rnn/fw/fw/while/Merge:0
-bi-lstm/bidirectional_rnn/fw/fw/while/Merge:1
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_1:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_1:1
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_2:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_2:1
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_3:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_3:1
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_4:0
/bi-lstm/bidirectional_rnn/fw/fw/while/Merge_4:1
5bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration:0
7bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_1:0
7bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_2:0
7bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_3:0
7bi-lstm/bidirectional_rnn/fw/fw/while/NextIteration_4:0
4bi-lstm/bidirectional_rnn/fw/fw/while/Select/Enter:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Select:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Select_1:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Select_2:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Switch:0
.bi-lstm/bidirectional_rnn/fw/fw/while/Switch:1
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_1:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_1:1
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_2:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_2:1
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_3:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_3:1
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_4:0
0bi-lstm/bidirectional_rnn/fw/fw/while/Switch_4:1
?bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
Abi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
9bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
Qbi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Kbi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
-bi-lstm/bidirectional_rnn/fw/fw/while/add/y:0
+bi-lstm/bidirectional_rnn/fw/fw/while/add:0
/bi-lstm/bidirectional_rnn/fw/fw/while/add_1/y:0
-bi-lstm/bidirectional_rnn/fw/fw/while/add_1:0
?bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0
9bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Const:0
>bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0
8bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul:0
9bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid:0
;bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1:0
;bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2:0
6bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh:0
8bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add/y:0
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/add_1:0
=bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis:0
8bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/concat:0
5bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2:0
Abi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:0
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:1
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:2
7bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/split:3
'bi-lstm/bidirectional_rnn/fw/fw/zeros:0
2bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/read:0
4bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/read:0k
-bi-lstm/bidirectional_rnn/fw/fw/CheckSeqLen:0:bi-lstm/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0r
/bi-lstm/bidirectional_rnn/fw/fw/TensorArray_1:0?bi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0g
1bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1:02bi-lstm/bidirectional_rnn/fw/fw/while/Less/Enter:0v
4bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/read:0>bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0u
2bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/read:0?bi-lstm/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0°
\bi-lstm/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0Abi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0В
-bi-lstm/bidirectional_rnn/fw/fw/TensorArray:0Qbi-lstm/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0a
)bi-lstm/bidirectional_rnn/fw/fw/Minimum:04bi-lstm/bidirectional_rnn/fw/fw/while/Less_1/Enter:0_
'bi-lstm/bidirectional_rnn/fw/fw/zeros:04bi-lstm/bidirectional_rnn/fw/fw/while/Select/Enter:0R-bi-lstm/bidirectional_rnn/fw/fw/while/Enter:0R/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_1:0R/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_2:0R/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_3:0R/bi-lstm/bidirectional_rnn/fw/fw/while/Enter_4:0Z1bi-lstm/bidirectional_rnn/fw/fw/strided_slice_1:0
ш5
3bi-lstm/bidirectional_rnn/bw/bw/while/while_context *0bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond:02-bi-lstm/bidirectional_rnn/bw/bw/while/Merge:0:0bi-lstm/bidirectional_rnn/bw/bw/while/Identity:0B,bi-lstm/bidirectional_rnn/bw/bw/while/Exit:0B.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_1:0B.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_2:0B.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_3:0B.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_4:0JХ0
-bi-lstm/bidirectional_rnn/bw/bw/CheckSeqLen:0
)bi-lstm/bidirectional_rnn/bw/bw/Minimum:0
-bi-lstm/bidirectional_rnn/bw/bw/TensorArray:0
\bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
/bi-lstm/bidirectional_rnn/bw/bw/TensorArray_1:0
1bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1:0
-bi-lstm/bidirectional_rnn/bw/bw/while/Enter:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_1:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_2:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_3:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_4:0
,bi-lstm/bidirectional_rnn/bw/bw/while/Exit:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_1:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_2:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_3:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Exit_4:0
:bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0
4bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual:0
6bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual_1:0
6bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual_2:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Identity:0
2bi-lstm/bidirectional_rnn/bw/bw/while/Identity_1:0
2bi-lstm/bidirectional_rnn/bw/bw/while/Identity_2:0
2bi-lstm/bidirectional_rnn/bw/bw/while/Identity_3:0
2bi-lstm/bidirectional_rnn/bw/bw/while/Identity_4:0
2bi-lstm/bidirectional_rnn/bw/bw/while/Less/Enter:0
,bi-lstm/bidirectional_rnn/bw/bw/while/Less:0
4bi-lstm/bidirectional_rnn/bw/bw/while/Less_1/Enter:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Less_1:0
2bi-lstm/bidirectional_rnn/bw/bw/while/LogicalAnd:0
0bi-lstm/bidirectional_rnn/bw/bw/while/LoopCond:0
-bi-lstm/bidirectional_rnn/bw/bw/while/Merge:0
-bi-lstm/bidirectional_rnn/bw/bw/while/Merge:1
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_1:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_1:1
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_2:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_2:1
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_3:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_3:1
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_4:0
/bi-lstm/bidirectional_rnn/bw/bw/while/Merge_4:1
5bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration:0
7bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_1:0
7bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_2:0
7bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_3:0
7bi-lstm/bidirectional_rnn/bw/bw/while/NextIteration_4:0
4bi-lstm/bidirectional_rnn/bw/bw/while/Select/Enter:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Select:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Select_1:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Select_2:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Switch:0
.bi-lstm/bidirectional_rnn/bw/bw/while/Switch:1
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_1:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_1:1
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_2:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_2:1
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_3:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_3:1
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_4:0
0bi-lstm/bidirectional_rnn/bw/bw/while/Switch_4:1
?bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
Abi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
9bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
Qbi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Kbi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
-bi-lstm/bidirectional_rnn/bw/bw/while/add/y:0
+bi-lstm/bidirectional_rnn/bw/bw/while/add:0
/bi-lstm/bidirectional_rnn/bw/bw/while/add_1/y:0
-bi-lstm/bidirectional_rnn/bw/bw/while/add_1:0
?bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0
9bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Const:0
>bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0
8bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul:0
9bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid:0
;bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1:0
;bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2:0
6bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh:0
8bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add/y:0
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/add_1:0
=bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis:0
8bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/concat:0
5bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2:0
Abi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:0
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:1
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:2
7bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/split:3
'bi-lstm/bidirectional_rnn/bw/bw/zeros:0
2bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/read:0
4bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/read:0_
'bi-lstm/bidirectional_rnn/bw/bw/zeros:04bi-lstm/bidirectional_rnn/bw/bw/while/Select/Enter:0k
-bi-lstm/bidirectional_rnn/bw/bw/CheckSeqLen:0:bi-lstm/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0g
1bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1:02bi-lstm/bidirectional_rnn/bw/bw/while/Less/Enter:0r
/bi-lstm/bidirectional_rnn/bw/bw/TensorArray_1:0?bi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0°
\bi-lstm/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0Abi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0v
4bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/read:0>bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0В
-bi-lstm/bidirectional_rnn/bw/bw/TensorArray:0Qbi-lstm/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0u
2bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/read:0?bi-lstm/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0a
)bi-lstm/bidirectional_rnn/bw/bw/Minimum:04bi-lstm/bidirectional_rnn/bw/bw/while/Less_1/Enter:0R-bi-lstm/bidirectional_rnn/bw/bw/while/Enter:0R/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_1:0R/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_2:0R/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_3:0R/bi-lstm/bidirectional_rnn/bw/bw/while/Enter_4:0Z1bi-lstm/bidirectional_rnn/bw/bw/strided_slice_1:0"Ф
	variablesЖГ
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
Y
embedding:0embedding/Assignembedding/read:02&embedding/Initializer/random_uniform:0
й
/bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel:04bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Assign4bi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/read:02Jbi-lstm/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:0
Ў
-bi-lstm/bidirectional_rnn/fw/lstm_cell/bias:02bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Assign2bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/read:02?bi-lstm/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:0
й
/bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel:04bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Assign4bi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/read:02Jbi-lstm/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:0
Ў
-bi-lstm/bidirectional_rnn/bw/lstm_cell/bias:02bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Assign2bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/read:02?bi-lstm/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:0
С
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:0
§
 fully_connected/BatchNorm/beta:0%fully_connected/BatchNorm/beta/Assign%fully_connected/BatchNorm/beta/read:022fully_connected/BatchNorm/beta/Initializer/zeros:0
ј
'fully_connected/BatchNorm/moving_mean:0,fully_connected/BatchNorm/moving_mean/Assign,fully_connected/BatchNorm/moving_mean/read:029fully_connected/BatchNorm/moving_mean/Initializer/zeros:0
ѕ
+fully_connected/BatchNorm/moving_variance:00fully_connected/BatchNorm/moving_variance/Assign0fully_connected/BatchNorm/moving_variance/read:02<fully_connected/BatchNorm/moving_variance/Initializer/ones:0
Щ
fully_connected_1/weights:0 fully_connected_1/weights/Assign fully_connected_1/weights/read:026fully_connected_1/weights/Initializer/random_uniform:0
ђ
"fully_connected_1/BatchNorm/beta:0'fully_connected_1/BatchNorm/beta/Assign'fully_connected_1/BatchNorm/beta/read:024fully_connected_1/BatchNorm/beta/Initializer/zeros:0
»
)fully_connected_1/BatchNorm/moving_mean:0.fully_connected_1/BatchNorm/moving_mean/Assign.fully_connected_1/BatchNorm/moving_mean/read:02;fully_connected_1/BatchNorm/moving_mean/Initializer/zeros:0
„
-fully_connected_1/BatchNorm/moving_variance:02fully_connected_1/BatchNorm/moving_variance/Assign2fully_connected_1/BatchNorm/moving_variance/read:02>fully_connected_1/BatchNorm/moving_variance/Initializer/ones:0" 
legacy_init_op


group_deps">
table_initializer)
'
%string_to_index/hash_table/table_init"M
asset_filepaths:
8
6string_to_index/hash_table/table_init/asset_filepath:0*џ
serving_default«

l
l:0	€€€€€€€€€

x_r
x_r:0€€€€€€€€€

x_l
x_l:0€€€€€€€€€%
scores
scores:0€€€€€€€€€#
class
class:0	€€€€€€€€€tensorflow/serving/predict*”
predict«

x_l
x_l:0€€€€€€€€€

l
l:0	€€€€€€€€€

x_r
x_r:0€€€€€€€€€%
scores
scores:0€€€€€€€€€#
class
class:0	€€€€€€€€€tensorflow/serving/predict