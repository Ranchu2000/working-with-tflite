��	
�!�!
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
�
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( �
n
Restore
file_pattern
tensor_name
tensor"dt"

dttype"#
preferred_shardint����������
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
I
Save
filename
tensor_names	
data2T"
T
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
��*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_2/kernel/m
�
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	�
*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
��*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_2/kernel/v
�
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	�
*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
�#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�#
value�#B�# B�#
L
	model
	infer
restore
save
	train

signatures*
�
layer-0
layer_with_weights-0
layer-1
	layer_with_weights-1
	layer-2

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature*
* 
* 
* 
* 
/
	train
	infer
save
restore* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
�
,iter

-beta_1

.beta_2
	/decay
0learning_ratemEmF$mG%mHvIvJ$vK%vL*
 
0
1
$2
%3*
 
0
1
$2
%3*
* 
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
d^
VARIABLE_VALUEdense_1/kernel<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_1/bias:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
d^
VARIABLE_VALUEdense_2/kernel<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_2/bias:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
RL
VARIABLE_VALUE	Adam/iter/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEAdam/beta_11model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEAdam/beta_21model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUE
Adam/decay0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/learning_rate8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
	2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUEAdam/dense_1/kernel/m^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/bias/m\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/kernel/m^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/bias/m\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/kernel/v^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_1/bias/v\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/kernel/v^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/dense_2/bias/v\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
r
infer_xPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallinfer_xdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_90888
X
restore_checkpoint_pathPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallrestore_checkpoint_pathdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
::::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_90924
U
save_checkpoint_pathPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsave_checkpoint_pathdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_90903
r
train_xPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
j
train_yPlaceholder*'
_output_shapes
:���������
*
dtype0*
shape:���������

�
StatefulPartitionedCall_3StatefulPartitionedCalltrain_xtrain_ydense_1/kerneldense_1/biasdense_2/kerneldense_2/biasAdam/learning_rate	Adam/iterAdam/beta_1Adam/beta_2Adam/dense_1/kernel/mAdam/dense_1/kernel/vAdam/dense_1/bias/mAdam/dense_1/bias/vAdam/dense_2/kernel/mAdam/dense_2/kernel/vAdam/dense_2/bias/mAdam/dense_2/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *%
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_90871
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_91593
�
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_91654��
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91211

inputs!
dense_1_91189:
��
dense_1_91191:	� 
dense_2_91205:	�

dense_2_91207:

identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_91175�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_91189dense_1_91191*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_91188�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_91205dense_2_91207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_91204w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_save_90981
checkpoint_path0
read_readvariableop_resource:
��-
read_1_readvariableop_resource:	�1
read_2_readvariableop_resource:	�
,
read_3_readvariableop_resource:


identity_4��Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOp�saver
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
��*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	�
*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
p
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:
*
dtype0Z

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
save/tensor_namesConst*
_output_shapes
:*
dtype0*W
valueNBLBdense_1/kernel:0Bdense_1/bias:0Bdense_2/kernel:0Bdense_2/bias:0�
saveSavecheckpoint_pathsave/tensor_names:output:0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
T
2*
_output_shapes
 O

Identity_4Identitycheckpoint_path^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^save*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2
savesave:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_91175

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_91188

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_infer_90945
xG
3sequential_2_dense_1_matmul_readvariableop_resource:
��C
4sequential_2_dense_1_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity

identity_1��+sequential_2/dense_1/BiasAdd/ReadVariableOp�*sequential_2/dense_1/MatMul/ReadVariableOp�+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOpk
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
sequential_2/flatten/ReshapeReshapex#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_2/dense_1/MatMulMatMul%sequential_2/flatten/Reshape:output:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
k
SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������
t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_1IdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91383

inputs:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�
5
'dense_2_biasadd_readvariableop_resource:

identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  m
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_restore_90831
checkpoint_path-
assignvariableop_resource:
��*
assignvariableop_1_resource:	�.
assignvariableop_2_resource:	�
)
assignvariableop_3_resource:

identity

identity_1

identity_2

identity_3��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�restore�	restore_1�	restore_2�	restore_3d
restore/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_1/kernel:0e
restoreRestorecheckpoint_pathrestore/tensor_name:output:0*
_output_shapes
:*
dt0t
AssignVariableOpAssignVariableOpassignvariableop_resourcerestore:tensor:0*
_output_shapes
 *
dtype0d
restore_1/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_1/bias:0s
	restore_1Restorecheckpoint_pathrestore_1/tensor_name:output:0^restore*
_output_shapes
:*
dt0z
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourcerestore_1:tensor:0*
_output_shapes
 *
dtype0f
restore_2/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_2/kernel:0u
	restore_2Restorecheckpoint_pathrestore_2/tensor_name:output:0
^restore_1*
_output_shapes
:*
dt0z
AssignVariableOp_2AssignVariableOpassignvariableop_2_resourcerestore_2:tensor:0*
_output_shapes
 *
dtype0d
restore_3/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_2/bias:0u
	restore_3Restorecheckpoint_pathrestore_3/tensor_name:output:0
^restore_2*
_output_shapes
:*
dt0z
AssignVariableOp_3AssignVariableOpassignvariableop_3_resourcerestore_3:tensor:0*
_output_shapes
 *
dtype0R
IdentityIdentityrestore_1:tensor:0^NoOp*
T0*
_output_shapes
:R

Identity_1Identityrestore:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_2Identityrestore_3:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_3Identityrestore_2:tensor:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^restore
^restore_1
^restore_2
^restore_3*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32
restorerestore2
	restore_1	restore_12
	restore_2	restore_22
	restore_3	restore_3:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�H
�

!__inference__traced_restore_91654
file_prefix3
assignvariableop_dense_1_kernel:
��.
assignvariableop_1_dense_1_bias:	�4
!assignvariableop_2_dense_2_kernel:	�
-
assignvariableop_3_dense_2_bias:
&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: <
(assignvariableop_9_adam_dense_1_kernel_m:
��6
'assignvariableop_10_adam_dense_1_bias_m:	�<
)assignvariableop_11_adam_dense_2_kernel_m:	�
5
'assignvariableop_12_adam_dense_2_bias_m:
=
)assignvariableop_13_adam_dense_1_kernel_v:
��6
'assignvariableop_14_adam_dense_1_bias_v:	�<
)assignvariableop_15_adam_dense_2_kernel_v:	�
5
'assignvariableop_16_adam_dense_2_bias_v:

identity_18��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp(assignvariableop_9_adam_dense_1_kernel_mIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp'assignvariableop_10_adam_dense_1_bias_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp)assignvariableop_11_adam_dense_2_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp'assignvariableop_12_adam_dense_2_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_dense_1_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_1_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_2_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_2_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
,__inference_sequential_2_layer_call_fn_91222
flatten_input
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_91211o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_nameflatten_input
�
�
,__inference_sequential_2_layer_call_fn_91364

inputs
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_91278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference_train_91142
x
yG
3sequential_2_dense_1_matmul_readvariableop_resource:
��C
4sequential_2_dense_1_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�
B
4sequential_2_dense_2_biasadd_readvariableop_resource:
+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: 8
$adam_adam_update_resourceapplyadam_m:
��8
$adam_adam_update_resourceapplyadam_v:
��5
&adam_adam_update_1_resourceapplyadam_m:	�5
&adam_adam_update_1_resourceapplyadam_v:	�9
&adam_adam_update_2_resourceapplyadam_m:	�
9
&adam_adam_update_2_resourceapplyadam_v:	�
4
&adam_adam_update_3_resourceapplyadam_m:
4
&adam_adam_update_3_resourceapplyadam_v:

identity��Adam/Adam/AssignAddVariableOp�"Adam/Adam/update/ResourceApplyAdam�$Adam/Adam/update_1/ResourceApplyAdam�$Adam/Adam/update_2/ResourceApplyAdam�$Adam/Adam/update_3/ResourceApplyAdam�Adam/Cast/ReadVariableOp�Adam/Cast_2/ReadVariableOp�Adam/Cast_3/ReadVariableOp�Adam/ReadVariableOp�+sequential_2/dense_1/BiasAdd/ReadVariableOp�*sequential_2/dense_1/MatMul/ReadVariableOp�+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOpk
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
sequential_2/flatten/ReshapeReshapex#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_2/dense_1/MatMulMatMul%sequential_2/flatten/Reshape:output:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
c
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape%sequential_2/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:�
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape%sequential_2/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: �
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:�
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:�
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape%sequential_2/dense_2/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:�������������������
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :s
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapey*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:�
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapeyLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:�������������������
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:���������:�������������������
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:���������q
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������x
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nanDivNoNanones:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/SumSumIgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/ReshapeReshapeGgradient_tape/categorical_crossentropy/weighted_loss/value/Sum:output:0Igradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegNeg5categorical_crossentropy/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1DivNoNanBgradient_tape/categorical_crossentropy/weighted_loss/value/Neg:y:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2DivNoNanKgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/mulMulones:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1SumBgradient_tape/categorical_crossentropy/weighted_loss/value/mul:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1ReshapeIgradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
<gradient_tape/categorical_crossentropy/weighted_loss/ReshapeReshapeKgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
9gradient_tape/categorical_crossentropy/weighted_loss/TileTileEgradient_tape/categorical_crossentropy/weighted_loss/Reshape:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Const:output:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1ReshapeBgradient_tape/categorical_crossentropy/weighted_loss/Tile:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:�
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeShape.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
:�
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1TileGgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:����������
8gradient_tape/categorical_crossentropy/weighted_loss/MulMulDgradient_tape/categorical_crossentropy/weighted_loss/Tile_1:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0*
T0*
_output_shapes
:�
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape<gradient_tape/categorical_crossentropy/weighted_loss/Mul:z:0Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0*
T0*#
_output_shapes
:����������
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul\gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims:output:0Ecategorical_crossentropy/softmax_cross_entropy_with_logits:backprop:0*
T0*0
_output_shapes
:�������������������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax
LogSoftmaxKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0*
T0*0
_output_shapes
:�������������������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegNeg`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax:logsoftmax:0*
T0*0
_output_shapes
:�������������������
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0bgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1Mul^gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1:output:0Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Neg:y:0*
T0*0
_output_shapes
:�������������������
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape%sequential_2/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapePgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul:z:0Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0*
T0*'
_output_shapes
:���������
�
6gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGradBiasAddGrad[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:
�
0gradient_tape/sequential_2/dense_2/MatMul/MatMulMatMul[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
2gradient_tape/sequential_2/dense_2/MatMul/MatMul_1MatMul'sequential_2/dense_1/Relu:activations:0[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:	�
*
transpose_a(�
+gradient_tape/sequential_2/dense_1/ReluGradReluGrad:gradient_tape/sequential_2/dense_2/MatMul/MatMul:product:0'sequential_2/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
6gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGradBiasAddGrad7gradient_tape/sequential_2/dense_1/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
0gradient_tape/sequential_2/dense_1/MatMul/MatMulMatMul%sequential_2/flatten/Reshape:output:07gradient_tape/sequential_2/dense_1/ReluGrad:backprops:0*
T0* 
_output_shapes
:
��*
transpose_a(r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *���3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/Identity_3Identity:gradient_tape/sequential_2/dense_1/MatMul/MatMul:product:0*
T0* 
_output_shapes
:
���
Adam/Identity_4Identity?gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_5Identity<gradient_tape/sequential_2/dense_2/MatMul/MatMul_1:product:0*
T0*
_output_shapes
:	�
�
Adam/Identity_6Identity?gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:
�
Adam/IdentityN	IdentityN:gradient_tape/sequential_2/dense_1/MatMul/MatMul:product:0?gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGrad:output:0<gradient_tape/sequential_2/dense_2/MatMul/MatMul_1:product:0?gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential_2/dense_1/MatMul/MatMul:product:0?gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGrad:output:0<gradient_tape/sequential_2/dense_2/MatMul/MatMul_1:product:0?gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGrad:output:0*
T

2*+
_gradient_op_typeCustomGradient-91115*\
_output_shapesJ
H:
��:�:	�
:
:
��:�:	�
:
�
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam3sequential_2_dense_1_matmul_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0+^sequential_2/dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@sequential_2/dense_1/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam4sequential_2_dense_1_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1,^sequential_2/dense_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*G
_class=
;9loc:@sequential_2/dense_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam3sequential_2_dense_2_matmul_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:2+^sequential_2/dense_2/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@sequential_2/dense_2/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam4sequential_2_dense_2_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3,^sequential_2/dense_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*G
_class=
;9loc:@sequential_2/dense_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	n
IdentityIdentity0categorical_crossentropy/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������
: : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey:L
H
F
_class<
:8loc:@sequential_2/dense_1/MatMul/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential_2/dense_1/MatMul/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_1/BiasAdd/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_1/BiasAdd/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential_2/dense_2/MatMul/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential_2/dense_2/MatMul/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_2/BiasAdd/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_2/BiasAdd/ReadVariableOp/resource
�
�
#__inference_signature_wrapper_90924
checkpoint_path
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity

identity_1

identity_2

identity_3��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcheckpoint_pathunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
::::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *"
fR
__inference_restore_90831`
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:b

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:b

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*
_output_shapes
:b

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*
_output_shapes
:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
�
#__inference_signature_wrapper_90903
checkpoint_path
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcheckpoint_pathunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_save_90811^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
C
'__inference_flatten_layer_call_fn_91407

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_91175a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_restore_90964
checkpoint_path-
assignvariableop_resource:
��*
assignvariableop_1_resource:	�.
assignvariableop_2_resource:	�
)
assignvariableop_3_resource:

identity

identity_1

identity_2

identity_3��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�restore�	restore_1�	restore_2�	restore_3d
restore/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_1/kernel:0e
restoreRestorecheckpoint_pathrestore/tensor_name:output:0*
_output_shapes
:*
dt0t
AssignVariableOpAssignVariableOpassignvariableop_resourcerestore:tensor:0*
_output_shapes
 *
dtype0d
restore_1/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_1/bias:0s
	restore_1Restorecheckpoint_pathrestore_1/tensor_name:output:0^restore*
_output_shapes
:*
dt0z
AssignVariableOp_1AssignVariableOpassignvariableop_1_resourcerestore_1:tensor:0*
_output_shapes
 *
dtype0f
restore_2/tensor_nameConst*
_output_shapes
: *
dtype0*!
valueB Bdense_2/kernel:0u
	restore_2Restorecheckpoint_pathrestore_2/tensor_name:output:0
^restore_1*
_output_shapes
:*
dt0z
AssignVariableOp_2AssignVariableOpassignvariableop_2_resourcerestore_2:tensor:0*
_output_shapes
 *
dtype0d
restore_3/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bdense_2/bias:0u
	restore_3Restorecheckpoint_pathrestore_3/tensor_name:output:0
^restore_2*
_output_shapes
:*
dt0z
AssignVariableOp_3AssignVariableOpassignvariableop_3_resourcerestore_3:tensor:0*
_output_shapes
 *
dtype0R
IdentityIdentityrestore_1:tensor:0^NoOp*
T0*
_output_shapes
:R

Identity_1Identityrestore:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_2Identityrestore_3:tensor:0^NoOp*
T0*
_output_shapes
:T

