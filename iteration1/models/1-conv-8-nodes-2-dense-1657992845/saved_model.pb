еп
н
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
С
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
executor_typestring Ј
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Ўђ

Adam/dense_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/v
y
(Adam/dense_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/v*
_output_shapes
:*
dtype0

Adam/dense_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_47/kernel/v

*Adam/dense_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_46/bias/v
y
(Adam/dense_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/v*
_output_shapes
:*
dtype0

Adam/dense_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_46/kernel/v

*Adam/dense_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:*
dtype0

Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	_*'
shared_nameAdam/dense_45/kernel/v

*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes
:	_*
dtype0

Adam/conv2d_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_54/bias/v
{
)Adam/conv2d_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_54/kernel/v

+Adam/conv2d_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/v*&
_output_shapes
:*
dtype0

Adam/dense_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/m
y
(Adam/dense_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/m*
_output_shapes
:*
dtype0

Adam/dense_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_47/kernel/m

*Adam/dense_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_46/bias/m
y
(Adam/dense_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/m*
_output_shapes
:*
dtype0

Adam/dense_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_46/kernel/m

*Adam/dense_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:*
dtype0

Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	_*'
shared_nameAdam/dense_45/kernel/m

*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes
:	_*
dtype0

Adam/conv2d_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_54/bias/m
{
)Adam/conv2d_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_54/kernel/m

+Adam/conv2d_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/m*&
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
_output_shapes
:*
dtype0
z
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_47/kernel
s
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes

:*
dtype0
r
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_46/bias
k
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes
:*
dtype0
z
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_46/kernel
s
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel*
_output_shapes

:*
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes
:*
dtype0
{
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	_* 
shared_namedense_45/kernel
t
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes
:	_*
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
:*
dtype0

conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_54/kernel
}
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
йN
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*N
valueNBN BN
Љ
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 

"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 

(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
І
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias*

6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
І
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias*

D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
І
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias*
<
0
1
42
53
B4
C5
P6
Q7*
<
0
1
42
53
B4
C5
P6
Q7*
* 
А
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_3* 
6
[trace_0
\trace_1
]trace_2
^trace_3* 
* 
ф
_iter

`beta_1

abeta_2
	bdecay
clearning_ratemЏmА4mБ5mВBmГCmДPmЕQmЖvЗvИ4vЙ5vКBvЛCvМPvНQvО*

dserving_default* 

0
1*

0
1*
* 

enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
`Z
VARIABLE_VALUEconv2d_54/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_54/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

qtrace_0* 

rtrace_0* 
* 
* 
* 

snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

xtrace_0* 

ytrace_0* 
* 
* 
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

40
51*

40
51*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_45/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_45/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

B0
C1*

B0
C1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_46/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_46/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

P0
Q1*

P0
Q1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

Ђtrace_0* 

Ѓtrace_0* 
_Y
VARIABLE_VALUEdense_47/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_47/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

Є0
Ѕ1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
<
І	variables
Ї	keras_api

Јtotal

Љcount*
M
Њ	variables
Ћ	keras_api

Ќtotal

­count
Ў
_fn_kwargs*

Ј0
Љ1*

І	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ќ0
­1*

Њ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}
VARIABLE_VALUEAdam/conv2d_54/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_54/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_46/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_46/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_47/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_47/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_54/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_54/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_46/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_46/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_47/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_47/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_conv2d_54_inputPlaceholder*/
_output_shapes
:џџџџџџџџџPP*
dtype0*$
shape:џџџџџџџџџPP
Я
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_54_inputconv2d_54/kernelconv2d_54/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_697959
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_54/kernel/m/Read/ReadVariableOp)Adam/conv2d_54/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp*Adam/dense_46/kernel/m/Read/ReadVariableOp(Adam/dense_46/bias/m/Read/ReadVariableOp*Adam/dense_47/kernel/m/Read/ReadVariableOp(Adam/dense_47/bias/m/Read/ReadVariableOp+Adam/conv2d_54/kernel/v/Read/ReadVariableOp)Adam/conv2d_54/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOp*Adam/dense_46/kernel/v/Read/ReadVariableOp(Adam/dense_46/bias/v/Read/ReadVariableOp*Adam/dense_47/kernel/v/Read/ReadVariableOp(Adam/dense_47/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_698321

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_54/kernelconv2d_54/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_54/kernel/mAdam/conv2d_54/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/mAdam/dense_46/kernel/mAdam/dense_46/bias/mAdam/dense_47/kernel/mAdam/dense_47/bias/mAdam/conv2d_54/kernel/vAdam/conv2d_54/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/vAdam/dense_46/kernel/vAdam/dense_46/bias/vAdam/dense_47/kernel/vAdam/dense_47/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_698430 Ь
Ы	
і
D__inference_dense_45_layer_call_and_return_conditional_losses_697643

inputs1
matmul_readvariableop_resource:	_-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	_*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ_: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ_
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_27_layer_call_and_return_conditional_losses_698121

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ/  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ'':W S
/
_output_shapes
:џџџџџџџџџ''
 
_user_specified_nameinputs
О%

I__inference_sequential_27_layer_call_and_return_conditional_losses_697832

inputs*
conv2d_54_697806:
conv2d_54_697808:"
dense_45_697814:	_
dense_45_697816:!
dense_46_697820:
dense_46_697822:!
dense_47_697826:
dense_47_697828:
identityЂ!conv2d_54/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallЂ dense_47/StatefulPartitionedCallџ
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_54_697806conv2d_54_697808*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_697611ё
activation_72/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_72_layer_call_and_return_conditional_losses_697622ѓ
 max_pooling2d_54/PartitionedCallPartitionedCall&activation_72/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_697591у
flatten_27/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ_* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_697631
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_45_697814dense_45_697816*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_697643ш
activation_73/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_73_layer_call_and_return_conditional_losses_697654
 dense_46/StatefulPartitionedCallStatefulPartitionedCall&activation_73/PartitionedCall:output:0dense_46_697820dense_46_697822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_697666ш
activation_74/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_74_layer_call_and_return_conditional_losses_697677
 dense_47/StatefulPartitionedCallStatefulPartitionedCall&activation_74/PartitionedCall:output:0dense_47_697826dense_47_697828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_697690x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^conv2d_54/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Њ
J
.__inference_activation_74_layer_call_fn_698174

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_74_layer_call_and_return_conditional_losses_697677`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Н
M
1__inference_max_pooling2d_54_layer_call_fn_698105

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_697591
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Э
e
I__inference_activation_73_layer_call_and_return_conditional_losses_697654

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
А
ы
"__inference__traced_restore_698430
file_prefix;
!assignvariableop_conv2d_54_kernel:/
!assignvariableop_1_conv2d_54_bias:5
"assignvariableop_2_dense_45_kernel:	_.
 assignvariableop_3_dense_45_bias:4
"assignvariableop_4_dense_46_kernel:.
 assignvariableop_5_dense_46_bias:4
"assignvariableop_6_dense_47_kernel:.
 assignvariableop_7_dense_47_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: E
+assignvariableop_17_adam_conv2d_54_kernel_m:7
)assignvariableop_18_adam_conv2d_54_bias_m:=
*assignvariableop_19_adam_dense_45_kernel_m:	_6
(assignvariableop_20_adam_dense_45_bias_m:<
*assignvariableop_21_adam_dense_46_kernel_m:6
(assignvariableop_22_adam_dense_46_bias_m:<
*assignvariableop_23_adam_dense_47_kernel_m:6
(assignvariableop_24_adam_dense_47_bias_m:E
+assignvariableop_25_adam_conv2d_54_kernel_v:7
)assignvariableop_26_adam_conv2d_54_bias_v:=
*assignvariableop_27_adam_dense_45_kernel_v:	_6
(assignvariableop_28_adam_dense_45_bias_v:<
*assignvariableop_29_adam_dense_46_kernel_v:6
(assignvariableop_30_adam_dense_46_bias_v:<
*assignvariableop_31_adam_dense_47_kernel_v:6
(assignvariableop_32_adam_dense_47_bias_v:
identity_34ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9В
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*и
valueЮBЫ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHД
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_54_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_54_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_45_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_45_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_46_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_46_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_47_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_47_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv2d_54_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv2d_54_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_45_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_45_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_46_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_46_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_47_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_47_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_54_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_54_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_45_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_45_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_46_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_46_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_47_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_47_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ѕ
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
Ш

)__inference_dense_45_layer_call_fn_698130

inputs
unknown:	_
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_697643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ_: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ_
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_27_layer_call_and_return_conditional_losses_697631

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ/  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ'':W S
/
_output_shapes
:џџџџџџџџџ''
 
_user_specified_nameinputs
Љ

ў
E__inference_conv2d_54_layer_call_and_return_conditional_losses_697611

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNNg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџNNw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџPP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
ф	
Ц
.__inference_sequential_27_layer_call_fn_698001

inputs!
unknown:
	unknown_0:
	unknown_1:	_
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_697832o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
й%

I__inference_sequential_27_layer_call_and_return_conditional_losses_697930
conv2d_54_input*
conv2d_54_697904:
conv2d_54_697906:"
dense_45_697912:	_
dense_45_697914:!
dense_46_697918:
dense_46_697920:!
dense_47_697924:
dense_47_697926:
identityЂ!conv2d_54/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallЂ dense_47/StatefulPartitionedCall
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallconv2d_54_inputconv2d_54_697904conv2d_54_697906*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_697611ё
activation_72/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_72_layer_call_and_return_conditional_losses_697622ѓ
 max_pooling2d_54/PartitionedCallPartitionedCall&activation_72/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_697591у
flatten_27/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ_* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_697631
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_45_697912dense_45_697914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_697643ш
activation_73/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_73_layer_call_and_return_conditional_losses_697654
 dense_46/StatefulPartitionedCallStatefulPartitionedCall&activation_73/PartitionedCall:output:0dense_46_697918dense_46_697920*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_697666ш
activation_74/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_74_layer_call_and_return_conditional_losses_697677
 dense_47/StatefulPartitionedCallStatefulPartitionedCall&activation_74/PartitionedCall:output:0dense_47_697924dense_47_697926*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_697690x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^conv2d_54/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:` \
/
_output_shapes
:џџџџџџџџџPP
)
_user_specified_nameconv2d_54_input
ф	
Ц
.__inference_sequential_27_layer_call_fn_697980

inputs!
unknown:
	unknown_0:
	unknown_1:	_
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_697697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
3

!__inference__wrapped_model_697582
conv2d_54_inputP
6sequential_27_conv2d_54_conv2d_readvariableop_resource:E
7sequential_27_conv2d_54_biasadd_readvariableop_resource:H
5sequential_27_dense_45_matmul_readvariableop_resource:	_D
6sequential_27_dense_45_biasadd_readvariableop_resource:G
5sequential_27_dense_46_matmul_readvariableop_resource:D
6sequential_27_dense_46_biasadd_readvariableop_resource:G
5sequential_27_dense_47_matmul_readvariableop_resource:D
6sequential_27_dense_47_biasadd_readvariableop_resource:
identityЂ.sequential_27/conv2d_54/BiasAdd/ReadVariableOpЂ-sequential_27/conv2d_54/Conv2D/ReadVariableOpЂ-sequential_27/dense_45/BiasAdd/ReadVariableOpЂ,sequential_27/dense_45/MatMul/ReadVariableOpЂ-sequential_27/dense_46/BiasAdd/ReadVariableOpЂ,sequential_27/dense_46/MatMul/ReadVariableOpЂ-sequential_27/dense_47/BiasAdd/ReadVariableOpЂ,sequential_27/dense_47/MatMul/ReadVariableOpЌ
-sequential_27/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_27_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0г
sequential_27/conv2d_54/Conv2DConv2Dconv2d_54_input5sequential_27/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN*
paddingVALID*
strides
Ђ
.sequential_27/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_27_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Х
sequential_27/conv2d_54/BiasAddBiasAdd'sequential_27/conv2d_54/Conv2D:output:06sequential_27/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN
 sequential_27/activation_72/ReluRelu(sequential_27/conv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџNNЮ
&sequential_27/max_pooling2d_54/MaxPoolMaxPool.sequential_27/activation_72/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ''*
ksize
*
paddingVALID*
strides
o
sequential_27/flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ/  И
 sequential_27/flatten_27/ReshapeReshape/sequential_27/max_pooling2d_54/MaxPool:output:0'sequential_27/flatten_27/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_Ѓ
,sequential_27/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_45_matmul_readvariableop_resource*
_output_shapes
:	_*
dtype0К
sequential_27/dense_45/MatMulMatMul)sequential_27/flatten_27/Reshape:output:04sequential_27/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_27/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_27/dense_45/BiasAddBiasAdd'sequential_27/dense_45/MatMul:product:05sequential_27/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 sequential_27/activation_73/ReluRelu'sequential_27/dense_45/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
,sequential_27/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype0П
sequential_27/dense_46/MatMulMatMul.sequential_27/activation_73/Relu:activations:04sequential_27/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_27/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_27/dense_46/BiasAddBiasAdd'sequential_27/dense_46/MatMul:product:05sequential_27/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 sequential_27/activation_74/ReluRelu'sequential_27/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџЂ
,sequential_27/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype0П
sequential_27/dense_47/MatMulMatMul.sequential_27/activation_74/Relu:activations:04sequential_27/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_27/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_27/dense_47/BiasAddBiasAdd'sequential_27/dense_47/MatMul:product:05sequential_27/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_27/dense_47/SoftmaxSoftmax'sequential_27/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
IdentityIdentity(sequential_27/dense_47/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџФ
NoOpNoOp/^sequential_27/conv2d_54/BiasAdd/ReadVariableOp.^sequential_27/conv2d_54/Conv2D/ReadVariableOp.^sequential_27/dense_45/BiasAdd/ReadVariableOp-^sequential_27/dense_45/MatMul/ReadVariableOp.^sequential_27/dense_46/BiasAdd/ReadVariableOp-^sequential_27/dense_46/MatMul/ReadVariableOp.^sequential_27/dense_47/BiasAdd/ReadVariableOp-^sequential_27/dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2`
.sequential_27/conv2d_54/BiasAdd/ReadVariableOp.sequential_27/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_27/conv2d_54/Conv2D/ReadVariableOp-sequential_27/conv2d_54/Conv2D/ReadVariableOp2^
-sequential_27/dense_45/BiasAdd/ReadVariableOp-sequential_27/dense_45/BiasAdd/ReadVariableOp2\
,sequential_27/dense_45/MatMul/ReadVariableOp,sequential_27/dense_45/MatMul/ReadVariableOp2^
-sequential_27/dense_46/BiasAdd/ReadVariableOp-sequential_27/dense_46/BiasAdd/ReadVariableOp2\
,sequential_27/dense_46/MatMul/ReadVariableOp,sequential_27/dense_46/MatMul/ReadVariableOp2^
-sequential_27/dense_47/BiasAdd/ReadVariableOp-sequential_27/dense_47/BiasAdd/ReadVariableOp2\
,sequential_27/dense_47/MatMul/ReadVariableOp,sequential_27/dense_47/MatMul/ReadVariableOp:` \
/
_output_shapes
:џџџџџџџџџPP
)
_user_specified_nameconv2d_54_input
э
e
I__inference_activation_72_layer_call_and_return_conditional_losses_698100

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџNNb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџNN"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџNN:W S
/
_output_shapes
:џџџџџџџџџNN
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_697591

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_698110

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ж
G
+__inference_flatten_27_layer_call_fn_698115

inputs
identityЕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ_* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_697631a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ'':W S
/
_output_shapes
:џџџџџџџџџ''
 
_user_specified_nameinputs
Ы	
і
D__inference_dense_45_layer_call_and_return_conditional_losses_698140

inputs1
matmul_readvariableop_resource:	_-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	_*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ_: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ_
 
_user_specified_nameinputs
Э
e
I__inference_activation_73_layer_call_and_return_conditional_losses_698150

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
я

*__inference_conv2d_54_layer_call_fn_698080

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_697611w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџNN`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџPP: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Х

)__inference_dense_46_layer_call_fn_698159

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_697666o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
 

ѕ
D__inference_dense_47_layer_call_and_return_conditional_losses_698199

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ

ў
E__inference_conv2d_54_layer_call_and_return_conditional_losses_698090

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNNg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџNNw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџPP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Э	
Х
$__inference_signature_wrapper_697959
conv2d_54_input!
unknown:
	unknown_0:
	unknown_1:	_
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_697582o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:џџџџџџџџџPP
)
_user_specified_nameconv2d_54_input
Э
e
I__inference_activation_74_layer_call_and_return_conditional_losses_697677

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч	
ѕ
D__inference_dense_46_layer_call_and_return_conditional_losses_698169

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
)
Э
I__inference_sequential_27_layer_call_and_return_conditional_losses_698071

inputsB
(conv2d_54_conv2d_readvariableop_resource:7
)conv2d_54_biasadd_readvariableop_resource::
'dense_45_matmul_readvariableop_resource:	_6
(dense_45_biasadd_readvariableop_resource:9
'dense_46_matmul_readvariableop_resource:6
(dense_46_biasadd_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource:6
(dense_47_biasadd_readvariableop_resource:
identityЂ conv2d_54/BiasAdd/ReadVariableOpЂconv2d_54/Conv2D/ReadVariableOpЂdense_45/BiasAdd/ReadVariableOpЂdense_45/MatMul/ReadVariableOpЂdense_46/BiasAdd/ReadVariableOpЂdense_46/MatMul/ReadVariableOpЂdense_47/BiasAdd/ReadVariableOpЂdense_47/MatMul/ReadVariableOp
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
conv2d_54/Conv2DConv2Dinputs'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN*
paddingVALID*
strides

 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNNp
activation_72/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџNNВ
max_pooling2d_54/MaxPoolMaxPool activation_72/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ''*
ksize
*
paddingVALID*
strides
a
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ/  
flatten_27/ReshapeReshape!max_pooling2d_54/MaxPool:output:0flatten_27/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes
:	_*
dtype0
dense_45/MatMulMatMulflatten_27/Reshape:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
activation_73/ReluReludense_45/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_46/MatMulMatMul activation_73/Relu:activations:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
activation_74/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_47/MatMulMatMul activation_74/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_47/SoftmaxSoftmaxdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_47/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџд
NoOpNoOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Х

)__inference_dense_47_layer_call_fn_698188

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_697690o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
 

ѕ
D__inference_dense_47_layer_call_and_return_conditional_losses_697690

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
)
Э
I__inference_sequential_27_layer_call_and_return_conditional_losses_698036

inputsB
(conv2d_54_conv2d_readvariableop_resource:7
)conv2d_54_biasadd_readvariableop_resource::
'dense_45_matmul_readvariableop_resource:	_6
(dense_45_biasadd_readvariableop_resource:9
'dense_46_matmul_readvariableop_resource:6
(dense_46_biasadd_readvariableop_resource:9
'dense_47_matmul_readvariableop_resource:6
(dense_47_biasadd_readvariableop_resource:
identityЂ conv2d_54/BiasAdd/ReadVariableOpЂconv2d_54/Conv2D/ReadVariableOpЂdense_45/BiasAdd/ReadVariableOpЂdense_45/MatMul/ReadVariableOpЂdense_46/BiasAdd/ReadVariableOpЂdense_46/MatMul/ReadVariableOpЂdense_47/BiasAdd/ReadVariableOpЂdense_47/MatMul/ReadVariableOp
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ў
conv2d_54/Conv2DConv2Dinputs'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN*
paddingVALID*
strides

 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNNp
activation_72/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџNNВ
max_pooling2d_54/MaxPoolMaxPool activation_72/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ''*
ksize
*
paddingVALID*
strides
a
flatten_27/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ/  
flatten_27/ReshapeReshape!max_pooling2d_54/MaxPool:output:0flatten_27/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ_
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes
:	_*
dtype0
dense_45/MatMulMatMulflatten_27/Reshape:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
activation_73/ReluReludense_45/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_46/MatMulMatMul activation_73/Relu:activations:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
activation_74/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_47/MatMulMatMul activation_74/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_47/SoftmaxSoftmaxdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_47/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџд
NoOpNoOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Ъ
J
.__inference_activation_72_layer_call_fn_698095

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_72_layer_call_and_return_conditional_losses_697622h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџNN"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџNN:W S
/
_output_shapes
:џџџџџџџџџNN
 
_user_specified_nameinputs
ФF
Ц
__inference__traced_save_698321
file_prefix/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_54_kernel_m_read_readvariableop4
0savev2_adam_conv2d_54_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableop5
1savev2_adam_dense_46_kernel_m_read_readvariableop3
/savev2_adam_dense_46_bias_m_read_readvariableop5
1savev2_adam_dense_47_kernel_m_read_readvariableop3
/savev2_adam_dense_47_bias_m_read_readvariableop6
2savev2_adam_conv2d_54_kernel_v_read_readvariableop4
0savev2_adam_conv2d_54_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableop5
1savev2_adam_dense_46_kernel_v_read_readvariableop3
/savev2_adam_dense_46_bias_v_read_readvariableop5
1savev2_adam_dense_47_kernel_v_read_readvariableop3
/savev2_adam_dense_47_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Џ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*и
valueЮBЫ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHБ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ї
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_54_kernel_m_read_readvariableop0savev2_adam_conv2d_54_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop1savev2_adam_dense_46_kernel_m_read_readvariableop/savev2_adam_dense_46_bias_m_read_readvariableop1savev2_adam_dense_47_kernel_m_read_readvariableop/savev2_adam_dense_47_bias_m_read_readvariableop2savev2_adam_conv2d_54_kernel_v_read_readvariableop0savev2_adam_conv2d_54_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableop1savev2_adam_dense_46_kernel_v_read_readvariableop/savev2_adam_dense_46_bias_v_read_readvariableop1savev2_adam_dense_47_kernel_v_read_readvariableop/savev2_adam_dense_47_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapesє
ё: :::	_:::::: : : : : : : : : :::	_::::::::	_:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	_: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	_: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	_: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::"

_output_shapes
: 
џ	
Я
.__inference_sequential_27_layer_call_fn_697716
conv2d_54_input!
unknown:
	unknown_0:
	unknown_1:	_
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_697697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:џџџџџџџџџPP
)
_user_specified_nameconv2d_54_input
џ	
Я
.__inference_sequential_27_layer_call_fn_697872
conv2d_54_input!
unknown:
	unknown_0:
	unknown_1:	_
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identityЂStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_27_layer_call_and_return_conditional_losses_697832o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:џџџџџџџџџPP
)
_user_specified_nameconv2d_54_input
Њ
J
.__inference_activation_73_layer_call_fn_698145

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_73_layer_call_and_return_conditional_losses_697654`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О%

I__inference_sequential_27_layer_call_and_return_conditional_losses_697697

inputs*
conv2d_54_697612:
conv2d_54_697614:"
dense_45_697644:	_
dense_45_697646:!
dense_46_697667:
dense_46_697669:!
dense_47_697691:
dense_47_697693:
identityЂ!conv2d_54/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallЂ dense_47/StatefulPartitionedCallџ
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_54_697612conv2d_54_697614*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_697611ё
activation_72/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_72_layer_call_and_return_conditional_losses_697622ѓ
 max_pooling2d_54/PartitionedCallPartitionedCall&activation_72/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_697591у
flatten_27/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ_* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_697631
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_45_697644dense_45_697646*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_697643ш
activation_73/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_73_layer_call_and_return_conditional_losses_697654
 dense_46/StatefulPartitionedCallStatefulPartitionedCall&activation_73/PartitionedCall:output:0dense_46_697667dense_46_697669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_697666ш
activation_74/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_74_layer_call_and_return_conditional_losses_697677
 dense_47/StatefulPartitionedCallStatefulPartitionedCall&activation_74/PartitionedCall:output:0dense_47_697691dense_47_697693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_697690x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^conv2d_54/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Э
e
I__inference_activation_74_layer_call_and_return_conditional_losses_698179

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч	
ѕ
D__inference_dense_46_layer_call_and_return_conditional_losses_697666

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э
e
I__inference_activation_72_layer_call_and_return_conditional_losses_697622

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџNNb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџNN"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџNN:W S
/
_output_shapes
:џџџџџџџџџNN
 
_user_specified_nameinputs
й%

I__inference_sequential_27_layer_call_and_return_conditional_losses_697901
conv2d_54_input*
conv2d_54_697875:
conv2d_54_697877:"
dense_45_697883:	_
dense_45_697885:!
dense_46_697889:
dense_46_697891:!
dense_47_697895:
dense_47_697897:
identityЂ!conv2d_54/StatefulPartitionedCallЂ dense_45/StatefulPartitionedCallЂ dense_46/StatefulPartitionedCallЂ dense_47/StatefulPartitionedCall
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCallconv2d_54_inputconv2d_54_697875conv2d_54_697877*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_697611ё
activation_72/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_72_layer_call_and_return_conditional_losses_697622ѓ
 max_pooling2d_54/PartitionedCallPartitionedCall&activation_72/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_697591у
flatten_27/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ_* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_27_layer_call_and_return_conditional_losses_697631
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_27/PartitionedCall:output:0dense_45_697883dense_45_697885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_697643ш
activation_73/PartitionedCallPartitionedCall)dense_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_73_layer_call_and_return_conditional_losses_697654
 dense_46/StatefulPartitionedCallStatefulPartitionedCall&activation_73/PartitionedCall:output:0dense_46_697889dense_46_697891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_697666ш
activation_74/PartitionedCallPartitionedCall)dense_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_activation_74_layer_call_and_return_conditional_losses_697677
 dense_47/StatefulPartitionedCallStatefulPartitionedCall&activation_74/PartitionedCall:output:0dense_47_697895dense_47_697897*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_697690x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOp"^conv2d_54/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:` \
/
_output_shapes
:џџџџџџџџџPP
)
_user_specified_nameconv2d_54_input"ПL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*У
serving_defaultЏ
S
conv2d_54_input@
!serving_default_conv2d_54_input:0џџџџџџџџџPP<
dense_470
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:з
У
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
Ѕ
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias"
_tf_keras_layer
Ѕ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias"
_tf_keras_layer
X
0
1
42
53
B4
C5
P6
Q7"
trackable_list_wrapper
X
0
1
42
53
B4
C5
P6
Q7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
Wtrace_0
Xtrace_1
Ytrace_2
Ztrace_32
.__inference_sequential_27_layer_call_fn_697716
.__inference_sequential_27_layer_call_fn_697980
.__inference_sequential_27_layer_call_fn_698001
.__inference_sequential_27_layer_call_fn_697872Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zWtrace_0zXtrace_1zYtrace_2zZtrace_3
к
[trace_0
\trace_1
]trace_2
^trace_32я
I__inference_sequential_27_layer_call_and_return_conditional_losses_698036
I__inference_sequential_27_layer_call_and_return_conditional_losses_698071
I__inference_sequential_27_layer_call_and_return_conditional_losses_697901
I__inference_sequential_27_layer_call_and_return_conditional_losses_697930Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 z[trace_0z\trace_1z]trace_2z^trace_3
дBб
!__inference__wrapped_model_697582conv2d_54_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ
_iter

`beta_1

abeta_2
	bdecay
clearning_ratemЏmА4mБ5mВBmГCmДPmЕQmЖvЗvИ4vЙ5vКBvЛCvМPvНQvО"
	optimizer
,
dserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю
jtrace_02б
*__inference_conv2d_54_layer_call_fn_698080Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zjtrace_0

ktrace_02ь
E__inference_conv2d_54_layer_call_and_return_conditional_losses_698090Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zktrace_0
*:(2conv2d_54/kernel
:2conv2d_54/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
ђ
qtrace_02е
.__inference_activation_72_layer_call_fn_698095Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zqtrace_0

rtrace_02№
I__inference_activation_72_layer_call_and_return_conditional_losses_698100Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zrtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ѕ
xtrace_02и
1__inference_max_pooling2d_54_layer_call_fn_698105Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zxtrace_0

ytrace_02ѓ
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_698110Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zytrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
я
trace_02в
+__inference_flatten_27_layer_call_fn_698115Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02э
F__inference_flatten_27_layer_call_and_return_conditional_losses_698121Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
я
trace_02а
)__inference_dense_45_layer_call_fn_698130Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ы
D__inference_dense_45_layer_call_and_return_conditional_losses_698140Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
": 	_2dense_45/kernel
:2dense_45/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
є
trace_02е
.__inference_activation_73_layer_call_fn_698145Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02№
I__inference_activation_73_layer_call_and_return_conditional_losses_698150Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
я
trace_02а
)__inference_dense_46_layer_call_fn_698159Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ы
D__inference_dense_46_layer_call_and_return_conditional_losses_698169Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
!:2dense_46/kernel
:2dense_46/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
є
trace_02е
.__inference_activation_74_layer_call_fn_698174Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02№
I__inference_activation_74_layer_call_and_return_conditional_losses_698179Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
я
Ђtrace_02а
)__inference_dense_47_layer_call_fn_698188Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЂtrace_0

Ѓtrace_02ы
D__inference_dense_47_layer_call_and_return_conditional_losses_698199Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0
!:2dense_47/kernel
:2dense_47/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
Є0
Ѕ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_27_layer_call_fn_697716conv2d_54_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B§
.__inference_sequential_27_layer_call_fn_697980inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B§
.__inference_sequential_27_layer_call_fn_698001inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
.__inference_sequential_27_layer_call_fn_697872conv2d_54_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
I__inference_sequential_27_layer_call_and_return_conditional_losses_698036inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
I__inference_sequential_27_layer_call_and_return_conditional_losses_698071inputs"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЄBЁ
I__inference_sequential_27_layer_call_and_return_conditional_losses_697901conv2d_54_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЄBЁ
I__inference_sequential_27_layer_call_and_return_conditional_losses_697930conv2d_54_input"Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
гBа
$__inference_signature_wrapper_697959conv2d_54_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
оBл
*__inference_conv2d_54_layer_call_fn_698080inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
E__inference_conv2d_54_layer_call_and_return_conditional_losses_698090inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
тBп
.__inference_activation_72_layer_call_fn_698095inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
I__inference_activation_72_layer_call_and_return_conditional_losses_698100inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
хBт
1__inference_max_pooling2d_54_layer_call_fn_698105inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_698110inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
пBм
+__inference_flatten_27_layer_call_fn_698115inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_flatten_27_layer_call_and_return_conditional_losses_698121inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_dense_45_layer_call_fn_698130inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_45_layer_call_and_return_conditional_losses_698140inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
тBп
.__inference_activation_73_layer_call_fn_698145inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
I__inference_activation_73_layer_call_and_return_conditional_losses_698150inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_dense_46_layer_call_fn_698159inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_46_layer_call_and_return_conditional_losses_698169inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
тBп
.__inference_activation_74_layer_call_fn_698174inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
I__inference_activation_74_layer_call_and_return_conditional_losses_698179inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
нBк
)__inference_dense_47_layer_call_fn_698188inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_47_layer_call_and_return_conditional_losses_698199inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
І	variables
Ї	keras_api

Јtotal

Љcount"
_tf_keras_metric
c
Њ	variables
Ћ	keras_api

Ќtotal

­count
Ў
_fn_kwargs"
_tf_keras_metric
0
Ј0
Љ1"
trackable_list_wrapper
.
І	variables"
_generic_user_object
:  (2total
:  (2count
0
Ќ0
­1"
trackable_list_wrapper
.
Њ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_54/kernel/m
!:2Adam/conv2d_54/bias/m
':%	_2Adam/dense_45/kernel/m
 :2Adam/dense_45/bias/m
&:$2Adam/dense_46/kernel/m
 :2Adam/dense_46/bias/m
&:$2Adam/dense_47/kernel/m
 :2Adam/dense_47/bias/m
/:-2Adam/conv2d_54/kernel/v
!:2Adam/conv2d_54/bias/v
':%	_2Adam/dense_45/kernel/v
 :2Adam/dense_45/bias/v
&:$2Adam/dense_46/kernel/v
 :2Adam/dense_46/bias/v
&:$2Adam/dense_47/kernel/v
 :2Adam/dense_47/bias/vЇ
!__inference__wrapped_model_69758245BCPQ@Ђ=
6Ђ3
1.
conv2d_54_inputџџџџџџџџџPP
Њ "3Њ0
.
dense_47"
dense_47џџџџџџџџџЕ
I__inference_activation_72_layer_call_and_return_conditional_losses_698100h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџNN
Њ "-Ђ*
# 
0џџџџџџџџџNN
 
.__inference_activation_72_layer_call_fn_698095[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџNN
Њ " џџџџџџџџџNNЅ
I__inference_activation_73_layer_call_and_return_conditional_losses_698150X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
.__inference_activation_73_layer_call_fn_698145K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
I__inference_activation_74_layer_call_and_return_conditional_losses_698179X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
.__inference_activation_74_layer_call_fn_698174K/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЕ
E__inference_conv2d_54_layer_call_and_return_conditional_losses_698090l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџPP
Њ "-Ђ*
# 
0џџџџџџџџџNN
 
*__inference_conv2d_54_layer_call_fn_698080_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџPP
Њ " џџџџџџџџџNNЅ
D__inference_dense_45_layer_call_and_return_conditional_losses_698140]450Ђ-
&Ђ#
!
inputsџџџџџџџџџ_
Њ "%Ђ"

0џџџџџџџџџ
 }
)__inference_dense_45_layer_call_fn_698130P450Ђ-
&Ђ#
!
inputsџџџџџџџџџ_
Њ "џџџџџџџџџЄ
D__inference_dense_46_layer_call_and_return_conditional_losses_698169\BC/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_46_layer_call_fn_698159OBC/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЄ
D__inference_dense_47_layer_call_and_return_conditional_losses_698199\PQ/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_47_layer_call_fn_698188OPQ/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЋ
F__inference_flatten_27_layer_call_and_return_conditional_losses_698121a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ''
Њ "&Ђ#

0џџџџџџџџџ_
 
+__inference_flatten_27_layer_call_fn_698115T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ''
Њ "џџџџџџџџџ_я
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_698110RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ч
1__inference_max_pooling2d_54_layer_call_fn_698105RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџШ
I__inference_sequential_27_layer_call_and_return_conditional_losses_697901{45BCPQHЂE
>Ђ;
1.
conv2d_54_inputџџџџџџџџџPP
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ш
I__inference_sequential_27_layer_call_and_return_conditional_losses_697930{45BCPQHЂE
>Ђ;
1.
conv2d_54_inputџџџџџџџџџPP
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
I__inference_sequential_27_layer_call_and_return_conditional_losses_698036r45BCPQ?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
I__inference_sequential_27_layer_call_and_return_conditional_losses_698071r45BCPQ?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p

 
Њ "%Ђ"

0џџџџџџџџџ
  
.__inference_sequential_27_layer_call_fn_697716n45BCPQHЂE
>Ђ;
1.
conv2d_54_inputџџџџџџџџџPP
p 

 
Њ "џџџџџџџџџ 
.__inference_sequential_27_layer_call_fn_697872n45BCPQHЂE
>Ђ;
1.
conv2d_54_inputџџџџџџџџџPP
p

 
Њ "џџџџџџџџџ
.__inference_sequential_27_layer_call_fn_697980e45BCPQ?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_27_layer_call_fn_698001e45BCPQ?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p

 
Њ "џџџџџџџџџН
$__inference_signature_wrapper_69795945BCPQSЂP
Ђ 
IЊF
D
conv2d_54_input1.
conv2d_54_inputџџџџџџџџџPP"3Њ0
.
dense_47"
dense_47џџџџџџџџџ