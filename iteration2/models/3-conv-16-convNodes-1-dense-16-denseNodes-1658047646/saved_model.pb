??

??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
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
?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
?
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/v
?
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_10/kernel/v
?
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_33/bias/v
{
)Adam/conv2d_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_33/kernel/v
?
+Adam/conv2d_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_32/bias/v
{
)Adam/conv2d_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_32/kernel/v
?
+Adam/conv2d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_31/bias/v
{
)Adam/conv2d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_31/kernel/v
?
+Adam/conv2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/m
?
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_10/kernel/m
?
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_33/bias/m
{
)Adam/conv2d_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_33/kernel/m
?
+Adam/conv2d_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_32/bias/m
{
)Adam/conv2d_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_32/kernel/m
?
+Adam/conv2d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_31/bias/m
{
)Adam/conv2d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_31/kernel/m
?
+Adam/conv2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/m*&
_output_shapes
:*
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
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	?*
dtype0
t
conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_33/bias
m
"conv2d_33/bias/Read/ReadVariableOpReadVariableOpconv2d_33/bias*
_output_shapes
:*
dtype0
?
conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_33/kernel
}
$conv2d_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_33/kernel*&
_output_shapes
:*
dtype0
t
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:*
dtype0
?
conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
:*
dtype0
t
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_31/bias
m
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes
:*
dtype0
?
conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_31/kernel
}
$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
?b
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?b
value?aB?a B?a
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op*
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias*
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias*
J
0
1
12
23
F4
G5
a6
b7
i8
j9*
J
0
1
12
23
F4
G5
a6
b7
i8
j9*
* 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
6
ttrace_0
utrace_1
vtrace_2
wtrace_3* 
* 
?
xiter

ybeta_1

zbeta_2
	{decay
|learning_ratem?m?1m?2m?Fm?Gm?am?bm?im?jm?v?v?1v?2v?Fv?Gv?av?bv?iv?jv?*

}serving_default* 

0
1*

0
1*
* 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_31/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_31/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

10
21*

10
21*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
`Z
VARIABLE_VALUEconv2d_33/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_33/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

a0
b1*

a0
b1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

i0
j1*

i0
j1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

?0
?1*
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
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
?}
VARIABLE_VALUEAdam/conv2d_31/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_31/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_32/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_32/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_33/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_33/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_31/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_31/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_32/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_32/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_33/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_33/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_conv2d_31_inputPlaceholder*/
_output_shapes
:?????????PP*
dtype0*$
shape:?????????PP
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_31_inputconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_228997
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOp$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOp$conv2d_33/kernel/Read/ReadVariableOp"conv2d_33/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_31/kernel/m/Read/ReadVariableOp)Adam/conv2d_31/bias/m/Read/ReadVariableOp+Adam/conv2d_32/kernel/m/Read/ReadVariableOp)Adam/conv2d_32/bias/m/Read/ReadVariableOp+Adam/conv2d_33/kernel/m/Read/ReadVariableOp)Adam/conv2d_33/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp+Adam/conv2d_31/kernel/v/Read/ReadVariableOp)Adam/conv2d_31/bias/v/Read/ReadVariableOp+Adam/conv2d_32/kernel/v/Read/ReadVariableOp)Adam/conv2d_32/bias/v/Read/ReadVariableOp+Adam/conv2d_33/kernel/v/Read/ReadVariableOp)Adam/conv2d_33/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_229443
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_31/kernelconv2d_31/biasconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_31/kernel/mAdam/conv2d_31/bias/mAdam/conv2d_32/kernel/mAdam/conv2d_32/bias/mAdam/conv2d_33/kernel/mAdam/conv2d_33/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/conv2d_31/kernel/vAdam/conv2d_31/bias/vAdam/conv2d_32/kernel/vAdam/conv2d_32/bias/vAdam/conv2d_33/kernel/vAdam/conv2d_33/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v*3
Tin,
*2(*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_229570??
?0
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228928
conv2d_31_input*
conv2d_31_228895:
conv2d_31_228897:*
conv2d_32_228902:
conv2d_32_228904:*
conv2d_33_228909:
conv2d_33_228911:"
dense_10_228917:	?
dense_10_228919:!
dense_11_228922:
dense_11_228924:
identity??!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCallconv2d_31_inputconv2d_31_228895conv2d_31_228897*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_228579?
activation_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_31_layer_call_and_return_conditional_losses_228590?
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_228535?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_228902conv2d_32_228904*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_228603?
activation_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_32_layer_call_and_return_conditional_losses_228614?
 max_pooling2d_32/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_228547?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_228909conv2d_33_228911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_228627?
activation_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_33_layer_call_and_return_conditional_losses_228638?
 max_pooling2d_33/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_228559?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_228647?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_10_228917dense_10_228919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_228660?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_228922dense_11_228924*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_228677x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:` \
/
_output_shapes
:?????????PP
)
_user_specified_nameconv2d_31_input
?
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_229263

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_228997
conv2d_31_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_31_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_228526o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????PP
)
_user_specified_nameconv2d_31_input
?
h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_229174

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
D__inference_dense_10_layer_call_and_return_conditional_losses_228660

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_33_layer_call_fn_229247

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_228559?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_228559

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?5
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229091

inputsB
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource::
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity?? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp? conv2d_32/BiasAdd/ReadVariableOp?conv2d_32/Conv2D/ReadVariableOp? conv2d_33/BiasAdd/ReadVariableOp?conv2d_33/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_31/Conv2DConv2Dinputs'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN*
paddingVALID*
strides
?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NNp
activation_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN?
max_pooling2d_31/MaxPoolMaxPool activation_31/Relu:activations:0*/
_output_shapes
:?????????''*
ksize
*
paddingVALID*
strides
?
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_32/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%*
paddingVALID*
strides
?
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%p
activation_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%?
max_pooling2d_32/MaxPoolMaxPool activation_32/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
?
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????p
activation_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
max_pooling2d_33/MaxPoolMaxPool activation_33/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_9/ReshapeReshape!max_pooling2d_33/MaxPool:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:???????????
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_10/MatMulMatMulflatten_9/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_11/MatMulMatMuldense_10/Softmax:softmax:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
e
I__inference_activation_32_layer_call_and_return_conditional_losses_228614

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????%%b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????%%"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????%%:W S
/
_output_shapes
:?????????%%
 
_user_specified_nameinputs
?
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_228647

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
I__inference_activation_31_layer_call_and_return_conditional_losses_229164

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????NNb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????NN"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????NN:W S
/
_output_shapes
:?????????NN
 
_user_specified_nameinputs
?0
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228964
conv2d_31_input*
conv2d_31_228931:
conv2d_31_228933:*
conv2d_32_228938:
conv2d_32_228940:*
conv2d_33_228945:
conv2d_33_228947:"
dense_10_228953:	?
dense_10_228955:!
dense_11_228958:
dense_11_228960:
identity??!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCallconv2d_31_inputconv2d_31_228931conv2d_31_228933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_228579?
activation_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_31_layer_call_and_return_conditional_losses_228590?
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_228535?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_228938conv2d_32_228940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_228603?
activation_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_32_layer_call_and_return_conditional_losses_228614?
 max_pooling2d_32/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_228547?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_228945conv2d_33_228947*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_228627?
activation_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_33_layer_call_and_return_conditional_losses_228638?
 max_pooling2d_33/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_228559?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_228647?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_10_228953dense_10_228955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_228660?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_228958dense_11_228960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_228677x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:` \
/
_output_shapes
:?????????PP
)
_user_specified_nameconv2d_31_input
?

?
D__inference_dense_11_layer_call_and_return_conditional_losses_228677

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_33_layer_call_and_return_conditional_losses_228627

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_31_layer_call_fn_229169

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_228535?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_activation_31_layer_call_and_return_conditional_losses_228590

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????NNb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????NN"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????NN:W S
/
_output_shapes
:?????????NN
 
_user_specified_nameinputs
?
J
.__inference_activation_31_layer_call_fn_229159

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_31_layer_call_and_return_conditional_losses_228590h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????NN"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????NN:W S
/
_output_shapes
:?????????NN
 
_user_specified_nameinputs
?
J
.__inference_activation_33_layer_call_fn_229237

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_33_layer_call_and_return_conditional_losses_228638h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_31_layer_call_fn_229144

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_228579w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????NN`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????PP: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
-__inference_sequential_9_layer_call_fn_228707
conv2d_31_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_31_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_228684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????PP
)
_user_specified_nameconv2d_31_input
?

?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_229154

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NNg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????NNw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????PP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?Q
?
__inference__traced_save_229443
file_prefix/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop/
+savev2_conv2d_33_kernel_read_readvariableop-
)savev2_conv2d_33_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_31_kernel_m_read_readvariableop4
0savev2_adam_conv2d_31_bias_m_read_readvariableop6
2savev2_adam_conv2d_32_kernel_m_read_readvariableop4
0savev2_adam_conv2d_32_bias_m_read_readvariableop6
2savev2_adam_conv2d_33_kernel_m_read_readvariableop4
0savev2_adam_conv2d_33_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop6
2savev2_adam_conv2d_31_kernel_v_read_readvariableop4
0savev2_adam_conv2d_31_bias_v_read_readvariableop6
2savev2_adam_conv2d_32_kernel_v_read_readvariableop4
0savev2_adam_conv2d_32_bias_v_read_readvariableop6
2savev2_adam_conv2d_33_kernel_v_read_readvariableop4
0savev2_adam_conv2d_33_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop+savev2_conv2d_33_kernel_read_readvariableop)savev2_conv2d_33_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_31_kernel_m_read_readvariableop0savev2_adam_conv2d_31_bias_m_read_readvariableop2savev2_adam_conv2d_32_kernel_m_read_readvariableop0savev2_adam_conv2d_32_bias_m_read_readvariableop2savev2_adam_conv2d_33_kernel_m_read_readvariableop0savev2_adam_conv2d_33_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop2savev2_adam_conv2d_31_kernel_v_read_readvariableop0savev2_adam_conv2d_31_bias_v_read_readvariableop2savev2_adam_conv2d_32_kernel_v_read_readvariableop0savev2_adam_conv2d_32_bias_v_read_readvariableop2savev2_adam_conv2d_33_kernel_v_read_readvariableop0savev2_adam_conv2d_33_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::	?:::: : : : : : : : : :::::::	?::::::::::	?:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::%$!

_output_shapes
:	?: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
?
M
1__inference_max_pooling2d_32_layer_call_fn_229208

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_228547?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
e
I__inference_activation_33_layer_call_and_return_conditional_losses_229242

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_33_layer_call_fn_229222

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_228627w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_10_layer_call_fn_229272

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_228660o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_9_layer_call_fn_229257

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_228647a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
I__inference_activation_33_layer_call_and_return_conditional_losses_228638

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_229570
file_prefix;
!assignvariableop_conv2d_31_kernel:/
!assignvariableop_1_conv2d_31_bias:=
#assignvariableop_2_conv2d_32_kernel:/
!assignvariableop_3_conv2d_32_bias:=
#assignvariableop_4_conv2d_33_kernel:/
!assignvariableop_5_conv2d_33_bias:5
"assignvariableop_6_dense_10_kernel:	?.
 assignvariableop_7_dense_10_bias:4
"assignvariableop_8_dense_11_kernel:.
 assignvariableop_9_dense_11_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: E
+assignvariableop_19_adam_conv2d_31_kernel_m:7
)assignvariableop_20_adam_conv2d_31_bias_m:E
+assignvariableop_21_adam_conv2d_32_kernel_m:7
)assignvariableop_22_adam_conv2d_32_bias_m:E
+assignvariableop_23_adam_conv2d_33_kernel_m:7
)assignvariableop_24_adam_conv2d_33_bias_m:=
*assignvariableop_25_adam_dense_10_kernel_m:	?6
(assignvariableop_26_adam_dense_10_bias_m:<
*assignvariableop_27_adam_dense_11_kernel_m:6
(assignvariableop_28_adam_dense_11_bias_m:E
+assignvariableop_29_adam_conv2d_31_kernel_v:7
)assignvariableop_30_adam_conv2d_31_bias_v:E
+assignvariableop_31_adam_conv2d_32_kernel_v:7
)assignvariableop_32_adam_conv2d_32_bias_v:E
+assignvariableop_33_adam_conv2d_33_kernel_v:7
)assignvariableop_34_adam_conv2d_33_bias_v:=
*assignvariableop_35_adam_dense_10_kernel_v:	?6
(assignvariableop_36_adam_dense_10_bias_v:<
*assignvariableop_37_adam_dense_11_kernel_v:6
(assignvariableop_38_adam_dense_11_bias_v:
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_31_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_31_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_32_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_32_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_33_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_33_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_10_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_11_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_11_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_31_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_31_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_32_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_32_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_33_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_33_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_10_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_10_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_11_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_11_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_31_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_31_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_32_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_32_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_33_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_33_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_10_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_10_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_11_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_11_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
?A
?

!__inference__wrapped_model_228526
conv2d_31_inputO
5sequential_9_conv2d_31_conv2d_readvariableop_resource:D
6sequential_9_conv2d_31_biasadd_readvariableop_resource:O
5sequential_9_conv2d_32_conv2d_readvariableop_resource:D
6sequential_9_conv2d_32_biasadd_readvariableop_resource:O
5sequential_9_conv2d_33_conv2d_readvariableop_resource:D
6sequential_9_conv2d_33_biasadd_readvariableop_resource:G
4sequential_9_dense_10_matmul_readvariableop_resource:	?C
5sequential_9_dense_10_biasadd_readvariableop_resource:F
4sequential_9_dense_11_matmul_readvariableop_resource:C
5sequential_9_dense_11_biasadd_readvariableop_resource:
identity??-sequential_9/conv2d_31/BiasAdd/ReadVariableOp?,sequential_9/conv2d_31/Conv2D/ReadVariableOp?-sequential_9/conv2d_32/BiasAdd/ReadVariableOp?,sequential_9/conv2d_32/Conv2D/ReadVariableOp?-sequential_9/conv2d_33/BiasAdd/ReadVariableOp?,sequential_9/conv2d_33/Conv2D/ReadVariableOp?,sequential_9/dense_10/BiasAdd/ReadVariableOp?+sequential_9/dense_10/MatMul/ReadVariableOp?,sequential_9/dense_11/BiasAdd/ReadVariableOp?+sequential_9/dense_11/MatMul/ReadVariableOp?
,sequential_9/conv2d_31/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_9/conv2d_31/Conv2DConv2Dconv2d_31_input4sequential_9/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN*
paddingVALID*
strides
?
-sequential_9/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_9/conv2d_31/BiasAddBiasAdd&sequential_9/conv2d_31/Conv2D:output:05sequential_9/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN?
sequential_9/activation_31/ReluRelu'sequential_9/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN?
%sequential_9/max_pooling2d_31/MaxPoolMaxPool-sequential_9/activation_31/Relu:activations:0*/
_output_shapes
:?????????''*
ksize
*
paddingVALID*
strides
?
,sequential_9/conv2d_32/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_9/conv2d_32/Conv2DConv2D.sequential_9/max_pooling2d_31/MaxPool:output:04sequential_9/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%*
paddingVALID*
strides
?
-sequential_9/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_9/conv2d_32/BiasAddBiasAdd&sequential_9/conv2d_32/Conv2D:output:05sequential_9/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%?
sequential_9/activation_32/ReluRelu'sequential_9/conv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%?
%sequential_9/max_pooling2d_32/MaxPoolMaxPool-sequential_9/activation_32/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
,sequential_9/conv2d_33/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_9/conv2d_33/Conv2DConv2D.sequential_9/max_pooling2d_32/MaxPool:output:04sequential_9/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
?
-sequential_9/conv2d_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_9/conv2d_33/BiasAddBiasAdd&sequential_9/conv2d_33/Conv2D:output:05sequential_9/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
sequential_9/activation_33/ReluRelu'sequential_9/conv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
%sequential_9/max_pooling2d_33/MaxPoolMaxPool-sequential_9/activation_33/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
m
sequential_9/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
sequential_9/flatten_9/ReshapeReshape.sequential_9/max_pooling2d_33/MaxPool:output:0%sequential_9/flatten_9/Const:output:0*
T0*(
_output_shapes
:???????????
+sequential_9/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_9/dense_10/MatMulMatMul'sequential_9/flatten_9/Reshape:output:03sequential_9/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_9/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_9/dense_10/BiasAddBiasAdd&sequential_9/dense_10/MatMul:product:04sequential_9/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_9/dense_10/SoftmaxSoftmax&sequential_9/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
+sequential_9/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_9/dense_11/MatMulMatMul'sequential_9/dense_10/Softmax:softmax:03sequential_9/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_9/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_9/dense_11/BiasAddBiasAdd&sequential_9/dense_11/MatMul:product:04sequential_9/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_9/dense_11/SoftmaxSoftmax&sequential_9/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_9/dense_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_9/conv2d_31/BiasAdd/ReadVariableOp-^sequential_9/conv2d_31/Conv2D/ReadVariableOp.^sequential_9/conv2d_32/BiasAdd/ReadVariableOp-^sequential_9/conv2d_32/Conv2D/ReadVariableOp.^sequential_9/conv2d_33/BiasAdd/ReadVariableOp-^sequential_9/conv2d_33/Conv2D/ReadVariableOp-^sequential_9/dense_10/BiasAdd/ReadVariableOp,^sequential_9/dense_10/MatMul/ReadVariableOp-^sequential_9/dense_11/BiasAdd/ReadVariableOp,^sequential_9/dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2^
-sequential_9/conv2d_31/BiasAdd/ReadVariableOp-sequential_9/conv2d_31/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_31/Conv2D/ReadVariableOp,sequential_9/conv2d_31/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_32/BiasAdd/ReadVariableOp-sequential_9/conv2d_32/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_32/Conv2D/ReadVariableOp,sequential_9/conv2d_32/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_33/BiasAdd/ReadVariableOp-sequential_9/conv2d_33/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_33/Conv2D/ReadVariableOp,sequential_9/conv2d_33/Conv2D/ReadVariableOp2\
,sequential_9/dense_10/BiasAdd/ReadVariableOp,sequential_9/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_10/MatMul/ReadVariableOp+sequential_9/dense_10/MatMul/ReadVariableOp2\
,sequential_9/dense_11/BiasAdd/ReadVariableOp,sequential_9/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_11/MatMul/ReadVariableOp+sequential_9/dense_11/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????PP
)
_user_specified_nameconv2d_31_input
?

?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_228579

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NNg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????NNw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????PP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_229193

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????'': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????''
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_228547

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_228535

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_32_layer_call_fn_229183

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_228603w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????%%`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????'': : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????''
 
_user_specified_nameinputs
?

?
D__inference_dense_10_layer_call_and_return_conditional_losses_229283

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228844

inputs*
conv2d_31_228811:
conv2d_31_228813:*
conv2d_32_228818:
conv2d_32_228820:*
conv2d_33_228825:
conv2d_33_228827:"
dense_10_228833:	?
dense_10_228835:!
dense_11_228838:
dense_11_228840:
identity??!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_31_228811conv2d_31_228813*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_228579?
activation_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_31_layer_call_and_return_conditional_losses_228590?
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_228535?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_228818conv2d_32_228820*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_228603?
activation_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_32_layer_call_and_return_conditional_losses_228614?
 max_pooling2d_32/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_228547?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_228825conv2d_33_228827*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_228627?
activation_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_33_layer_call_and_return_conditional_losses_228638?
 max_pooling2d_33/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_228559?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_228647?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_10_228833dense_10_228835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_228660?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_228838dense_11_228840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_228677x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?5
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229135

inputsB
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource::
'dense_10_matmul_readvariableop_resource:	?6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity?? conv2d_31/BiasAdd/ReadVariableOp?conv2d_31/Conv2D/ReadVariableOp? conv2d_32/BiasAdd/ReadVariableOp?conv2d_32/Conv2D/ReadVariableOp? conv2d_33/BiasAdd/ReadVariableOp?conv2d_33/Conv2D/ReadVariableOp?dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_31/Conv2DConv2Dinputs'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN*
paddingVALID*
strides
?
 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NNp
activation_31/ReluReluconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN?
max_pooling2d_31/MaxPoolMaxPool activation_31/Relu:activations:0*/
_output_shapes
:?????????''*
ksize
*
paddingVALID*
strides
?
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_32/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%*
paddingVALID*
strides
?
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%p
activation_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%?
max_pooling2d_32/MaxPoolMaxPool activation_32/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
?
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
?
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????p
activation_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
max_pooling2d_33/MaxPoolMaxPool activation_33/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_9/ReshapeReshape!max_pooling2d_33/MaxPool:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:???????????
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_10/MatMulMatMulflatten_9/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_10/SoftmaxSoftmaxdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_11/MatMulMatMuldense_10/Softmax:softmax:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
e
I__inference_activation_32_layer_call_and_return_conditional_losses_229203

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????%%b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????%%"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????%%:W S
/
_output_shapes
:?????????%%
 
_user_specified_nameinputs
?
?
)__inference_dense_11_layer_call_fn_229292

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_228677o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_229252

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_activation_32_layer_call_fn_229198

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_32_layer_call_and_return_conditional_losses_228614h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????%%"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????%%:W S
/
_output_shapes
:?????????%%
 
_user_specified_nameinputs
?

?
-__inference_sequential_9_layer_call_fn_229022

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_228684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
E__inference_conv2d_33_layer_call_and_return_conditional_losses_229232

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_11_layer_call_and_return_conditional_losses_229303

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_229213

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_228603

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????%%w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????'': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????''
 
_user_specified_nameinputs
?

?
-__inference_sequential_9_layer_call_fn_229047

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_228844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
-__inference_sequential_9_layer_call_fn_228892
conv2d_31_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:
	unknown_5:	?
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_31_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_228844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????PP
)
_user_specified_nameconv2d_31_input
?0
?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228684

inputs*
conv2d_31_228580:
conv2d_31_228582:*
conv2d_32_228604:
conv2d_32_228606:*
conv2d_33_228628:
conv2d_33_228630:"
dense_10_228661:	?
dense_10_228663:!
dense_11_228678:
dense_11_228680:
identity??!conv2d_31/StatefulPartitionedCall?!conv2d_32/StatefulPartitionedCall?!conv2d_33/StatefulPartitionedCall? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_31_228580conv2d_31_228582*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_31_layer_call_and_return_conditional_losses_228579?
activation_31/PartitionedCallPartitionedCall*conv2d_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_31_layer_call_and_return_conditional_losses_228590?
 max_pooling2d_31/PartitionedCallPartitionedCall&activation_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_228535?
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_32_228604conv2d_32_228606*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_32_layer_call_and_return_conditional_losses_228603?
activation_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_32_layer_call_and_return_conditional_losses_228614?
 max_pooling2d_32/PartitionedCallPartitionedCall&activation_32/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_228547?
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_228628conv2d_33_228630*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_33_layer_call_and_return_conditional_losses_228627?
activation_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_activation_33_layer_call_and_return_conditional_losses_228638?
 max_pooling2d_33/PartitionedCallPartitionedCall&activation_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_228559?
flatten_9/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_228647?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_10_228661dense_10_228663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_228660?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_228678dense_11_228680*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_228677x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_31/StatefulPartitionedCall"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_31_input@
!serving_default_conv2d_31_input:0?????????PP<
dense_110
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op"
_tf_keras_layer
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias"
_tf_keras_layer
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

ikernel
jbias"
_tf_keras_layer
f
0
1
12
23
F4
G5
a6
b7
i8
j9"
trackable_list_wrapper
f
0
1
12
23
F4
G5
a6
b7
i8
j9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ptrace_0
qtrace_1
rtrace_2
strace_32?
-__inference_sequential_9_layer_call_fn_228707
-__inference_sequential_9_layer_call_fn_229022
-__inference_sequential_9_layer_call_fn_229047
-__inference_sequential_9_layer_call_fn_228892?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zptrace_0zqtrace_1zrtrace_2zstrace_3
?
ttrace_0
utrace_1
vtrace_2
wtrace_32?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229091
H__inference_sequential_9_layer_call_and_return_conditional_losses_229135
H__inference_sequential_9_layer_call_and_return_conditional_losses_228928
H__inference_sequential_9_layer_call_and_return_conditional_losses_228964?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zttrace_0zutrace_1zvtrace_2zwtrace_3
?B?
!__inference__wrapped_model_228526conv2d_31_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
xiter

ybeta_1

zbeta_2
	{decay
|learning_ratem?m?1m?2m?Fm?Gm?am?bm?im?jm?v?v?1v?2v?Fv?Gv?av?bv?iv?jv?"
	optimizer
,
}serving_default"
signature_map
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
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_conv2d_31_layer_call_fn_229144?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_229154?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:(2conv2d_31/kernel
:2conv2d_31/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_activation_31_layer_call_fn_229159?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_activation_31_layer_call_and_return_conditional_losses_229164?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
1__inference_max_pooling2d_31_layer_call_fn_229169?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_229174?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_conv2d_32_layer_call_fn_229183?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_229193?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:(2conv2d_32/kernel
:2conv2d_32/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_activation_32_layer_call_fn_229198?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_activation_32_layer_call_and_return_conditional_losses_229203?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
1__inference_max_pooling2d_32_layer_call_fn_229208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_229213?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_conv2d_33_layer_call_fn_229222?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_conv2d_33_layer_call_and_return_conditional_losses_229232?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
*:(2conv2d_33/kernel
:2conv2d_33/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
.__inference_activation_33_layer_call_fn_229237?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
I__inference_activation_33_layer_call_and_return_conditional_losses_229242?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
1__inference_max_pooling2d_33_layer_call_fn_229247?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_229252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
*__inference_flatten_9_layer_call_fn_229257?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
E__inference_flatten_9_layer_call_and_return_conditional_losses_229263?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_10_layer_call_fn_229272?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_10_layer_call_and_return_conditional_losses_229283?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
": 	?2dense_10/kernel
:2dense_10/bias
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_11_layer_call_fn_229292?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_dense_11_layer_call_and_return_conditional_losses_229303?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
!:2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_sequential_9_layer_call_fn_228707conv2d_31_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_9_layer_call_fn_229022inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_9_layer_call_fn_229047inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
-__inference_sequential_9_layer_call_fn_228892conv2d_31_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229091inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229135inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228928conv2d_31_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228964conv2d_31_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
$__inference_signature_wrapper_228997conv2d_31_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_conv2d_31_layer_call_fn_229144inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_31_layer_call_and_return_conditional_losses_229154inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
.__inference_activation_31_layer_call_fn_229159inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_activation_31_layer_call_and_return_conditional_losses_229164inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
1__inference_max_pooling2d_31_layer_call_fn_229169inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_229174inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_conv2d_32_layer_call_fn_229183inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_229193inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
.__inference_activation_32_layer_call_fn_229198inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_activation_32_layer_call_and_return_conditional_losses_229203inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
1__inference_max_pooling2d_32_layer_call_fn_229208inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_229213inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_conv2d_33_layer_call_fn_229222inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_conv2d_33_layer_call_and_return_conditional_losses_229232inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
.__inference_activation_33_layer_call_fn_229237inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_activation_33_layer_call_and_return_conditional_losses_229242inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
1__inference_max_pooling2d_33_layer_call_fn_229247inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_229252inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
*__inference_flatten_9_layer_call_fn_229257inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
E__inference_flatten_9_layer_call_and_return_conditional_losses_229263inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
)__inference_dense_10_layer_call_fn_229272inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_10_layer_call_and_return_conditional_losses_229283inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?B?
)__inference_dense_11_layer_call_fn_229292inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_dense_11_layer_call_and_return_conditional_losses_229303inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_31/kernel/m
!:2Adam/conv2d_31/bias/m
/:-2Adam/conv2d_32/kernel/m
!:2Adam/conv2d_32/bias/m
/:-2Adam/conv2d_33/kernel/m
!:2Adam/conv2d_33/bias/m
':%	?2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
&:$2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
/:-2Adam/conv2d_31/kernel/v
!:2Adam/conv2d_31/bias/v
/:-2Adam/conv2d_32/kernel/v
!:2Adam/conv2d_32/bias/v
/:-2Adam/conv2d_33/kernel/v
!:2Adam/conv2d_33/bias/v
':%	?2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
&:$2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v?
!__inference__wrapped_model_228526?
12FGabij@?=
6?3
1?.
conv2d_31_input?????????PP
? "3?0
.
dense_11"?
dense_11??????????
I__inference_activation_31_layer_call_and_return_conditional_losses_229164h7?4
-?*
(?%
inputs?????????NN
? "-?*
#? 
0?????????NN
? ?
.__inference_activation_31_layer_call_fn_229159[7?4
-?*
(?%
inputs?????????NN
? " ??????????NN?
I__inference_activation_32_layer_call_and_return_conditional_losses_229203h7?4
-?*
(?%
inputs?????????%%
? "-?*
#? 
0?????????%%
? ?
.__inference_activation_32_layer_call_fn_229198[7?4
-?*
(?%
inputs?????????%%
? " ??????????%%?
I__inference_activation_33_layer_call_and_return_conditional_losses_229242h7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
.__inference_activation_33_layer_call_fn_229237[7?4
-?*
(?%
inputs?????????
? " ???????????
E__inference_conv2d_31_layer_call_and_return_conditional_losses_229154l7?4
-?*
(?%
inputs?????????PP
? "-?*
#? 
0?????????NN
? ?
*__inference_conv2d_31_layer_call_fn_229144_7?4
-?*
(?%
inputs?????????PP
? " ??????????NN?
E__inference_conv2d_32_layer_call_and_return_conditional_losses_229193l127?4
-?*
(?%
inputs?????????''
? "-?*
#? 
0?????????%%
? ?
*__inference_conv2d_32_layer_call_fn_229183_127?4
-?*
(?%
inputs?????????''
? " ??????????%%?
E__inference_conv2d_33_layer_call_and_return_conditional_losses_229232lFG7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
*__inference_conv2d_33_layer_call_fn_229222_FG7?4
-?*
(?%
inputs?????????
? " ???????????
D__inference_dense_10_layer_call_and_return_conditional_losses_229283]ab0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_10_layer_call_fn_229272Pab0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dense_11_layer_call_and_return_conditional_losses_229303\ij/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_11_layer_call_fn_229292Oij/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_flatten_9_layer_call_and_return_conditional_losses_229263a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
*__inference_flatten_9_layer_call_fn_229257T7?4
-?*
(?%
inputs?????????
? "????????????
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_229174?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_31_layer_call_fn_229169?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_229213?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_32_layer_call_fn_229208?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_229252?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_33_layer_call_fn_229247?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_9_layer_call_and_return_conditional_losses_228928}
12FGabijH?E
>?;
1?.
conv2d_31_input?????????PP
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_228964}
12FGabijH?E
>?;
1?.
conv2d_31_input?????????PP
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229091t
12FGabij??<
5?2
(?%
inputs?????????PP
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_9_layer_call_and_return_conditional_losses_229135t
12FGabij??<
5?2
(?%
inputs?????????PP
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_9_layer_call_fn_228707p
12FGabijH?E
>?;
1?.
conv2d_31_input?????????PP
p 

 
? "???????????
-__inference_sequential_9_layer_call_fn_228892p
12FGabijH?E
>?;
1?.
conv2d_31_input?????????PP
p

 
? "???????????
-__inference_sequential_9_layer_call_fn_229022g
12FGabij??<
5?2
(?%
inputs?????????PP
p 

 
? "???????????
-__inference_sequential_9_layer_call_fn_229047g
12FGabij??<
5?2
(?%
inputs?????????PP
p

 
? "???????????
$__inference_signature_wrapper_228997?
12FGabijS?P
? 
I?F
D
conv2d_31_input1?.
conv2d_31_input?????????PP"3?0
.
dense_11"?
dense_11?????????