Identity_3Identityrestore_2:tensor:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^restore
^restore_1
^restore_2
^restore_3*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32
restorerestore2
	restore_1	restore_12
	restore_2	restore_22
	restore_3	restore_3:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91278

inputs!
dense_1_91267:
��
dense_1_91269:	� 
dense_2_91272:	�

dense_2_91274:

identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_91175�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_91267dense_1_91269*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_91188�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_91272dense_2_91274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_91204w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
 __inference__wrapped_model_91162
flatten_inputG
3sequential_2_dense_1_matmul_readvariableop_resource:
��C
4sequential_2_dense_1_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity��+sequential_2/dense_1/BiasAdd/ReadVariableOp�*sequential_2/dense_1/MatMul/ReadVariableOp�+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOpk
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
sequential_2/flatten/ReshapeReshapeflatten_input#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_2/dense_1/MatMulMatMul%sequential_2/flatten/Reshape:output:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:Z V
+
_output_shapes
:���������
'
_user_specified_nameflatten_input
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91402

inputs:
&dense_1_matmul_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�9
&dense_2_matmul_readvariableop_resource:	�
5
'dense_2_biasadd_readvariableop_resource:

identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  m
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_sequential_2_layer_call_fn_91351

inputs
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_91211o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
B__inference_dense_2_layer_call_and_return_conditional_losses_91452

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_internal_grad_fn_91557
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7

identity_4

identity_5

identity_6

identity_7O
IdentityIdentityresult_grads_0*
T0* 
_output_shapes
:
��L

Identity_1Identityresult_grads_1*
T0*
_output_shapes	
:�P

Identity_2Identityresult_grads_2*
T0*
_output_shapes
:	�
K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
:
�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_0result_grads_1result_grads_2result_grads_3*
T

2*+
_gradient_op_typeCustomGradient-91540*\
_output_shapesJ
H:
��:�:	�
:
:
��:�:	�
:
U

Identity_4IdentityIdentityN:output:0*
T0* 
_output_shapes
:
��P

Identity_5IdentityIdentityN:output:1*
T0*
_output_shapes	
:�T

Identity_6IdentityIdentityN:output:2*
T0*
_output_shapes
:	�
O

Identity_7IdentityIdentityN:output:3*
T0*
_output_shapes
:
"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*[
_input_shapesJ
H:
��:�:	�
:
:
��:�:	�
:
:P L
 
_output_shapes
:
��
(
_user_specified_nameresult_grads_0:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_1:OK

_output_shapes
:	�

(
_user_specified_nameresult_grads_2:JF

_output_shapes
:

(
_user_specified_nameresult_grads_3:PL
 
_output_shapes
:
��
(
_user_specified_nameresult_grads_4:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_5:OK

_output_shapes
:	�

(
_user_specified_nameresult_grads_6:JF

_output_shapes
:

(
_user_specified_nameresult_grads_7
�
�
'__inference_dense_1_layer_call_fn_91422

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_91188p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91317
flatten_input!
dense_1_91306:
��
dense_1_91308:	� 
dense_2_91311:	�

dense_2_91313:

identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_91175�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_91306dense_1_91308*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_91188�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_91311dense_2_91313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_91204w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_nameflatten_input
�
�
__inference_save_90811
checkpoint_path0
read_readvariableop_resource:
��-
read_1_readvariableop_resource:	�1
read_2_readvariableop_resource:	�
,
read_3_readvariableop_resource:


identity_4��Read/ReadVariableOp�Read_1/ReadVariableOp�Read_2/ReadVariableOp�Read_3/ReadVariableOp�saver
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
��*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��q
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes	
:�*
dtype0[

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�u
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	�
*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
p
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes
:
*
dtype0Z

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
save/tensor_namesConst*
_output_shapes
:*
dtype0*W
valueNBLBdense_1/kernel:0Bdense_1/bias:0Bdense_2/kernel:0Bdense_2/bias:0�
saveSavecheckpoint_pathsave/tensor_names:output:0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0*
T
2*
_output_shapes
 O

Identity_4Identitycheckpoint_path^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^save*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2
savesave:G C

_output_shapes
: 
)
_user_specified_namecheckpoint_path
�
�
,__inference_sequential_2_layer_call_fn_91302
flatten_input
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_91278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_nameflatten_input
�
�
#__inference_signature_wrapper_90871
x
y
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

	unknown_3: 
	unknown_4:	 
	unknown_5: 
	unknown_6: 
	unknown_7:
��
	unknown_8:
��
	unknown_9:	�

unknown_10:	�

unknown_11:	�


unknown_12:	�


unknown_13:


unknown_14:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *%
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_train_694^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������
: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey
�
�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91332
flatten_input!
dense_1_91321:
��
dense_1_91323:	� 
dense_2_91326:	�

dense_2_91328:

identity��dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_91175�
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_91321dense_1_91323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_91188�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_91326dense_2_91328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_91204w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_nameflatten_input
��
�
__inference_train_694
x
yG
3sequential_2_dense_1_matmul_readvariableop_resource:
��C
4sequential_2_dense_1_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�
B
4sequential_2_dense_2_biasadd_readvariableop_resource:
+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: 8
$adam_adam_update_resourceapplyadam_m:
��8
$adam_adam_update_resourceapplyadam_v:
��5
&adam_adam_update_1_resourceapplyadam_m:	�5
&adam_adam_update_1_resourceapplyadam_v:	�9
&adam_adam_update_2_resourceapplyadam_m:	�
9
&adam_adam_update_2_resourceapplyadam_v:	�
4
&adam_adam_update_3_resourceapplyadam_m:
4
&adam_adam_update_3_resourceapplyadam_v:

identity��Adam/Adam/AssignAddVariableOp�"Adam/Adam/update/ResourceApplyAdam�$Adam/Adam/update_1/ResourceApplyAdam�$Adam/Adam/update_2/ResourceApplyAdam�$Adam/Adam/update_3/ResourceApplyAdam�Adam/Cast/ReadVariableOp�Adam/Cast_2/ReadVariableOp�Adam/Cast_3/ReadVariableOp�Adam/ReadVariableOp�+sequential_2/dense_1/BiasAdd/ReadVariableOp�*sequential_2/dense_1/MatMul/ReadVariableOp�+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOpk
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
sequential_2/flatten/ReshapeReshapex#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_2/dense_1/MatMulMatMul%sequential_2/flatten/Reshape:output:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
c
categorical_crossentropy/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?categorical_crossentropy/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShape%sequential_2/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:�
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape%sequential_2/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
>categorical_crossentropy/softmax_cross_entropy_with_logits/SubSubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_1:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: �
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/beginPackBcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:�
Ecategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
@categorical_crossentropy/softmax_cross_entropy_with_logits/SliceSliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/begin:output:0Ncategorical_crossentropy/softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:�
Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Fcategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Acategorical_crossentropy/softmax_cross_entropy_with_logits/concatConcatV2Scategorical_crossentropy/softmax_cross_entropy_with_logits/concat/values_0:output:0Icategorical_crossentropy/softmax_cross_entropy_with_logits/Slice:output:0Ocategorical_crossentropy/softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape%sequential_2/dense_2/BiasAdd:output:0Jcategorical_crossentropy/softmax_cross_entropy_with_logits/concat:output:0*
T0*0
_output_shapes
:�������������������
Acategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :s
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2Shapey*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1SubJcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank_2:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/beginPackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:�
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1SliceKcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape_2:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:�
Lcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:
����������
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ccategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1ConcatV2Ucategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/values_0:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_1:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapeyLcategorical_crossentropy/softmax_cross_entropy_with_logits/concat_1:output:0*
T0*0
_output_shapes
:�������������������
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0Mcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:���������:�������������������
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
@categorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2SubHcategorical_crossentropy/softmax_cross_entropy_with_logits/Rank:output:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: �
Hcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: �
Gcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/sizePackDcategorical_crossentropy/softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:�
Bcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2SliceIcategorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0Qcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/begin:output:0Pcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:�
Dcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2ReshapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0Kcategorical_crossentropy/softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:���������q
,categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*categorical_crossentropy/weighted_loss/MulMulMcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_2:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:���������x
.categorical_crossentropy/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
*categorical_crossentropy/weighted_loss/SumSum.categorical_crossentropy/weighted_loss/Mul:z:07categorical_crossentropy/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: �
3categorical_crossentropy/weighted_loss/num_elementsSize.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
: �
8categorical_crossentropy/weighted_loss/num_elements/CastCast<categorical_crossentropy/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+categorical_crossentropy/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : t
2categorical_crossentropy/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,categorical_crossentropy/weighted_loss/rangeRange;categorical_crossentropy/weighted_loss/range/start:output:04categorical_crossentropy/weighted_loss/Rank:output:0;categorical_crossentropy/weighted_loss/range/delta:output:0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/Sum_1Sum3categorical_crossentropy/weighted_loss/Sum:output:05categorical_crossentropy/weighted_loss/range:output:0*
T0*
_output_shapes
: �
,categorical_crossentropy/weighted_loss/valueDivNoNan5categorical_crossentropy/weighted_loss/Sum_1:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
@gradient_tape/categorical_crossentropy/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Pgradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
Egradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nanDivNoNanones:output:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/SumSumIgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/value/ReshapeReshapeGgradient_tape/categorical_crossentropy/weighted_loss/value/Sum:output:0Igradient_tape/categorical_crossentropy/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/NegNeg5categorical_crossentropy/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1DivNoNanBgradient_tape/categorical_crossentropy/weighted_loss/value/Neg:y:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Ggradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2DivNoNanKgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_1:z:0<categorical_crossentropy/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
>gradient_tape/categorical_crossentropy/weighted_loss/value/mulMulones:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
@gradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1SumBgradient_tape/categorical_crossentropy/weighted_loss/value/mul:z:0Ugradient_tape/categorical_crossentropy/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape_1ReshapeIgradient_tape/categorical_crossentropy/weighted_loss/value/Sum_1:output:0Kgradient_tape/categorical_crossentropy/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: �
Bgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
<gradient_tape/categorical_crossentropy/weighted_loss/ReshapeReshapeKgradient_tape/categorical_crossentropy/weighted_loss/value/Reshape:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
9gradient_tape/categorical_crossentropy/weighted_loss/TileTileEgradient_tape/categorical_crossentropy/weighted_loss/Reshape:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Const:output:0*
T0*
_output_shapes
: �
Dgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
>gradient_tape/categorical_crossentropy/weighted_loss/Reshape_1ReshapeBgradient_tape/categorical_crossentropy/weighted_loss/Tile:output:0Mgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:�
:gradient_tape/categorical_crossentropy/weighted_loss/ShapeShape.categorical_crossentropy/weighted_loss/Mul:z:0*
T0*
_output_shapes
:�
;gradient_tape/categorical_crossentropy/weighted_loss/Tile_1TileGgradient_tape/categorical_crossentropy/weighted_loss/Reshape_1:output:0Cgradient_tape/categorical_crossentropy/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:����������
8gradient_tape/categorical_crossentropy/weighted_loss/MulMulDgradient_tape/categorical_crossentropy/weighted_loss/Tile_1:output:05categorical_crossentropy/weighted_loss/Const:output:0*
T0*#
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ShapeShapeAcategorical_crossentropy/softmax_cross_entropy_with_logits:loss:0*
T0*
_output_shapes
:�
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ReshapeReshape<gradient_tape/categorical_crossentropy/weighted_loss/Mul:z:0Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape:output:0*
T0*#
_output_shapes
:����������
Wgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims/dim:output:0*
T0*'
_output_shapes
:����������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul\gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims:output:0Ecategorical_crossentropy/softmax_cross_entropy_with_logits:backprop:0*
T0*0
_output_shapes
:�������������������
Sgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax
LogSoftmaxKcategorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0*
T0*0
_output_shapes
:�������������������
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/NegNeg`gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/LogSoftmax:logsoftmax:0*
T0*0
_output_shapes
:�������������������
Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ugradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1
ExpandDimsYgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape:output:0bgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:����������
Ngradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul_1Mul^gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/ExpandDims_1:output:0Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Neg:y:0*
T0*0
_output_shapes
:�������������������
Pgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1Shape%sequential_2/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1ReshapePgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mul:z:0Ygradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Shape_1:output:0*
T0*'
_output_shapes
:���������
�
6gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGradBiasAddGrad[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:
�
0gradient_tape/sequential_2/dense_2/MatMul/MatMulMatMul[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
2gradient_tape/sequential_2/dense_2/MatMul/MatMul_1MatMul'sequential_2/dense_1/Relu:activations:0[gradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*
_output_shapes
:	�
*
transpose_a(�
+gradient_tape/sequential_2/dense_1/ReluGradReluGrad:gradient_tape/sequential_2/dense_2/MatMul/MatMul:product:0'sequential_2/dense_1/Relu:activations:0*
T0*(
_output_shapes
:�����������
6gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGradBiasAddGrad7gradient_tape/sequential_2/dense_1/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
0gradient_tape/sequential_2/dense_1/MatMul/MatMulMatMul%sequential_2/flatten/Reshape:output:07gradient_tape/sequential_2/dense_1/ReluGrad:backprops:0*
T0* 
_output_shapes
:
��*
transpose_a(r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *���3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/Identity_3Identity:gradient_tape/sequential_2/dense_1/MatMul/MatMul:product:0*
T0* 
_output_shapes
:
���
Adam/Identity_4Identity?gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��
Adam/Identity_5Identity<gradient_tape/sequential_2/dense_2/MatMul/MatMul_1:product:0*
T0*
_output_shapes
:	�
�
Adam/Identity_6Identity?gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:
�
Adam/IdentityN	IdentityN:gradient_tape/sequential_2/dense_1/MatMul/MatMul:product:0?gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGrad:output:0<gradient_tape/sequential_2/dense_2/MatMul/MatMul_1:product:0?gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGrad:output:0:gradient_tape/sequential_2/dense_1/MatMul/MatMul:product:0?gradient_tape/sequential_2/dense_1/BiasAdd/BiasAddGrad:output:0<gradient_tape/sequential_2/dense_2/MatMul/MatMul_1:product:0?gradient_tape/sequential_2/dense_2/BiasAdd/BiasAddGrad:output:0*
T

2*)
_gradient_op_typeCustomGradient-667*\
_output_shapesJ
H:
��:�:	�
:
:
��:�:	�
:
�
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam3sequential_2_dense_1_matmul_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0+^sequential_2/dense_1/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@sequential_2/dense_1/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam4sequential_2_dense_1_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1,^sequential_2/dense_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*G
_class=
;9loc:@sequential_2/dense_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam3sequential_2_dense_2_matmul_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:2+^sequential_2/dense_2/MatMul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*F
_class<
:8loc:@sequential_2/dense_2/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam4sequential_2_dense_2_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3,^sequential_2/dense_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*G
_class=
;9loc:@sequential_2/dense_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(�
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	n
IdentityIdentity0categorical_crossentropy/weighted_loss/value:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������
: : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex:JF
'
_output_shapes
:���������


_user_specified_namey:L
H
F
_class<
:8loc:@sequential_2/dense_1/MatMul/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential_2/dense_1/MatMul/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_1/BiasAdd/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_1/BiasAdd/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential_2/dense_2/MatMul/ReadVariableOp/resource:LH
F
_class<
:8loc:@sequential_2/dense_2/MatMul/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_2/BiasAdd/ReadVariableOp/resource:MI
G
_class=
;9loc:@sequential_2/dense_2/BiasAdd/ReadVariableOp/resource
�	
�
B__inference_dense_2_layer_call_and_return_conditional_losses_91204

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�-
�
__inference__traced_save_91593
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B<model/layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB/model/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB1model/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB0model/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-0/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-0/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB^model/layer_with_weights-1/kernel/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\model/layer_with_weights-1/bias/.OPTIMIZER_SLOT/model/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes|
z: :
��:�:	�
:
: : : : : :
��:�:	�
:
:
��:�:	�
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :&
"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:

_output_shapes
: 
�
�
"__inference_internal_grad_fn_91529
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7

identity_4

identity_5

identity_6

identity_7O
IdentityIdentityresult_grads_0*
T0* 
_output_shapes
:
��L

Identity_1Identityresult_grads_1*
T0*
_output_shapes	
:�P

Identity_2Identityresult_grads_2*
T0*
_output_shapes
:	�
K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
:
�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_0result_grads_1result_grads_2result_grads_3*
T

2*+
_gradient_op_typeCustomGradient-91512*\
_output_shapesJ
H:
��:�:	�
:
:
��:�:	�
:
U

Identity_4IdentityIdentityN:output:0*
T0* 
_output_shapes
:
��P

Identity_5IdentityIdentityN:output:1*
T0*
_output_shapes	
:�T

Identity_6IdentityIdentityN:output:2*
T0*
_output_shapes
:	�
O

Identity_7IdentityIdentityN:output:3*
T0*
_output_shapes
:
"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*[
_input_shapesJ
H:
��:�:	�
:
:
��:�:	�
:
:P L
 
_output_shapes
:
��
(
_user_specified_nameresult_grads_0:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_1:OK

_output_shapes
:	�

(
_user_specified_nameresult_grads_2:JF

_output_shapes
:

(
_user_specified_nameresult_grads_3:PL
 
_output_shapes
:
��
(
_user_specified_nameresult_grads_4:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_5:OK

_output_shapes
:	�

(
_user_specified_nameresult_grads_6:JF

_output_shapes
:

(
_user_specified_nameresult_grads_7
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_91413

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_infer_286
xG
3sequential_2_dense_1_matmul_readvariableop_resource:
��C
4sequential_2_dense_1_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity

identity_1��+sequential_2/dense_1/BiasAdd/ReadVariableOp�*sequential_2/dense_1/MatMul/ReadVariableOp�+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOpk
sequential_2/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  �
sequential_2/flatten/ReshapeReshapex#sequential_2/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_2/dense_1/MatMulMatMul%sequential_2/flatten/Reshape:output:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
k
SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������
t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
b

Identity_1IdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex
�	
�
#__inference_signature_wrapper_90888
x
unknown:
��
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_infer_286o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_91433

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_2_layer_call_fn_91442

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_91204o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs8
"__inference_internal_grad_fn_91529CustomGradient-667:
"__inference_internal_grad_fn_91557CustomGradient-91115"�L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
infer�
)
x$
	infer_x:0���������:
logits0
StatefulPartitionedCall:0���������
:
output0
StatefulPartitionedCall:1���������
tensorflow/serving/predict*�
restore�
2
checkpoint_path
restore_checkpoint_path:0 5
dense_1/bias:0#
StatefulPartitionedCall_1:07
dense_1/kernel:0#
StatefulPartitionedCall_1:15
dense_2/bias:0#
StatefulPartitionedCall_1:27
dense_2/kernel:0#
StatefulPartitionedCall_1:3tensorflow/serving/predict*�
save�
/
checkpoint_path
save_checkpoint_path:0 4
checkpoint_path!
StatefulPartitionedCall_2:0 tensorflow/serving/predict*�
train�
)
x$
	train_x:0���������
%
y 
	train_y:0���������
)
loss!
StatefulPartitionedCall_3:0 tensorflow/serving/predict:�f
f
	model
	infer
restore
save
	train

signatures"
_generic_user_object
�
layer-0
layer_with_weights-0
layer-1
	layer_with_weights-1
	layer-2

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
�2�
__inference_infer_90945�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *!�
����������
�2�
__inference_restore_90964�
���
FullArgSpec&
args�
jself
jcheckpoint_path
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�2�
__inference_save_90981�
���
FullArgSpec&
args�
jself
jcheckpoint_path
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�2�
__inference_train_91142�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *;�8
����������
����������

D
	train
	infer
save
restore"
signature_map
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,iter

-beta_1

.beta_2
	/decay
0learning_ratemEmF$mG%mHvIvJ$vK%vL"
	optimizer
<
0
1
$2
%3"
trackable_list_wrapper
<
0
1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_sequential_2_layer_call_fn_91222
,__inference_sequential_2_layer_call_fn_91351
,__inference_sequential_2_layer_call_fn_91364
,__inference_sequential_2_layer_call_fn_91302�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
G__inference_sequential_2_layer_call_and_return_conditional_losses_91383
G__inference_sequential_2_layer_call_and_return_conditional_losses_91402
G__inference_sequential_2_layer_call_and_return_conditional_losses_91317
G__inference_sequential_2_layer_call_and_return_conditional_losses_91332�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_91162flatten_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_90871xy"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_90888x"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_90903checkpoint_path"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_90924checkpoint_path"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_flatten_layer_call_fn_91407�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_flatten_layer_call_and_return_conditional_losses_91413�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
": 
��2dense_1/kernel
:�2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_dense_1_layer_call_fn_91422�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_91433�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!:	�
2dense_2/kernel
:
2dense_2/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_dense_2_layer_call_fn_91442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_2_layer_call_and_return_conditional_losses_91452�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
	2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
':%
��2Adam/dense_1/kernel/m
 :�2Adam/dense_1/bias/m
&:$	�
2Adam/dense_2/kernel/m
:
2Adam/dense_2/bias/m
':%
��2Adam/dense_1/kernel/v
 :�2Adam/dense_1/bias/v
&:$	�
2Adam/dense_2/kernel/v
:
2Adam/dense_2/bias/v�
 __inference__wrapped_model_91162u$%:�7
0�-
+�(
flatten_input���������
� "1�.
,
dense_2!�
dense_2���������
�
B__inference_dense_1_layer_call_and_return_conditional_losses_91433^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� |
'__inference_dense_1_layer_call_fn_91422Q0�-
&�#
!�
inputs����������
� "������������
B__inference_dense_2_layer_call_and_return_conditional_losses_91452]$%0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� {
'__inference_dense_2_layer_call_fn_91442P$%0�-
&�#
!�
inputs����������
� "����������
�
B__inference_flatten_layer_call_and_return_conditional_losses_91413]3�0
)�&
$�!
inputs���������
� "&�#
�
0����������
� {
'__inference_flatten_layer_call_fn_91407P3�0
)�&
$�!
inputs���������
� "������������
__inference_infer_90945�$%.�+
$�!
�
x���������
� "[�X
*
logits �
logits���������

*
output �
output���������
�
"__inference_internal_grad_fn_91529����
���

 
!�
result_grads_0
��
�
result_grads_1�
 �
result_grads_2	�

�
result_grads_3

!�
result_grads_4
��
�
result_grads_5�
 �
result_grads_6	�

�
result_grads_7

� "_�\

 

 

 

 
�
4
��
�
5�
�
6	�

�
7
�
"__inference_internal_grad_fn_91557����
���

 
!�
result_grads_0
��
�
result_grads_1�
 �
result_grads_2	�

�
result_grads_3

!�
result_grads_4
��
�
result_grads_5�
 �
result_grads_6	�

�
result_grads_7

� "_�\

 

 

 

 
�
4
��
�
5�
�
6	�

�
7
�
__inference_restore_90964�$%'�$
�
�
checkpoint_path 
� "���
+
dense_1/bias:0�
dense_1/bias:0
/
dense_1/kernel:0�
dense_1/kernel:0
+
dense_2/bias:0�
dense_2/bias:0
/
dense_2/kernel:0�
dense_2/kernel:0{
__inference_save_90981a$%'�$
�
�
checkpoint_path 
� "0�-
+
checkpoint_path�
checkpoint_path �
G__inference_sequential_2_layer_call_and_return_conditional_losses_91317q$%B�?
8�5
+�(
flatten_input���������
p 

 
� "%�"
�
0���������

� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_91332q$%B�?
8�5
+�(
flatten_input���������
p

 
� "%�"
�
0���������

� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_91383j$%;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������

� �
G__inference_sequential_2_layer_call_and_return_conditional_losses_91402j$%;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������

� �
,__inference_sequential_2_layer_call_fn_91222d$%B�?
8�5
+�(
flatten_input���������
p 

 
� "����������
�
,__inference_sequential_2_layer_call_fn_91302d$%B�?
8�5
+�(
flatten_input���������
p

 
� "����������
�
,__inference_sequential_2_layer_call_fn_91351]$%;�8
1�.
$�!
inputs���������
p 

 
� "����������
�
,__inference_sequential_2_layer_call_fn_91364]$%;�8
1�.
$�!
inputs���������
p

 
� "����������
�
#__inference_signature_wrapper_90871�$%0,-.EIFJGKHLU�R
� 
K�H
$
x�
x���������
 
y�
y���������
"�

loss�

loss �
#__inference_signature_wrapper_90888�$%3�0
� 
)�&
$
x�
x���������"[�X
*
logits �
logits���������

*
output �
output���������
�
#__inference_signature_wrapper_90903t$%:�7
� 
0�-
+
checkpoint_path�
checkpoint_path "0�-
+
checkpoint_path�
checkpoint_path �
#__inference_signature_wrapper_90924�$%:�7
� 
0�-
+
checkpoint_path�
checkpoint_path "���
+
dense_1/bias:0�
dense_1/bias:0
/
dense_1/kernel:0�
dense_1/kernel:0
+
dense_2/bias:0�
dense_2/bias:0
/
dense_2/kernel:0�
dense_2/kernel:0�
__inference_train_91142{$%0,-.EIFJGKHLK�H
A�>
�
x���������
�
y���������

� "�

loss�

loss 