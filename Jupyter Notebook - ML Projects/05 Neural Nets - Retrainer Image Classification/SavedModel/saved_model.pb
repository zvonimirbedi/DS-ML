˝Ú
ˇ##
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

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
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
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
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:˙  ˙
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.0.02unknownů
f
XPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
labelsYPlaceholder*
shape:˙˙˙˙˙˙˙˙˙
*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

r
!out_layer1/truncated_normal/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
e
 out_layer1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"out_layer1/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
ľ
+out_layer1/truncated_normal/TruncatedNormalTruncatedNormal!out_layer1/truncated_normal/shape*
seedą˙ĺ)*
T0*
dtype0* 
_output_shapes
:
*
seed2*
˘
out_layer1/truncated_normal/mulMul+out_layer1/truncated_normal/TruncatedNormal"out_layer1/truncated_normal/stddev*
T0* 
_output_shapes
:


out_layer1/truncated_normalAddout_layer1/truncated_normal/mul out_layer1/truncated_normal/mean*
T0* 
_output_shapes
:


out_layer1/Weight
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
Ě
out_layer1/Weight/AssignAssignout_layer1/Weightout_layer1/truncated_normal*
use_locking(*
T0*$
_class
loc:@out_layer1/Weight*
validate_shape(* 
_output_shapes
:


out_layer1/Weight/readIdentityout_layer1/Weight*
T0*$
_class
loc:@out_layer1/Weight* 
_output_shapes
:

_
out_layer1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
}
out_layer1/Bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ś
out_layer1/Bias/AssignAssignout_layer1/Biasout_layer1/Const*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes	
:
{
out_layer1/Bias/readIdentityout_layer1/Bias*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes	
:

out_layer1/MatMulMatMulXout_layer1/Weight/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
s
out_layer1/addAddV2out_layer1/MatMulout_layer1/Bias/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
out_layer1/ReluReluout_layer1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
out_layer1/weights/tagConst*#
valueB Bout_layer1/weights*
dtype0*
_output_shapes
: 
w
out_layer1/weightsHistogramSummaryout_layer1/weights/tagout_layer1/Weight/read*
T0*
_output_shapes
: 
g
out_layer1/bias_1/tagConst*"
valueB Bout_layer1/bias_1*
dtype0*
_output_shapes
: 
s
out_layer1/bias_1HistogramSummaryout_layer1/bias_1/tagout_layer1/Bias/read*
T0*
_output_shapes
: 
X
out_layer_drop/rateConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
c
out_layer_drop/ShapeShapeout_layer1/Relu*
T0*
out_type0*
_output_shapes
:
f
!out_layer_drop/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!out_layer_drop/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ť
+out_layer_drop/random_uniform/RandomUniformRandomUniformout_layer_drop/Shape*

seed *
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 

!out_layer_drop/random_uniform/subSub!out_layer_drop/random_uniform/max!out_layer_drop/random_uniform/min*
T0*
_output_shapes
: 
Ť
!out_layer_drop/random_uniform/mulMul+out_layer_drop/random_uniform/RandomUniform!out_layer_drop/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

out_layer_drop/random_uniformAdd!out_layer_drop/random_uniform/mul!out_layer_drop/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
out_layer_drop/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
out_layer_drop/subSubout_layer_drop/sub/xout_layer_drop/rate*
T0*
_output_shapes
: 
]
out_layer_drop/truediv/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
out_layer_drop/truedivRealDivout_layer_drop/truediv/xout_layer_drop/sub*
T0*
_output_shapes
: 

out_layer_drop/GreaterEqualGreaterEqualout_layer_drop/random_uniformout_layer_drop/rate*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
out_layer_drop/mulMulout_layer1/Reluout_layer_drop/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

out_layer_drop/CastCastout_layer_drop/GreaterEqual*

SrcT0
*
Truncate( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
w
out_layer_drop/mul_1Mulout_layer_drop/mulout_layer_drop/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
!out_layer2/truncated_normal/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
e
 out_layer2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"out_layer2/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
´
+out_layer2/truncated_normal/TruncatedNormalTruncatedNormal!out_layer2/truncated_normal/shape*
seedą˙ĺ)*
T0*
dtype0*
_output_shapes
:	@*
seed2*
Ą
out_layer2/truncated_normal/mulMul+out_layer2/truncated_normal/TruncatedNormal"out_layer2/truncated_normal/stddev*
T0*
_output_shapes
:	@

out_layer2/truncated_normalAddout_layer2/truncated_normal/mul out_layer2/truncated_normal/mean*
T0*
_output_shapes
:	@

out_layer2/Weight
VariableV2*
shape:	@*
shared_name *
dtype0*
_output_shapes
:	@*
	container 
Ë
out_layer2/Weight/AssignAssignout_layer2/Weightout_layer2/truncated_normal*
use_locking(*
T0*$
_class
loc:@out_layer2/Weight*
validate_shape(*
_output_shapes
:	@

out_layer2/Weight/readIdentityout_layer2/Weight*
T0*$
_class
loc:@out_layer2/Weight*
_output_shapes
:	@
]
out_layer2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
{
out_layer2/Bias
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
ľ
out_layer2/Bias/AssignAssignout_layer2/Biasout_layer2/Const*
use_locking(*
T0*"
_class
loc:@out_layer2/Bias*
validate_shape(*
_output_shapes
:@
z
out_layer2/Bias/readIdentityout_layer2/Bias*
T0*"
_class
loc:@out_layer2/Bias*
_output_shapes
:@
Ą
out_layer2/MatMulMatMulout_layer_drop/mul_1out_layer2/Weight/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( 
r
out_layer2/addAddV2out_layer2/MatMulout_layer2/Bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Y
out_layer2/ReluReluout_layer2/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
i
out_layer2/weights/tagConst*#
valueB Bout_layer2/weights*
dtype0*
_output_shapes
: 
w
out_layer2/weightsHistogramSummaryout_layer2/weights/tagout_layer2/Weight/read*
T0*
_output_shapes
: 
g
out_layer2/bias_1/tagConst*"
valueB Bout_layer2/bias_1*
dtype0*
_output_shapes
: 
s
out_layer2/bias_1HistogramSummaryout_layer2/bias_1/tagout_layer2/Bias/read*
T0*
_output_shapes
: 
y
(output_out_layer3/truncated_normal/shapeConst*
valueB"@   
   *
dtype0*
_output_shapes
:
l
'output_out_layer3/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
)output_out_layer3/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Á
2output_out_layer3/truncated_normal/TruncatedNormalTruncatedNormal(output_out_layer3/truncated_normal/shape*
seedą˙ĺ)*
T0*
dtype0*
_output_shapes

:@
*
seed2*
ľ
&output_out_layer3/truncated_normal/mulMul2output_out_layer3/truncated_normal/TruncatedNormal)output_out_layer3/truncated_normal/stddev*
T0*
_output_shapes

:@

Ł
"output_out_layer3/truncated_normalAdd&output_out_layer3/truncated_normal/mul'output_out_layer3/truncated_normal/mean*
T0*
_output_shapes

:@


output_out_layer3/Weight
VariableV2*
shape
:@
*
shared_name *
dtype0*
_output_shapes

:@
*
	container 
ć
output_out_layer3/Weight/AssignAssignoutput_out_layer3/Weight"output_out_layer3/truncated_normal*
use_locking(*
T0*+
_class!
loc:@output_out_layer3/Weight*
validate_shape(*
_output_shapes

:@


output_out_layer3/Weight/readIdentityoutput_out_layer3/Weight*
T0*+
_class!
loc:@output_out_layer3/Weight*
_output_shapes

:@

d
output_out_layer3/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:


output_out_layer3/Bias
VariableV2*
shape:
*
shared_name *
dtype0*
_output_shapes
:
*
	container 
Ń
output_out_layer3/Bias/AssignAssignoutput_out_layer3/Biasoutput_out_layer3/Const*
use_locking(*
T0*)
_class
loc:@output_out_layer3/Bias*
validate_shape(*
_output_shapes
:


output_out_layer3/Bias/readIdentityoutput_out_layer3/Bias*
T0*)
_class
loc:@output_out_layer3/Bias*
_output_shapes
:

Ş
output_out_layer3/MatMulMatMulout_layer2/Reluoutput_out_layer3/Weight/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( 

output_out_layer3/addAddV2output_out_layer3/MatMuloutput_out_layer3/Bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

g
output_out_layer3/ReluReluoutput_out_layer3/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

w
output_out_layer3/weights/tagConst**
value!B Boutput_out_layer3/weights*
dtype0*
_output_shapes
: 

output_out_layer3/weightsHistogramSummaryoutput_out_layer3/weights/tagoutput_out_layer3/Weight/read*
T0*
_output_shapes
: 
u
output_out_layer3/bias_1/tagConst*)
value B Boutput_out_layer3/bias_1*
dtype0*
_output_shapes
: 

output_out_layer3/bias_1HistogramSummaryoutput_out_layer3/bias_1/tagoutput_out_layer3/Bias/read*
T0*
_output_shapes
: 
y
7loss_calculation/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 

8loss_calculation/softmax_cross_entropy_with_logits/ShapeShapeoutput_out_layer3/Relu*
T0*
out_type0*
_output_shapes
:
{
9loss_calculation/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 

:loss_calculation/softmax_cross_entropy_with_logits/Shape_1Shapeoutput_out_layer3/Relu*
T0*
out_type0*
_output_shapes
:
z
8loss_calculation/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ó
6loss_calculation/softmax_cross_entropy_with_logits/SubSub9loss_calculation/softmax_cross_entropy_with_logits/Rank_18loss_calculation/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
¸
>loss_calculation/softmax_cross_entropy_with_logits/Slice/beginPack6loss_calculation/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:

=loss_calculation/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ž
8loss_calculation/softmax_cross_entropy_with_logits/SliceSlice:loss_calculation/softmax_cross_entropy_with_logits/Shape_1>loss_calculation/softmax_cross_entropy_with_logits/Slice/begin=loss_calculation/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:

Bloss_calculation/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

>loss_calculation/softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
˝
9loss_calculation/softmax_cross_entropy_with_logits/concatConcatV2Bloss_calculation/softmax_cross_entropy_with_logits/concat/values_08loss_calculation/softmax_cross_entropy_with_logits/Slice>loss_calculation/softmax_cross_entropy_with_logits/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
á
:loss_calculation/softmax_cross_entropy_with_logits/ReshapeReshapeoutput_out_layer3/Relu9loss_calculation/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
{
9loss_calculation/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 

:loss_calculation/softmax_cross_entropy_with_logits/Shape_2ShapelabelsY*
T0*
out_type0*
_output_shapes
:
|
:loss_calculation/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
×
8loss_calculation/softmax_cross_entropy_with_logits/Sub_1Sub9loss_calculation/softmax_cross_entropy_with_logits/Rank_2:loss_calculation/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
ź
@loss_calculation/softmax_cross_entropy_with_logits/Slice_1/beginPack8loss_calculation/softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N*
_output_shapes
:

?loss_calculation/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
´
:loss_calculation/softmax_cross_entropy_with_logits/Slice_1Slice:loss_calculation/softmax_cross_entropy_with_logits/Shape_2@loss_calculation/softmax_cross_entropy_with_logits/Slice_1/begin?loss_calculation/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:

Dloss_calculation/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

@loss_calculation/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ĺ
;loss_calculation/softmax_cross_entropy_with_logits/concat_1ConcatV2Dloss_calculation/softmax_cross_entropy_with_logits/concat_1/values_0:loss_calculation/softmax_cross_entropy_with_logits/Slice_1@loss_calculation/softmax_cross_entropy_with_logits/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ö
<loss_calculation/softmax_cross_entropy_with_logits/Reshape_1ReshapelabelsY;loss_calculation/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

2loss_calculation/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits:loss_calculation/softmax_cross_entropy_with_logits/Reshape<loss_calculation/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
|
:loss_calculation/softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ő
8loss_calculation/softmax_cross_entropy_with_logits/Sub_2Sub7loss_calculation/softmax_cross_entropy_with_logits/Rank:loss_calculation/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 

@loss_calculation/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
ť
?loss_calculation/softmax_cross_entropy_with_logits/Slice_2/sizePack8loss_calculation/softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
˛
:loss_calculation/softmax_cross_entropy_with_logits/Slice_2Slice8loss_calculation/softmax_cross_entropy_with_logits/Shape@loss_calculation/softmax_cross_entropy_with_logits/Slice_2/begin?loss_calculation/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
ó
<loss_calculation/softmax_cross_entropy_with_logits/Reshape_2Reshape2loss_calculation/softmax_cross_entropy_with_logits:loss_calculation/softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
loss_calculation/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ą
loss_calculation/MeanMean<loss_calculation/softmax_cross_entropy_with_logits/Reshape_2loss_calculation/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
\
optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

<optimizer/gradients/loss_calculation/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Ě
6optimizer/gradients/loss_calculation/Mean_grad/ReshapeReshapeoptimizer/gradients/Fill<optimizer/gradients/loss_calculation/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
°
4optimizer/gradients/loss_calculation/Mean_grad/ShapeShape<loss_calculation/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
é
3optimizer/gradients/loss_calculation/Mean_grad/TileTile6optimizer/gradients/loss_calculation/Mean_grad/Reshape4optimizer/gradients/loss_calculation/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
6optimizer/gradients/loss_calculation/Mean_grad/Shape_1Shape<loss_calculation/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
y
6optimizer/gradients/loss_calculation/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
~
4optimizer/gradients/loss_calculation/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ç
3optimizer/gradients/loss_calculation/Mean_grad/ProdProd6optimizer/gradients/loss_calculation/Mean_grad/Shape_14optimizer/gradients/loss_calculation/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

6optimizer/gradients/loss_calculation/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ë
5optimizer/gradients/loss_calculation/Mean_grad/Prod_1Prod6optimizer/gradients/loss_calculation/Mean_grad/Shape_26optimizer/gradients/loss_calculation/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
z
8optimizer/gradients/loss_calculation/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ó
6optimizer/gradients/loss_calculation/Mean_grad/MaximumMaximum5optimizer/gradients/loss_calculation/Mean_grad/Prod_18optimizer/gradients/loss_calculation/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
Ń
7optimizer/gradients/loss_calculation/Mean_grad/floordivFloorDiv3optimizer/gradients/loss_calculation/Mean_grad/Prod6optimizer/gradients/loss_calculation/Mean_grad/Maximum*
T0*
_output_shapes
: 
´
3optimizer/gradients/loss_calculation/Mean_grad/CastCast7optimizer/gradients/loss_calculation/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
Ů
6optimizer/gradients/loss_calculation/Mean_grad/truedivRealDiv3optimizer/gradients/loss_calculation/Mean_grad/Tile3optimizer/gradients/loss_calculation/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
[optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape2loss_calculation/softmax_cross_entropy_with_logits*
T0*
out_type0*
_output_shapes
:
š
]optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape6optimizer/gradients/loss_calculation/Mean_grad/truediv[optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

optimizer/gradients/zeros_like	ZerosLike4loss_calculation/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ľ
Zoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ý
Voptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDims]optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeZoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ooptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mulMulVoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims4loss_calculation/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ű
Voptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax:loss_calculation/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
é
Ooptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/NegNegVoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
§
\optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
á
Xoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDims]optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape\optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Qoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mul_1MulXoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/ExpandDims_1Ooptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

\optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOpP^optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mulR^optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mul_1
ż
doptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentityOoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mul]^optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*b
_classX
VTloc:@optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ĺ
foptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1IdentityQoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mul_1]^optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ż
Yoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeoutput_out_layer3/Relu*
T0*
out_type0*
_output_shapes
:
ç
[optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapedoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyYoptimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ë
8optimizer/gradients/output_out_layer3/Relu_grad/ReluGradReluGrad[optimizer/gradients/loss_calculation/softmax_cross_entropy_with_logits/Reshape_grad/Reshapeoutput_out_layer3/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


4optimizer/gradients/output_out_layer3/add_grad/ShapeShapeoutput_out_layer3/MatMul*
T0*
out_type0*
_output_shapes
:

6optimizer/gradients/output_out_layer3/add_grad/Shape_1Shapeoutput_out_layer3/Bias/read*
T0*
out_type0*
_output_shapes
:

Doptimizer/gradients/output_out_layer3/add_grad/BroadcastGradientArgsBroadcastGradientArgs4optimizer/gradients/output_out_layer3/add_grad/Shape6optimizer/gradients/output_out_layer3/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ů
2optimizer/gradients/output_out_layer3/add_grad/SumSum8optimizer/gradients/output_out_layer3/Relu_grad/ReluGradDoptimizer/gradients/output_out_layer3/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ë
6optimizer/gradients/output_out_layer3/add_grad/ReshapeReshape2optimizer/gradients/output_out_layer3/add_grad/Sum4optimizer/gradients/output_out_layer3/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ý
4optimizer/gradients/output_out_layer3/add_grad/Sum_1Sum8optimizer/gradients/output_out_layer3/Relu_grad/ReluGradFoptimizer/gradients/output_out_layer3/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ä
8optimizer/gradients/output_out_layer3/add_grad/Reshape_1Reshape4optimizer/gradients/output_out_layer3/add_grad/Sum_16optimizer/gradients/output_out_layer3/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

ť
?optimizer/gradients/output_out_layer3/add_grad/tuple/group_depsNoOp7^optimizer/gradients/output_out_layer3/add_grad/Reshape9^optimizer/gradients/output_out_layer3/add_grad/Reshape_1
Ę
Goptimizer/gradients/output_out_layer3/add_grad/tuple/control_dependencyIdentity6optimizer/gradients/output_out_layer3/add_grad/Reshape@^optimizer/gradients/output_out_layer3/add_grad/tuple/group_deps*
T0*I
_class?
=;loc:@optimizer/gradients/output_out_layer3/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ă
Ioptimizer/gradients/output_out_layer3/add_grad/tuple/control_dependency_1Identity8optimizer/gradients/output_out_layer3/add_grad/Reshape_1@^optimizer/gradients/output_out_layer3/add_grad/tuple/group_deps*
T0*K
_classA
?=loc:@optimizer/gradients/output_out_layer3/add_grad/Reshape_1*
_output_shapes
:


8optimizer/gradients/output_out_layer3/MatMul_grad/MatMulMatMulGoptimizer/gradients/output_out_layer3/add_grad/tuple/control_dependencyoutput_out_layer3/Weight/read*
transpose_b(*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( 
í
:optimizer/gradients/output_out_layer3/MatMul_grad/MatMul_1MatMulout_layer2/ReluGoptimizer/gradients/output_out_layer3/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:@
*
transpose_a(
Â
Boptimizer/gradients/output_out_layer3/MatMul_grad/tuple/group_depsNoOp9^optimizer/gradients/output_out_layer3/MatMul_grad/MatMul;^optimizer/gradients/output_out_layer3/MatMul_grad/MatMul_1
Ô
Joptimizer/gradients/output_out_layer3/MatMul_grad/tuple/control_dependencyIdentity8optimizer/gradients/output_out_layer3/MatMul_grad/MatMulC^optimizer/gradients/output_out_layer3/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@optimizer/gradients/output_out_layer3/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ń
Loptimizer/gradients/output_out_layer3/MatMul_grad/tuple/control_dependency_1Identity:optimizer/gradients/output_out_layer3/MatMul_grad/MatMul_1C^optimizer/gradients/output_out_layer3/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@optimizer/gradients/output_out_layer3/MatMul_grad/MatMul_1*
_output_shapes

:@

Ě
1optimizer/gradients/out_layer2/Relu_grad/ReluGradReluGradJoptimizer/gradients/output_out_layer3/MatMul_grad/tuple/control_dependencyout_layer2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
~
-optimizer/gradients/out_layer2/add_grad/ShapeShapeout_layer2/MatMul*
T0*
out_type0*
_output_shapes
:

/optimizer/gradients/out_layer2/add_grad/Shape_1Shapeout_layer2/Bias/read*
T0*
out_type0*
_output_shapes
:
ó
=optimizer/gradients/out_layer2/add_grad/BroadcastGradientArgsBroadcastGradientArgs-optimizer/gradients/out_layer2/add_grad/Shape/optimizer/gradients/out_layer2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ä
+optimizer/gradients/out_layer2/add_grad/SumSum1optimizer/gradients/out_layer2/Relu_grad/ReluGrad=optimizer/gradients/out_layer2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ö
/optimizer/gradients/out_layer2/add_grad/ReshapeReshape+optimizer/gradients/out_layer2/add_grad/Sum-optimizer/gradients/out_layer2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
č
-optimizer/gradients/out_layer2/add_grad/Sum_1Sum1optimizer/gradients/out_layer2/Relu_grad/ReluGrad?optimizer/gradients/out_layer2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ď
1optimizer/gradients/out_layer2/add_grad/Reshape_1Reshape-optimizer/gradients/out_layer2/add_grad/Sum_1/optimizer/gradients/out_layer2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@
Ś
8optimizer/gradients/out_layer2/add_grad/tuple/group_depsNoOp0^optimizer/gradients/out_layer2/add_grad/Reshape2^optimizer/gradients/out_layer2/add_grad/Reshape_1
Ž
@optimizer/gradients/out_layer2/add_grad/tuple/control_dependencyIdentity/optimizer/gradients/out_layer2/add_grad/Reshape9^optimizer/gradients/out_layer2/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@optimizer/gradients/out_layer2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
§
Boptimizer/gradients/out_layer2/add_grad/tuple/control_dependency_1Identity1optimizer/gradients/out_layer2/add_grad/Reshape_19^optimizer/gradients/out_layer2/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@optimizer/gradients/out_layer2/add_grad/Reshape_1*
_output_shapes
:@
î
1optimizer/gradients/out_layer2/MatMul_grad/MatMulMatMul@optimizer/gradients/out_layer2/add_grad/tuple/control_dependencyout_layer2/Weight/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
ĺ
3optimizer/gradients/out_layer2/MatMul_grad/MatMul_1MatMulout_layer_drop/mul_1@optimizer/gradients/out_layer2/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	@*
transpose_a(
­
;optimizer/gradients/out_layer2/MatMul_grad/tuple/group_depsNoOp2^optimizer/gradients/out_layer2/MatMul_grad/MatMul4^optimizer/gradients/out_layer2/MatMul_grad/MatMul_1
š
Coptimizer/gradients/out_layer2/MatMul_grad/tuple/control_dependencyIdentity1optimizer/gradients/out_layer2/MatMul_grad/MatMul<^optimizer/gradients/out_layer2/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@optimizer/gradients/out_layer2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
Eoptimizer/gradients/out_layer2/MatMul_grad/tuple/control_dependency_1Identity3optimizer/gradients/out_layer2/MatMul_grad/MatMul_1<^optimizer/gradients/out_layer2/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@optimizer/gradients/out_layer2/MatMul_grad/MatMul_1*
_output_shapes
:	@

3optimizer/gradients/out_layer_drop/mul_1_grad/ShapeShapeout_layer_drop/mul*
T0*
out_type0*
_output_shapes
:

5optimizer/gradients/out_layer_drop/mul_1_grad/Shape_1Shapeout_layer_drop/Cast*
T0*
out_type0*
_output_shapes
:

Coptimizer/gradients/out_layer_drop/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs3optimizer/gradients/out_layer_drop/mul_1_grad/Shape5optimizer/gradients/out_layer_drop/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ĺ
1optimizer/gradients/out_layer_drop/mul_1_grad/MulMulCoptimizer/gradients/out_layer2/MatMul_grad/tuple/control_dependencyout_layer_drop/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
1optimizer/gradients/out_layer_drop/mul_1_grad/SumSum1optimizer/gradients/out_layer_drop/mul_1_grad/MulCoptimizer/gradients/out_layer_drop/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
é
5optimizer/gradients/out_layer_drop/mul_1_grad/ReshapeReshape1optimizer/gradients/out_layer_drop/mul_1_grad/Sum3optimizer/gradients/out_layer_drop/mul_1_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
3optimizer/gradients/out_layer_drop/mul_1_grad/Mul_1Mulout_layer_drop/mulCoptimizer/gradients/out_layer2/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
3optimizer/gradients/out_layer_drop/mul_1_grad/Sum_1Sum3optimizer/gradients/out_layer_drop/mul_1_grad/Mul_1Eoptimizer/gradients/out_layer_drop/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ď
7optimizer/gradients/out_layer_drop/mul_1_grad/Reshape_1Reshape3optimizer/gradients/out_layer_drop/mul_1_grad/Sum_15optimizer/gradients/out_layer_drop/mul_1_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
>optimizer/gradients/out_layer_drop/mul_1_grad/tuple/group_depsNoOp6^optimizer/gradients/out_layer_drop/mul_1_grad/Reshape8^optimizer/gradients/out_layer_drop/mul_1_grad/Reshape_1
Ç
Foptimizer/gradients/out_layer_drop/mul_1_grad/tuple/control_dependencyIdentity5optimizer/gradients/out_layer_drop/mul_1_grad/Reshape?^optimizer/gradients/out_layer_drop/mul_1_grad/tuple/group_deps*
T0*H
_class>
<:loc:@optimizer/gradients/out_layer_drop/mul_1_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
Hoptimizer/gradients/out_layer_drop/mul_1_grad/tuple/control_dependency_1Identity7optimizer/gradients/out_layer_drop/mul_1_grad/Reshape_1?^optimizer/gradients/out_layer_drop/mul_1_grad/tuple/group_deps*
T0*J
_class@
><loc:@optimizer/gradients/out_layer_drop/mul_1_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

1optimizer/gradients/out_layer_drop/mul_grad/ShapeShapeout_layer1/Relu*
T0*
out_type0*
_output_shapes
:

3optimizer/gradients/out_layer_drop/mul_grad/Shape_1Shapeout_layer_drop/truediv*
T0*
out_type0*
_output_shapes
: 
˙
Aoptimizer/gradients/out_layer_drop/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1optimizer/gradients/out_layer_drop/mul_grad/Shape3optimizer/gradients/out_layer_drop/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
É
/optimizer/gradients/out_layer_drop/mul_grad/MulMulFoptimizer/gradients/out_layer_drop/mul_1_grad/tuple/control_dependencyout_layer_drop/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
/optimizer/gradients/out_layer_drop/mul_grad/SumSum/optimizer/gradients/out_layer_drop/mul_grad/MulAoptimizer/gradients/out_layer_drop/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ă
3optimizer/gradients/out_layer_drop/mul_grad/ReshapeReshape/optimizer/gradients/out_layer_drop/mul_grad/Sum1optimizer/gradients/out_layer_drop/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
1optimizer/gradients/out_layer_drop/mul_grad/Mul_1Mulout_layer1/ReluFoptimizer/gradients/out_layer_drop/mul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
1optimizer/gradients/out_layer_drop/mul_grad/Sum_1Sum1optimizer/gradients/out_layer_drop/mul_grad/Mul_1Coptimizer/gradients/out_layer_drop/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
×
5optimizer/gradients/out_layer_drop/mul_grad/Reshape_1Reshape1optimizer/gradients/out_layer_drop/mul_grad/Sum_13optimizer/gradients/out_layer_drop/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
˛
<optimizer/gradients/out_layer_drop/mul_grad/tuple/group_depsNoOp4^optimizer/gradients/out_layer_drop/mul_grad/Reshape6^optimizer/gradients/out_layer_drop/mul_grad/Reshape_1
ż
Doptimizer/gradients/out_layer_drop/mul_grad/tuple/control_dependencyIdentity3optimizer/gradients/out_layer_drop/mul_grad/Reshape=^optimizer/gradients/out_layer_drop/mul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@optimizer/gradients/out_layer_drop/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
Foptimizer/gradients/out_layer_drop/mul_grad/tuple/control_dependency_1Identity5optimizer/gradients/out_layer_drop/mul_grad/Reshape_1=^optimizer/gradients/out_layer_drop/mul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@optimizer/gradients/out_layer_drop/mul_grad/Reshape_1*
_output_shapes
: 
Ç
1optimizer/gradients/out_layer1/Relu_grad/ReluGradReluGradDoptimizer/gradients/out_layer_drop/mul_grad/tuple/control_dependencyout_layer1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
-optimizer/gradients/out_layer1/add_grad/ShapeShapeout_layer1/MatMul*
T0*
out_type0*
_output_shapes
:

/optimizer/gradients/out_layer1/add_grad/Shape_1Shapeout_layer1/Bias/read*
T0*
out_type0*
_output_shapes
:
ó
=optimizer/gradients/out_layer1/add_grad/BroadcastGradientArgsBroadcastGradientArgs-optimizer/gradients/out_layer1/add_grad/Shape/optimizer/gradients/out_layer1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ä
+optimizer/gradients/out_layer1/add_grad/SumSum1optimizer/gradients/out_layer1/Relu_grad/ReluGrad=optimizer/gradients/out_layer1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
×
/optimizer/gradients/out_layer1/add_grad/ReshapeReshape+optimizer/gradients/out_layer1/add_grad/Sum-optimizer/gradients/out_layer1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
-optimizer/gradients/out_layer1/add_grad/Sum_1Sum1optimizer/gradients/out_layer1/Relu_grad/ReluGrad?optimizer/gradients/out_layer1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Đ
1optimizer/gradients/out_layer1/add_grad/Reshape_1Reshape-optimizer/gradients/out_layer1/add_grad/Sum_1/optimizer/gradients/out_layer1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:
Ś
8optimizer/gradients/out_layer1/add_grad/tuple/group_depsNoOp0^optimizer/gradients/out_layer1/add_grad/Reshape2^optimizer/gradients/out_layer1/add_grad/Reshape_1
Ż
@optimizer/gradients/out_layer1/add_grad/tuple/control_dependencyIdentity/optimizer/gradients/out_layer1/add_grad/Reshape9^optimizer/gradients/out_layer1/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@optimizer/gradients/out_layer1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
Boptimizer/gradients/out_layer1/add_grad/tuple/control_dependency_1Identity1optimizer/gradients/out_layer1/add_grad/Reshape_19^optimizer/gradients/out_layer1/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@optimizer/gradients/out_layer1/add_grad/Reshape_1*
_output_shapes	
:
î
1optimizer/gradients/out_layer1/MatMul_grad/MatMulMatMul@optimizer/gradients/out_layer1/add_grad/tuple/control_dependencyout_layer1/Weight/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
Ó
3optimizer/gradients/out_layer1/MatMul_grad/MatMul_1MatMulX@optimizer/gradients/out_layer1/add_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(
­
;optimizer/gradients/out_layer1/MatMul_grad/tuple/group_depsNoOp2^optimizer/gradients/out_layer1/MatMul_grad/MatMul4^optimizer/gradients/out_layer1/MatMul_grad/MatMul_1
š
Coptimizer/gradients/out_layer1/MatMul_grad/tuple/control_dependencyIdentity1optimizer/gradients/out_layer1/MatMul_grad/MatMul<^optimizer/gradients/out_layer1/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@optimizer/gradients/out_layer1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
Eoptimizer/gradients/out_layer1/MatMul_grad/tuple/control_dependency_1Identity3optimizer/gradients/out_layer1/MatMul_grad/MatMul_1<^optimizer/gradients/out_layer1/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@optimizer/gradients/out_layer1/MatMul_grad/MatMul_1* 
_output_shapes
:


#optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*"
_class
loc:@out_layer1/Bias*
dtype0*
_output_shapes
: 

optimizer/beta1_power
VariableV2*
shared_name *"
_class
loc:@out_layer1/Bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Đ
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes
: 

optimizer/beta1_power/readIdentityoptimizer/beta1_power*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes
: 

#optimizer/beta2_power/initial_valueConst*
valueB
 *wž?*"
_class
loc:@out_layer1/Bias*
dtype0*
_output_shapes
: 

optimizer/beta2_power
VariableV2*
shared_name *"
_class
loc:@out_layer1/Bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Đ
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes
: 

optimizer/beta2_power/readIdentityoptimizer/beta2_power*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes
: 
Ż
8out_layer1/Weight/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@out_layer1/Weight*
valueB"     *
dtype0*
_output_shapes
:

.out_layer1/Weight/Adam/Initializer/zeros/ConstConst*$
_class
loc:@out_layer1/Weight*
valueB
 *    *
dtype0*
_output_shapes
: 
ý
(out_layer1/Weight/Adam/Initializer/zerosFill8out_layer1/Weight/Adam/Initializer/zeros/shape_as_tensor.out_layer1/Weight/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@out_layer1/Weight*

index_type0* 
_output_shapes
:

´
out_layer1/Weight/Adam
VariableV2*
shared_name *$
_class
loc:@out_layer1/Weight*
	container *
shape:
*
dtype0* 
_output_shapes
:

ă
out_layer1/Weight/Adam/AssignAssignout_layer1/Weight/Adam(out_layer1/Weight/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@out_layer1/Weight*
validate_shape(* 
_output_shapes
:


out_layer1/Weight/Adam/readIdentityout_layer1/Weight/Adam*
T0*$
_class
loc:@out_layer1/Weight* 
_output_shapes
:

ą
:out_layer1/Weight/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@out_layer1/Weight*
valueB"     *
dtype0*
_output_shapes
:

0out_layer1/Weight/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@out_layer1/Weight*
valueB
 *    *
dtype0*
_output_shapes
: 

*out_layer1/Weight/Adam_1/Initializer/zerosFill:out_layer1/Weight/Adam_1/Initializer/zeros/shape_as_tensor0out_layer1/Weight/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@out_layer1/Weight*

index_type0* 
_output_shapes
:

ś
out_layer1/Weight/Adam_1
VariableV2*
shared_name *$
_class
loc:@out_layer1/Weight*
	container *
shape:
*
dtype0* 
_output_shapes
:

é
out_layer1/Weight/Adam_1/AssignAssignout_layer1/Weight/Adam_1*out_layer1/Weight/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@out_layer1/Weight*
validate_shape(* 
_output_shapes
:


out_layer1/Weight/Adam_1/readIdentityout_layer1/Weight/Adam_1*
T0*$
_class
loc:@out_layer1/Weight* 
_output_shapes
:


&out_layer1/Bias/Adam/Initializer/zerosConst*"
_class
loc:@out_layer1/Bias*
valueB*    *
dtype0*
_output_shapes	
:
Ś
out_layer1/Bias/Adam
VariableV2*
shared_name *"
_class
loc:@out_layer1/Bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ö
out_layer1/Bias/Adam/AssignAssignout_layer1/Bias/Adam&out_layer1/Bias/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes	
:

out_layer1/Bias/Adam/readIdentityout_layer1/Bias/Adam*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes	
:

(out_layer1/Bias/Adam_1/Initializer/zerosConst*"
_class
loc:@out_layer1/Bias*
valueB*    *
dtype0*
_output_shapes	
:
¨
out_layer1/Bias/Adam_1
VariableV2*
shared_name *"
_class
loc:@out_layer1/Bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ü
out_layer1/Bias/Adam_1/AssignAssignout_layer1/Bias/Adam_1(out_layer1/Bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes	
:

out_layer1/Bias/Adam_1/readIdentityout_layer1/Bias/Adam_1*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes	
:
Ż
8out_layer2/Weight/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@out_layer2/Weight*
valueB"   @   *
dtype0*
_output_shapes
:

.out_layer2/Weight/Adam/Initializer/zeros/ConstConst*$
_class
loc:@out_layer2/Weight*
valueB
 *    *
dtype0*
_output_shapes
: 
ü
(out_layer2/Weight/Adam/Initializer/zerosFill8out_layer2/Weight/Adam/Initializer/zeros/shape_as_tensor.out_layer2/Weight/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@out_layer2/Weight*

index_type0*
_output_shapes
:	@
˛
out_layer2/Weight/Adam
VariableV2*
shared_name *$
_class
loc:@out_layer2/Weight*
	container *
shape:	@*
dtype0*
_output_shapes
:	@
â
out_layer2/Weight/Adam/AssignAssignout_layer2/Weight/Adam(out_layer2/Weight/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@out_layer2/Weight*
validate_shape(*
_output_shapes
:	@

out_layer2/Weight/Adam/readIdentityout_layer2/Weight/Adam*
T0*$
_class
loc:@out_layer2/Weight*
_output_shapes
:	@
ą
:out_layer2/Weight/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@out_layer2/Weight*
valueB"   @   *
dtype0*
_output_shapes
:

0out_layer2/Weight/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@out_layer2/Weight*
valueB
 *    *
dtype0*
_output_shapes
: 

*out_layer2/Weight/Adam_1/Initializer/zerosFill:out_layer2/Weight/Adam_1/Initializer/zeros/shape_as_tensor0out_layer2/Weight/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@out_layer2/Weight*

index_type0*
_output_shapes
:	@
´
out_layer2/Weight/Adam_1
VariableV2*
shared_name *$
_class
loc:@out_layer2/Weight*
	container *
shape:	@*
dtype0*
_output_shapes
:	@
č
out_layer2/Weight/Adam_1/AssignAssignout_layer2/Weight/Adam_1*out_layer2/Weight/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@out_layer2/Weight*
validate_shape(*
_output_shapes
:	@

out_layer2/Weight/Adam_1/readIdentityout_layer2/Weight/Adam_1*
T0*$
_class
loc:@out_layer2/Weight*
_output_shapes
:	@

&out_layer2/Bias/Adam/Initializer/zerosConst*"
_class
loc:@out_layer2/Bias*
valueB@*    *
dtype0*
_output_shapes
:@
¤
out_layer2/Bias/Adam
VariableV2*
shared_name *"
_class
loc:@out_layer2/Bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ő
out_layer2/Bias/Adam/AssignAssignout_layer2/Bias/Adam&out_layer2/Bias/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@out_layer2/Bias*
validate_shape(*
_output_shapes
:@

out_layer2/Bias/Adam/readIdentityout_layer2/Bias/Adam*
T0*"
_class
loc:@out_layer2/Bias*
_output_shapes
:@

(out_layer2/Bias/Adam_1/Initializer/zerosConst*"
_class
loc:@out_layer2/Bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ś
out_layer2/Bias/Adam_1
VariableV2*
shared_name *"
_class
loc:@out_layer2/Bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ű
out_layer2/Bias/Adam_1/AssignAssignout_layer2/Bias/Adam_1(out_layer2/Bias/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@out_layer2/Bias*
validate_shape(*
_output_shapes
:@

out_layer2/Bias/Adam_1/readIdentityout_layer2/Bias/Adam_1*
T0*"
_class
loc:@out_layer2/Bias*
_output_shapes
:@
ą
/output_out_layer3/Weight/Adam/Initializer/zerosConst*+
_class!
loc:@output_out_layer3/Weight*
valueB@
*    *
dtype0*
_output_shapes

:@

ž
output_out_layer3/Weight/Adam
VariableV2*
shared_name *+
_class!
loc:@output_out_layer3/Weight*
	container *
shape
:@
*
dtype0*
_output_shapes

:@

ý
$output_out_layer3/Weight/Adam/AssignAssignoutput_out_layer3/Weight/Adam/output_out_layer3/Weight/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@output_out_layer3/Weight*
validate_shape(*
_output_shapes

:@

Ł
"output_out_layer3/Weight/Adam/readIdentityoutput_out_layer3/Weight/Adam*
T0*+
_class!
loc:@output_out_layer3/Weight*
_output_shapes

:@

ł
1output_out_layer3/Weight/Adam_1/Initializer/zerosConst*+
_class!
loc:@output_out_layer3/Weight*
valueB@
*    *
dtype0*
_output_shapes

:@

Ŕ
output_out_layer3/Weight/Adam_1
VariableV2*
shared_name *+
_class!
loc:@output_out_layer3/Weight*
	container *
shape
:@
*
dtype0*
_output_shapes

:@


&output_out_layer3/Weight/Adam_1/AssignAssignoutput_out_layer3/Weight/Adam_11output_out_layer3/Weight/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@output_out_layer3/Weight*
validate_shape(*
_output_shapes

:@

§
$output_out_layer3/Weight/Adam_1/readIdentityoutput_out_layer3/Weight/Adam_1*
T0*+
_class!
loc:@output_out_layer3/Weight*
_output_shapes

:@

Ľ
-output_out_layer3/Bias/Adam/Initializer/zerosConst*)
_class
loc:@output_out_layer3/Bias*
valueB
*    *
dtype0*
_output_shapes
:

˛
output_out_layer3/Bias/Adam
VariableV2*
shared_name *)
_class
loc:@output_out_layer3/Bias*
	container *
shape:
*
dtype0*
_output_shapes
:

ń
"output_out_layer3/Bias/Adam/AssignAssignoutput_out_layer3/Bias/Adam-output_out_layer3/Bias/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@output_out_layer3/Bias*
validate_shape(*
_output_shapes
:


 output_out_layer3/Bias/Adam/readIdentityoutput_out_layer3/Bias/Adam*
T0*)
_class
loc:@output_out_layer3/Bias*
_output_shapes
:

§
/output_out_layer3/Bias/Adam_1/Initializer/zerosConst*)
_class
loc:@output_out_layer3/Bias*
valueB
*    *
dtype0*
_output_shapes
:

´
output_out_layer3/Bias/Adam_1
VariableV2*
shared_name *)
_class
loc:@output_out_layer3/Bias*
	container *
shape:
*
dtype0*
_output_shapes
:

÷
$output_out_layer3/Bias/Adam_1/AssignAssignoutput_out_layer3/Bias/Adam_1/output_out_layer3/Bias/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@output_out_layer3/Bias*
validate_shape(*
_output_shapes
:


"output_out_layer3/Bias/Adam_1/readIdentityoutput_out_layer3/Bias/Adam_1*
T0*)
_class
loc:@output_out_layer3/Bias*
_output_shapes
:

a
optimizer/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Y
optimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Y
optimizer/Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
[
optimizer/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
Ü
1optimizer/Adam/update_out_layer1/Weight/ApplyAdam	ApplyAdamout_layer1/Weightout_layer1/Weight/Adamout_layer1/Weight/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonEoptimizer/gradients/out_layer1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@out_layer1/Weight*
use_nesterov( * 
_output_shapes
:

Ę
/optimizer/Adam/update_out_layer1/Bias/ApplyAdam	ApplyAdamout_layer1/Biasout_layer1/Bias/Adamout_layer1/Bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/out_layer1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@out_layer1/Bias*
use_nesterov( *
_output_shapes	
:
Ű
1optimizer/Adam/update_out_layer2/Weight/ApplyAdam	ApplyAdamout_layer2/Weightout_layer2/Weight/Adamout_layer2/Weight/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonEoptimizer/gradients/out_layer2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@out_layer2/Weight*
use_nesterov( *
_output_shapes
:	@
É
/optimizer/Adam/update_out_layer2/Bias/ApplyAdam	ApplyAdamout_layer2/Biasout_layer2/Bias/Adamout_layer2/Bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/out_layer2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@out_layer2/Bias*
use_nesterov( *
_output_shapes
:@

8optimizer/Adam/update_output_out_layer3/Weight/ApplyAdam	ApplyAdamoutput_out_layer3/Weightoutput_out_layer3/Weight/Adamoutput_out_layer3/Weight/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonLoptimizer/gradients/output_out_layer3/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*+
_class!
loc:@output_out_layer3/Weight*
use_nesterov( *
_output_shapes

:@

ó
6optimizer/Adam/update_output_out_layer3/Bias/ApplyAdam	ApplyAdamoutput_out_layer3/Biasoutput_out_layer3/Bias/Adamoutput_out_layer3/Bias/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonIoptimizer/gradients/output_out_layer3/add_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@output_out_layer3/Bias*
use_nesterov( *
_output_shapes
:

Đ
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta10^optimizer/Adam/update_out_layer1/Bias/ApplyAdam2^optimizer/Adam/update_out_layer1/Weight/ApplyAdam0^optimizer/Adam/update_out_layer2/Bias/ApplyAdam2^optimizer/Adam/update_out_layer2/Weight/ApplyAdam7^optimizer/Adam/update_output_out_layer3/Bias/ApplyAdam9^optimizer/Adam/update_output_out_layer3/Weight/ApplyAdam*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes
: 
¸
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
use_locking( *
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes
: 
Ň
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta20^optimizer/Adam/update_out_layer1/Bias/ApplyAdam2^optimizer/Adam/update_out_layer1/Weight/ApplyAdam0^optimizer/Adam/update_out_layer2/Bias/ApplyAdam2^optimizer/Adam/update_out_layer2/Weight/ApplyAdam7^optimizer/Adam/update_output_out_layer3/Bias/ApplyAdam9^optimizer/Adam/update_output_out_layer3/Weight/ApplyAdam*
T0*"
_class
loc:@out_layer1/Bias*
_output_shapes
: 
ź
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
use_locking( *
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes
: 

optimizer/AdamNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_10^optimizer/Adam/update_out_layer1/Bias/ApplyAdam2^optimizer/Adam/update_out_layer1/Weight/ApplyAdam0^optimizer/Adam/update_out_layer2/Bias/ApplyAdam2^optimizer/Adam/update_out_layer2/Weight/ApplyAdam7^optimizer/Adam/update_output_out_layer3/Bias/ApplyAdam9^optimizer/Adam/update_output_out_layer3/Weight/ApplyAdam
k
)accuracy_calculation/prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
š
accuracy_calculation/predictionArgMaxoutput_out_layer3/Relu)accuracy_calculation/prediction/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
%accuracy_calculation/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
˘
accuracy_calculation/ArgMaxArgMaxlabelsY%accuracy_calculation/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
accuracy_calculation/EqualEqualaccuracy_calculation/predictionaccuracy_calculation/ArgMax*
incompatible_shape_error(*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

accuracy_calculation/CastCastaccuracy_calculation/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
d
accuracy_calculation/ConstConst*
valueB: *
dtype0*
_output_shapes
:

accuracy_calculation/MeanMeanaccuracy_calculation/Castaccuracy_calculation/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
n
performance/accuracy/tagsConst*%
valueB Bperformance/accuracy*
dtype0*
_output_shapes
: 
|
performance/accuracyScalarSummaryperformance/accuracy/tagsaccuracy_calculation/Mean*
T0*
_output_shapes
: 
p
performance/loss-cost/tagsConst*&
valueB Bperformance/loss-cost*
dtype0*
_output_shapes
: 
z
performance/loss-costScalarSummaryperformance/loss-cost/tagsloss_calculation/Mean*
T0*
_output_shapes
: 
q
show_image/Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:

show_image/ReshapeReshapeXshow_image/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
show_image/image_input/tagConst*'
valueB Bshow_image/image_input*
dtype0*
_output_shapes
: 
Ş
show_image/image_inputImageSummaryshow_image/image_input/tagshow_image/Reshape*

max_images*
T0*
	bad_colorB:˙  ˙*
_output_shapes
: 

Merge/MergeSummaryMergeSummaryout_layer1/weightsout_layer1/bias_1out_layer2/weightsout_layer2/bias_1output_out_layer3/weightsoutput_out_layer3/bias_1performance/accuracyperformance/loss-costshow_image/image_input*
N	*
_output_shapes
: 

initNoOp^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign^out_layer1/Bias/Adam/Assign^out_layer1/Bias/Adam_1/Assign^out_layer1/Bias/Assign^out_layer1/Weight/Adam/Assign ^out_layer1/Weight/Adam_1/Assign^out_layer1/Weight/Assign^out_layer2/Bias/Adam/Assign^out_layer2/Bias/Adam_1/Assign^out_layer2/Bias/Assign^out_layer2/Weight/Adam/Assign ^out_layer2/Weight/Adam_1/Assign^out_layer2/Weight/Assign#^output_out_layer3/Bias/Adam/Assign%^output_out_layer3/Bias/Adam_1/Assign^output_out_layer3/Bias/Assign%^output_out_layer3/Weight/Adam/Assign'^output_out_layer3/Weight/Adam_1/Assign ^output_out_layer3/Weight/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_a90eddfc722c46ca8f80898111e89105/part*
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
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ć
save/SaveV2/tensor_namesConst*ů
valueďBěBoptimizer/beta1_powerBoptimizer/beta2_powerBout_layer1/BiasBout_layer1/Bias/AdamBout_layer1/Bias/Adam_1Bout_layer1/WeightBout_layer1/Weight/AdamBout_layer1/Weight/Adam_1Bout_layer2/BiasBout_layer2/Bias/AdamBout_layer2/Bias/Adam_1Bout_layer2/WeightBout_layer2/Weight/AdamBout_layer2/Weight/Adam_1Boutput_out_layer3/BiasBoutput_out_layer3/Bias/AdamBoutput_out_layer3/Bias/Adam_1Boutput_out_layer3/WeightBoutput_out_layer3/Weight/AdamBoutput_out_layer3/Weight/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ë
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesoptimizer/beta1_poweroptimizer/beta2_powerout_layer1/Biasout_layer1/Bias/Adamout_layer1/Bias/Adam_1out_layer1/Weightout_layer1/Weight/Adamout_layer1/Weight/Adam_1out_layer2/Biasout_layer2/Bias/Adamout_layer2/Bias/Adam_1out_layer2/Weightout_layer2/Weight/Adamout_layer2/Weight/Adam_1output_out_layer3/Biasoutput_out_layer3/Bias/Adamoutput_out_layer3/Bias/Adam_1output_out_layer3/Weightoutput_out_layer3/Weight/Adamoutput_out_layer3/Weight/Adam_1*"
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
É
save/RestoreV2/tensor_namesConst*ů
valueďBěBoptimizer/beta1_powerBoptimizer/beta2_powerBout_layer1/BiasBout_layer1/Bias/AdamBout_layer1/Bias/Adam_1Bout_layer1/WeightBout_layer1/Weight/AdamBout_layer1/Weight/Adam_1Bout_layer2/BiasBout_layer2/Bias/AdamBout_layer2/Bias/Adam_1Bout_layer2/WeightBout_layer2/Weight/AdamBout_layer2/Weight/Adam_1Boutput_out_layer3/BiasBoutput_out_layer3/Bias/AdamBoutput_out_layer3/Bias/Adam_1Boutput_out_layer3/WeightBoutput_out_layer3/Weight/AdamBoutput_out_layer3/Weight/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ď
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*"
dtypes
2*d
_output_shapesR
P::::::::::::::::::::
Ş
save/AssignAssignoptimizer/beta1_powersave/RestoreV2*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes
: 
Ž
save/Assign_1Assignoptimizer/beta2_powersave/RestoreV2:1*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes
: 
­
save/Assign_2Assignout_layer1/Biassave/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes	
:
˛
save/Assign_3Assignout_layer1/Bias/Adamsave/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes	
:
´
save/Assign_4Assignout_layer1/Bias/Adam_1save/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@out_layer1/Bias*
validate_shape(*
_output_shapes	
:
ś
save/Assign_5Assignout_layer1/Weightsave/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@out_layer1/Weight*
validate_shape(* 
_output_shapes
:

ť
save/Assign_6Assignout_layer1/Weight/Adamsave/RestoreV2:6*
use_locking(*
T0*$
_class
loc:@out_layer1/Weight*
validate_shape(* 
_output_shapes
:

˝
save/Assign_7Assignout_layer1/Weight/Adam_1save/RestoreV2:7*
use_locking(*
T0*$
_class
loc:@out_layer1/Weight*
validate_shape(* 
_output_shapes
:

Ź
save/Assign_8Assignout_layer2/Biassave/RestoreV2:8*
use_locking(*
T0*"
_class
loc:@out_layer2/Bias*
validate_shape(*
_output_shapes
:@
ą
save/Assign_9Assignout_layer2/Bias/Adamsave/RestoreV2:9*
use_locking(*
T0*"
_class
loc:@out_layer2/Bias*
validate_shape(*
_output_shapes
:@
ľ
save/Assign_10Assignout_layer2/Bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*"
_class
loc:@out_layer2/Bias*
validate_shape(*
_output_shapes
:@
ˇ
save/Assign_11Assignout_layer2/Weightsave/RestoreV2:11*
use_locking(*
T0*$
_class
loc:@out_layer2/Weight*
validate_shape(*
_output_shapes
:	@
ź
save/Assign_12Assignout_layer2/Weight/Adamsave/RestoreV2:12*
use_locking(*
T0*$
_class
loc:@out_layer2/Weight*
validate_shape(*
_output_shapes
:	@
ž
save/Assign_13Assignout_layer2/Weight/Adam_1save/RestoreV2:13*
use_locking(*
T0*$
_class
loc:@out_layer2/Weight*
validate_shape(*
_output_shapes
:	@
ź
save/Assign_14Assignoutput_out_layer3/Biassave/RestoreV2:14*
use_locking(*
T0*)
_class
loc:@output_out_layer3/Bias*
validate_shape(*
_output_shapes
:

Á
save/Assign_15Assignoutput_out_layer3/Bias/Adamsave/RestoreV2:15*
use_locking(*
T0*)
_class
loc:@output_out_layer3/Bias*
validate_shape(*
_output_shapes
:

Ă
save/Assign_16Assignoutput_out_layer3/Bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*)
_class
loc:@output_out_layer3/Bias*
validate_shape(*
_output_shapes
:

Ä
save/Assign_17Assignoutput_out_layer3/Weightsave/RestoreV2:17*
use_locking(*
T0*+
_class!
loc:@output_out_layer3/Weight*
validate_shape(*
_output_shapes

:@

É
save/Assign_18Assignoutput_out_layer3/Weight/Adamsave/RestoreV2:18*
use_locking(*
T0*+
_class!
loc:@output_out_layer3/Weight*
validate_shape(*
_output_shapes

:@

Ë
save/Assign_19Assignoutput_out_layer3/Weight/Adam_1save/RestoreV2:19*
use_locking(*
T0*+
_class!
loc:@output_out_layer3/Weight*
validate_shape(*
_output_shapes

:@

â
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "w<
save/Const:0save/Identity:0save/restore_all (5 @F8"Š
trainable_variables
j
out_layer1/Weight:0out_layer1/Weight/Assignout_layer1/Weight/read:02out_layer1/truncated_normal:08
Y
out_layer1/Bias:0out_layer1/Bias/Assignout_layer1/Bias/read:02out_layer1/Const:08
j
out_layer2/Weight:0out_layer2/Weight/Assignout_layer2/Weight/read:02out_layer2/truncated_normal:08
Y
out_layer2/Bias:0out_layer2/Bias/Assignout_layer2/Bias/read:02out_layer2/Const:08

output_out_layer3/Weight:0output_out_layer3/Weight/Assignoutput_out_layer3/Weight/read:02$output_out_layer3/truncated_normal:08
u
output_out_layer3/Bias:0output_out_layer3/Bias/Assignoutput_out_layer3/Bias/read:02output_out_layer3/Const:08"ë
	summariesÝ
Ú
out_layer1/weights:0
out_layer1/bias_1:0
out_layer2/weights:0
out_layer2/bias_1:0
output_out_layer3/weights:0
output_out_layer3/bias_1:0
performance/accuracy:0
performance/loss-cost:0
show_image/image_input:0"
train_op

optimizer/Adam"Ý
	variablesĎĚ
j
out_layer1/Weight:0out_layer1/Weight/Assignout_layer1/Weight/read:02out_layer1/truncated_normal:08
Y
out_layer1/Bias:0out_layer1/Bias/Assignout_layer1/Bias/read:02out_layer1/Const:08
j
out_layer2/Weight:0out_layer2/Weight/Assignout_layer2/Weight/read:02out_layer2/truncated_normal:08
Y
out_layer2/Bias:0out_layer2/Bias/Assignout_layer2/Bias/read:02out_layer2/Const:08

output_out_layer3/Weight:0output_out_layer3/Weight/Assignoutput_out_layer3/Weight/read:02$output_out_layer3/truncated_normal:08
u
output_out_layer3/Bias:0output_out_layer3/Bias/Assignoutput_out_layer3/Bias/read:02output_out_layer3/Const:08
|
optimizer/beta1_power:0optimizer/beta1_power/Assignoptimizer/beta1_power/read:02%optimizer/beta1_power/initial_value:0
|
optimizer/beta2_power:0optimizer/beta2_power/Assignoptimizer/beta2_power/read:02%optimizer/beta2_power/initial_value:0

out_layer1/Weight/Adam:0out_layer1/Weight/Adam/Assignout_layer1/Weight/Adam/read:02*out_layer1/Weight/Adam/Initializer/zeros:0

out_layer1/Weight/Adam_1:0out_layer1/Weight/Adam_1/Assignout_layer1/Weight/Adam_1/read:02,out_layer1/Weight/Adam_1/Initializer/zeros:0
|
out_layer1/Bias/Adam:0out_layer1/Bias/Adam/Assignout_layer1/Bias/Adam/read:02(out_layer1/Bias/Adam/Initializer/zeros:0

out_layer1/Bias/Adam_1:0out_layer1/Bias/Adam_1/Assignout_layer1/Bias/Adam_1/read:02*out_layer1/Bias/Adam_1/Initializer/zeros:0

out_layer2/Weight/Adam:0out_layer2/Weight/Adam/Assignout_layer2/Weight/Adam/read:02*out_layer2/Weight/Adam/Initializer/zeros:0

out_layer2/Weight/Adam_1:0out_layer2/Weight/Adam_1/Assignout_layer2/Weight/Adam_1/read:02,out_layer2/Weight/Adam_1/Initializer/zeros:0
|
out_layer2/Bias/Adam:0out_layer2/Bias/Adam/Assignout_layer2/Bias/Adam/read:02(out_layer2/Bias/Adam/Initializer/zeros:0

out_layer2/Bias/Adam_1:0out_layer2/Bias/Adam_1/Assignout_layer2/Bias/Adam_1/read:02*out_layer2/Bias/Adam_1/Initializer/zeros:0
 
output_out_layer3/Weight/Adam:0$output_out_layer3/Weight/Adam/Assign$output_out_layer3/Weight/Adam/read:021output_out_layer3/Weight/Adam/Initializer/zeros:0
¨
!output_out_layer3/Weight/Adam_1:0&output_out_layer3/Weight/Adam_1/Assign&output_out_layer3/Weight/Adam_1/read:023output_out_layer3/Weight/Adam_1/Initializer/zeros:0

output_out_layer3/Bias/Adam:0"output_out_layer3/Bias/Adam/Assign"output_out_layer3/Bias/Adam/read:02/output_out_layer3/Bias/Adam/Initializer/zeros:0
 
output_out_layer3/Bias/Adam_1:0$output_out_layer3/Bias/Adam_1/Assign$output_out_layer3/Bias/Adam_1/read:021output_out_layer3/Bias/Adam_1/Initializer/zeros:0*Ť
serving_default
 
X
X:0˙˙˙˙˙˙˙˙˙W
accuracy_calculation/prediction4
!accuracy_calculation/prediction:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict