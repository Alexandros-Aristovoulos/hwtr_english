??
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
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
?
Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_41/kernel/v
?
*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_142/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_142/bias/v
}
*Adam/conv2d_142/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_142/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_142/kernel/v
?
,Adam/conv2d_142/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_141/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_141/bias/v
}
*Adam/conv2d_141/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_141/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_141/kernel/v
?
,Adam/conv2d_141/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_140/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_140/bias/v
}
*Adam/conv2d_140/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_140/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_140/kernel/v
?
,Adam/conv2d_140/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_139/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_139/bias/v
}
*Adam/conv2d_139/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_139/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_139/kernel/v
?
,Adam/conv2d_139/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/kernel/v*&
_output_shapes
:0*
dtype0
?
Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_41/kernel/m
?
*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_142/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_142/bias/m
}
*Adam/conv2d_142/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_142/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_142/kernel/m
?
,Adam/conv2d_142/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_141/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_141/bias/m
}
*Adam/conv2d_141/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_141/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_141/kernel/m
?
,Adam/conv2d_141/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_140/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_140/bias/m
}
*Adam/conv2d_140/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_140/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_140/kernel/m
?
,Adam/conv2d_140/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_139/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_139/bias/m
}
*Adam/conv2d_139/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_139/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_139/kernel/m
?
,Adam/conv2d_139/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/kernel/m*&
_output_shapes
:0*
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
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:*
dtype0
{
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_41/kernel
t
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes
:	?*
dtype0
v
conv2d_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_142/bias
o
#conv2d_142/bias/Read/ReadVariableOpReadVariableOpconv2d_142/bias*
_output_shapes
:0*
dtype0
?
conv2d_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_142/kernel

%conv2d_142/kernel/Read/ReadVariableOpReadVariableOpconv2d_142/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_141/bias
o
#conv2d_141/bias/Read/ReadVariableOpReadVariableOpconv2d_141/bias*
_output_shapes
:0*
dtype0
?
conv2d_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_141/kernel

%conv2d_141/kernel/Read/ReadVariableOpReadVariableOpconv2d_141/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_140/bias
o
#conv2d_140/bias/Read/ReadVariableOpReadVariableOpconv2d_140/bias*
_output_shapes
:0*
dtype0
?
conv2d_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_140/kernel

%conv2d_140/kernel/Read/ReadVariableOpReadVariableOpconv2d_140/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_139/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_139/bias
o
#conv2d_139/bias/Read/ReadVariableOpReadVariableOpconv2d_139/bias*
_output_shapes
:0*
dtype0
?
conv2d_139/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameconv2d_139/kernel

%conv2d_139/kernel/Read/ReadVariableOpReadVariableOpconv2d_139/kernel*&
_output_shapes
:0*
dtype0

NoOpNoOp
?~
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?}
value?}B?} B?}
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
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
*0&call_and_return_all_conditional_losses* 
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator* 
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op*
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
?
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator* 
?
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

Zkernel
[bias
 \_jit_compiled_convolution_op*
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses* 
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
o_random_generator* 
?
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias
 x_jit_compiled_convolution_op*
?
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses* 
?
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias*
L
"0
#1
>2
?3
Z4
[5
v6
w7
?8
?9*
L
"0
#1
>2
?3
Z4
[5
v6
w7
?8
?9*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate"m?#m?>m??m?Zm?[m?vm?wm?	?m?	?m?"v?#v?>v??v?Zv?[v?vv?wv?	?v?	?v?*

?serving_default* 

"0
#1*

"0
#1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_139/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_139/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
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
&0"call_and_return_conditional_losses* 
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
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

>0
?1*

>0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_140/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_140/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
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
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 
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
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

Z0
[1*

Z0
[1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_141/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_141/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 
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
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 
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
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

v0
w1*

v0
w1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
a[
VARIABLE_VALUEconv2d_142/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_142/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_41/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
?
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
11
12
13
14
15
16
17*

?0
?1*
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
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
?~
VARIABLE_VALUEAdam/conv2d_139/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_139/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_140/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_140/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_141/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_141/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_142/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_142/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_139/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_139/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_140/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_140/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_141/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_141/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_142/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_142/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
 serving_default_conv2d_139_inputPlaceholder*/
_output_shapes
:?????????PP*
dtype0*$
shape:?????????PP
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_139_inputconv2d_139/kernelconv2d_139/biasconv2d_140/kernelconv2d_140/biasconv2d_141/kernelconv2d_141/biasconv2d_142/kernelconv2d_142/biasdense_41/kerneldense_41/bias*
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
$__inference_signature_wrapper_592020
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_139/kernel/Read/ReadVariableOp#conv2d_139/bias/Read/ReadVariableOp%conv2d_140/kernel/Read/ReadVariableOp#conv2d_140/bias/Read/ReadVariableOp%conv2d_141/kernel/Read/ReadVariableOp#conv2d_141/bias/Read/ReadVariableOp%conv2d_142/kernel/Read/ReadVariableOp#conv2d_142/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_139/kernel/m/Read/ReadVariableOp*Adam/conv2d_139/bias/m/Read/ReadVariableOp,Adam/conv2d_140/kernel/m/Read/ReadVariableOp*Adam/conv2d_140/bias/m/Read/ReadVariableOp,Adam/conv2d_141/kernel/m/Read/ReadVariableOp*Adam/conv2d_141/bias/m/Read/ReadVariableOp,Adam/conv2d_142/kernel/m/Read/ReadVariableOp*Adam/conv2d_142/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp,Adam/conv2d_139/kernel/v/Read/ReadVariableOp*Adam/conv2d_139/bias/v/Read/ReadVariableOp,Adam/conv2d_140/kernel/v/Read/ReadVariableOp*Adam/conv2d_140/bias/v/Read/ReadVariableOp,Adam/conv2d_141/kernel/v/Read/ReadVariableOp*Adam/conv2d_141/bias/v/Read/ReadVariableOp,Adam/conv2d_142/kernel/v/Read/ReadVariableOp*Adam/conv2d_142/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOpConst*4
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
__inference__traced_save_592631
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_139/kernelconv2d_139/biasconv2d_140/kernelconv2d_140/biasconv2d_141/kernelconv2d_141/biasconv2d_142/kernelconv2d_142/biasdense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_139/kernel/mAdam/conv2d_139/bias/mAdam/conv2d_140/kernel/mAdam/conv2d_140/bias/mAdam/conv2d_141/kernel/mAdam/conv2d_141/bias/mAdam/conv2d_142/kernel/mAdam/conv2d_142/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/conv2d_139/kernel/vAdam/conv2d_139/bias/vAdam/conv2d_140/kernel/vAdam/conv2d_140/bias/vAdam/conv2d_141/kernel/vAdam/conv2d_141/bias/vAdam/conv2d_142/kernel/vAdam/conv2d_142/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v*3
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
"__inference__traced_restore_592758??	
?B
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_591945
conv2d_139_input+
conv2d_139_591906:0
conv2d_139_591908:0+
conv2d_140_591914:00
conv2d_140_591916:0+
conv2d_141_591922:00
conv2d_141_591924:0+
conv2d_142_591930:00
conv2d_142_591932:0"
dense_41_591939:	?
dense_41_591941:
identity??"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCallconv2d_139_inputconv2d_139_591906conv2d_139_591908*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_591451?
activation_139/PartitionedCallPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_139_layer_call_and_return_conditional_losses_591462?
!max_pooling2d_139/PartitionedCallPartitionedCall'activation_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_591395?
dropout_139/PartitionedCallPartitionedCall*max_pooling2d_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_139_layer_call_and_return_conditional_losses_591470?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall$dropout_139/PartitionedCall:output:0conv2d_140_591914conv2d_140_591916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_591482?
activation_140/PartitionedCallPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_140_layer_call_and_return_conditional_losses_591493?
!max_pooling2d_140/PartitionedCallPartitionedCall'activation_140/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_591407?
dropout_140/PartitionedCallPartitionedCall*max_pooling2d_140/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_140_layer_call_and_return_conditional_losses_591501?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall$dropout_140/PartitionedCall:output:0conv2d_141_591922conv2d_141_591924*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_591513?
activation_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_141_layer_call_and_return_conditional_losses_591524?
!max_pooling2d_141/PartitionedCallPartitionedCall'activation_141/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_591419?
dropout_141/PartitionedCallPartitionedCall*max_pooling2d_141/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_141_layer_call_and_return_conditional_losses_591532?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall$dropout_141/PartitionedCall:output:0conv2d_142_591930conv2d_142_591932*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_591544?
activation_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_142_layer_call_and_return_conditional_losses_591555?
!max_pooling2d_142/PartitionedCallPartitionedCall'activation_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_591431?
dropout_142/PartitionedCallPartitionedCall*max_pooling2d_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_142_layer_call_and_return_conditional_losses_591563?
flatten_41/PartitionedCallPartitionedCall$dropout_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_591571?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_591939dense_41_591941*
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
D__inference_dense_41_layer_call_and_return_conditional_losses_591584x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_139_input
?I
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_591855

inputs+
conv2d_139_591816:0
conv2d_139_591818:0+
conv2d_140_591824:00
conv2d_140_591826:0+
conv2d_141_591832:00
conv2d_141_591834:0+
conv2d_142_591840:00
conv2d_142_591842:0"
dense_41_591849:	?
dense_41_591851:
identity??"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?#dropout_139/StatefulPartitionedCall?#dropout_140/StatefulPartitionedCall?#dropout_141/StatefulPartitionedCall?#dropout_142/StatefulPartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_139_591816conv2d_139_591818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_591451?
activation_139/PartitionedCallPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_139_layer_call_and_return_conditional_losses_591462?
!max_pooling2d_139/PartitionedCallPartitionedCall'activation_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_591395?
#dropout_139/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_139_layer_call_and_return_conditional_losses_591767?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall,dropout_139/StatefulPartitionedCall:output:0conv2d_140_591824conv2d_140_591826*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_591482?
activation_140/PartitionedCallPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_140_layer_call_and_return_conditional_losses_591493?
!max_pooling2d_140/PartitionedCallPartitionedCall'activation_140/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_591407?
#dropout_140/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_140/PartitionedCall:output:0$^dropout_139/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_140_layer_call_and_return_conditional_losses_591728?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall,dropout_140/StatefulPartitionedCall:output:0conv2d_141_591832conv2d_141_591834*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_591513?
activation_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_141_layer_call_and_return_conditional_losses_591524?
!max_pooling2d_141/PartitionedCallPartitionedCall'activation_141/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_591419?
#dropout_141/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_141/PartitionedCall:output:0$^dropout_140/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_141_layer_call_and_return_conditional_losses_591689?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall,dropout_141/StatefulPartitionedCall:output:0conv2d_142_591840conv2d_142_591842*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_591544?
activation_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_142_layer_call_and_return_conditional_losses_591555?
!max_pooling2d_142/PartitionedCallPartitionedCall'activation_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_591431?
#dropout_142/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_142/PartitionedCall:output:0$^dropout_141/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_142_layer_call_and_return_conditional_losses_591650?
flatten_41/PartitionedCallPartitionedCall,dropout_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_591571?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_591849dense_41_591851*
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
D__inference_dense_41_layer_call_and_return_conditional_losses_591584x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall$^dropout_139/StatefulPartitionedCall$^dropout_140/StatefulPartitionedCall$^dropout_141/StatefulPartitionedCall$^dropout_142/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2J
#dropout_139/StatefulPartitionedCall#dropout_139/StatefulPartitionedCall2J
#dropout_140/StatefulPartitionedCall#dropout_140/StatefulPartitionedCall2J
#dropout_141/StatefulPartitionedCall#dropout_141/StatefulPartitionedCall2J
#dropout_142/StatefulPartitionedCall#dropout_142/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_592301

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
e
,__inference_dropout_139_layer_call_fn_592245

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_139_layer_call_and_return_conditional_losses_591767w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????''0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????''022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
K
/__inference_activation_141_layer_call_fn_592352

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
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_141_layer_call_and_return_conditional_losses_591524h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_592413

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_139_layer_call_fn_592230

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_591395?
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
i
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_592433

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
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_592471

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_141_layer_call_and_return_conditional_losses_592382

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_139_layer_call_and_return_conditional_losses_591462

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????NN0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????NN0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????NN0:W S
/
_output_shapes
:?????????NN0
 
_user_specified_nameinputs
?
e
G__inference_dropout_142_layer_call_and_return_conditional_losses_591563

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
K
/__inference_activation_139_layer_call_fn_592220

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
:?????????NN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_139_layer_call_and_return_conditional_losses_591462h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????NN0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????NN0:W S
/
_output_shapes
:?????????NN0
 
_user_specified_nameinputs
?
e
G__inference_dropout_139_layer_call_and_return_conditional_losses_592250

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????''0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????''0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????''0:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
?
+__inference_conv2d_142_layer_call_fn_592403

inputs!
unknown:00
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_591544w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_592281

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????%%0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????''0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?

?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_591482

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????%%0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????''0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_592758
file_prefix<
"assignvariableop_conv2d_139_kernel:00
"assignvariableop_1_conv2d_139_bias:0>
$assignvariableop_2_conv2d_140_kernel:000
"assignvariableop_3_conv2d_140_bias:0>
$assignvariableop_4_conv2d_141_kernel:000
"assignvariableop_5_conv2d_141_bias:0>
$assignvariableop_6_conv2d_142_kernel:000
"assignvariableop_7_conv2d_142_bias:05
"assignvariableop_8_dense_41_kernel:	?.
 assignvariableop_9_dense_41_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: F
,assignvariableop_19_adam_conv2d_139_kernel_m:08
*assignvariableop_20_adam_conv2d_139_bias_m:0F
,assignvariableop_21_adam_conv2d_140_kernel_m:008
*assignvariableop_22_adam_conv2d_140_bias_m:0F
,assignvariableop_23_adam_conv2d_141_kernel_m:008
*assignvariableop_24_adam_conv2d_141_bias_m:0F
,assignvariableop_25_adam_conv2d_142_kernel_m:008
*assignvariableop_26_adam_conv2d_142_bias_m:0=
*assignvariableop_27_adam_dense_41_kernel_m:	?6
(assignvariableop_28_adam_dense_41_bias_m:F
,assignvariableop_29_adam_conv2d_139_kernel_v:08
*assignvariableop_30_adam_conv2d_139_bias_v:0F
,assignvariableop_31_adam_conv2d_140_kernel_v:008
*assignvariableop_32_adam_conv2d_140_bias_v:0F
,assignvariableop_33_adam_conv2d_141_kernel_v:008
*assignvariableop_34_adam_conv2d_141_bias_v:0F
,assignvariableop_35_adam_conv2d_142_kernel_v:008
*assignvariableop_36_adam_conv2d_142_bias_v:0=
*assignvariableop_37_adam_dense_41_kernel_v:	?6
(assignvariableop_38_adam_dense_41_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_139_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_139_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_140_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_140_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_141_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_141_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_142_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_142_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_41_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_41_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_139_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_139_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_140_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_140_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_141_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_141_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_142_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_142_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_41_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_41_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_139_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_139_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_140_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_140_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_141_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_141_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_142_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_142_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_41_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_41_bias_vIdentity_38:output:0"/device:CPU:0*
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
?
f
J__inference_activation_142_layer_call_and_return_conditional_losses_591555

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_591451

inputs8
conv2d_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????NN0w
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

f
G__inference_dropout_142_layer_call_and_return_conditional_losses_592460

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_592235

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
i
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_592367

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
?B
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_591591

inputs+
conv2d_139_591452:0
conv2d_139_591454:0+
conv2d_140_591483:00
conv2d_140_591485:0+
conv2d_141_591514:00
conv2d_141_591516:0+
conv2d_142_591545:00
conv2d_142_591547:0"
dense_41_591585:	?
dense_41_591587:
identity??"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_139_591452conv2d_139_591454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_591451?
activation_139/PartitionedCallPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_139_layer_call_and_return_conditional_losses_591462?
!max_pooling2d_139/PartitionedCallPartitionedCall'activation_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_591395?
dropout_139/PartitionedCallPartitionedCall*max_pooling2d_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_139_layer_call_and_return_conditional_losses_591470?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall$dropout_139/PartitionedCall:output:0conv2d_140_591483conv2d_140_591485*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_591482?
activation_140/PartitionedCallPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_140_layer_call_and_return_conditional_losses_591493?
!max_pooling2d_140/PartitionedCallPartitionedCall'activation_140/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_591407?
dropout_140/PartitionedCallPartitionedCall*max_pooling2d_140/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_140_layer_call_and_return_conditional_losses_591501?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall$dropout_140/PartitionedCall:output:0conv2d_141_591514conv2d_141_591516*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_591513?
activation_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_141_layer_call_and_return_conditional_losses_591524?
!max_pooling2d_141/PartitionedCallPartitionedCall'activation_141/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_591419?
dropout_141/PartitionedCallPartitionedCall*max_pooling2d_141/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_141_layer_call_and_return_conditional_losses_591532?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall$dropout_141/PartitionedCall:output:0conv2d_142_591545conv2d_142_591547*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_591544?
activation_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_142_layer_call_and_return_conditional_losses_591555?
!max_pooling2d_142/PartitionedCallPartitionedCall'activation_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_591431?
dropout_142/PartitionedCallPartitionedCall*max_pooling2d_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_142_layer_call_and_return_conditional_losses_591563?
flatten_41/PartitionedCallPartitionedCall$dropout_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_591571?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_591585dense_41_591587*
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
D__inference_dense_41_layer_call_and_return_conditional_losses_591584x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_592347

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
K
/__inference_activation_142_layer_call_fn_592418

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
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_142_layer_call_and_return_conditional_losses_591555h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_142_layer_call_fn_592428

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_591431?
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
?

?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_591513

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
b
F__inference_flatten_41_layer_call_and_return_conditional_losses_591571

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_592215

inputs8
conv2d_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????NN0w
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
?
f
J__inference_activation_141_layer_call_and_return_conditional_losses_591524

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
H
,__inference_dropout_139_layer_call_fn_592240

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
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_139_layer_call_and_return_conditional_losses_591470h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????''0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????''0:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
e
,__inference_dropout_140_layer_call_fn_592311

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_140_layer_call_and_return_conditional_losses_591728w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

f
G__inference_dropout_141_layer_call_and_return_conditional_losses_592394

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?<
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_592119

inputsC
)conv2d_139_conv2d_readvariableop_resource:08
*conv2d_139_biasadd_readvariableop_resource:0C
)conv2d_140_conv2d_readvariableop_resource:008
*conv2d_140_biasadd_readvariableop_resource:0C
)conv2d_141_conv2d_readvariableop_resource:008
*conv2d_141_biasadd_readvariableop_resource:0C
)conv2d_142_conv2d_readvariableop_resource:008
*conv2d_142_biasadd_readvariableop_resource:0:
'dense_41_matmul_readvariableop_resource:	?6
(dense_41_biasadd_readvariableop_resource:
identity??!conv2d_139/BiasAdd/ReadVariableOp? conv2d_139/Conv2D/ReadVariableOp?!conv2d_140/BiasAdd/ReadVariableOp? conv2d_140/Conv2D/ReadVariableOp?!conv2d_141/BiasAdd/ReadVariableOp? conv2d_141/Conv2D/ReadVariableOp?!conv2d_142/BiasAdd/ReadVariableOp? conv2d_142/Conv2D/ReadVariableOp?dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?
 conv2d_139/Conv2D/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
conv2d_139/Conv2DConv2Dinputs(conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
!conv2d_139/BiasAdd/ReadVariableOpReadVariableOp*conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_139/BiasAddBiasAddconv2d_139/Conv2D:output:0)conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0r
activation_139/ReluReluconv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
max_pooling2d_139/MaxPoolMaxPool!activation_139/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
~
dropout_139/IdentityIdentity"max_pooling2d_139/MaxPool:output:0*
T0*/
_output_shapes
:?????????''0?
 conv2d_140/Conv2D/ReadVariableOpReadVariableOp)conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_140/Conv2DConv2Ddropout_139/Identity:output:0(conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
!conv2d_140/BiasAdd/ReadVariableOpReadVariableOp*conv2d_140_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_140/BiasAddBiasAddconv2d_140/Conv2D:output:0)conv2d_140/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0r
activation_140/ReluReluconv2d_140/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
max_pooling2d_140/MaxPoolMaxPool!activation_140/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_140/IdentityIdentity"max_pooling2d_140/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
 conv2d_141/Conv2D/ReadVariableOpReadVariableOp)conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_141/Conv2DConv2Ddropout_140/Identity:output:0(conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_141/BiasAdd/ReadVariableOpReadVariableOp*conv2d_141_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_141/BiasAddBiasAddconv2d_141/Conv2D:output:0)conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_141/ReluReluconv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_141/MaxPoolMaxPool!activation_141/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_141/IdentityIdentity"max_pooling2d_141/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
 conv2d_142/Conv2D/ReadVariableOpReadVariableOp)conv2d_142_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_142/Conv2DConv2Ddropout_141/Identity:output:0(conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_142/BiasAdd/ReadVariableOpReadVariableOp*conv2d_142_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_142/BiasAddBiasAddconv2d_142/Conv2D:output:0)conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_142/ReluReluconv2d_142/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_142/MaxPoolMaxPool!activation_142/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_142/IdentityIdentity"max_pooling2d_142/MaxPool:output:0*
T0*/
_output_shapes
:?????????0a
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_41/ReshapeReshapedropout_142/Identity:output:0flatten_41/Const:output:0*
T0*(
_output_shapes
:???????????
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_41/MatMulMatMulflatten_41/Reshape:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_139/BiasAdd/ReadVariableOp!^conv2d_139/Conv2D/ReadVariableOp"^conv2d_140/BiasAdd/ReadVariableOp!^conv2d_140/Conv2D/ReadVariableOp"^conv2d_141/BiasAdd/ReadVariableOp!^conv2d_141/Conv2D/ReadVariableOp"^conv2d_142/BiasAdd/ReadVariableOp!^conv2d_142/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_139/BiasAdd/ReadVariableOp!conv2d_139/BiasAdd/ReadVariableOp2D
 conv2d_139/Conv2D/ReadVariableOp conv2d_139/Conv2D/ReadVariableOp2F
!conv2d_140/BiasAdd/ReadVariableOp!conv2d_140/BiasAdd/ReadVariableOp2D
 conv2d_140/Conv2D/ReadVariableOp conv2d_140/Conv2D/ReadVariableOp2F
!conv2d_141/BiasAdd/ReadVariableOp!conv2d_141/BiasAdd/ReadVariableOp2D
 conv2d_141/Conv2D/ReadVariableOp conv2d_141/Conv2D/ReadVariableOp2F
!conv2d_142/BiasAdd/ReadVariableOp!conv2d_142/BiasAdd/ReadVariableOp2D
 conv2d_142/Conv2D/ReadVariableOp conv2d_142/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
f
J__inference_activation_142_layer_call_and_return_conditional_losses_592423

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
H
,__inference_dropout_140_layer_call_fn_592306

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
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_140_layer_call_and_return_conditional_losses_591501h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_141_layer_call_fn_592377

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_141_layer_call_and_return_conditional_losses_591689w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
,__inference_dropout_142_layer_call_fn_592443

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_142_layer_call_and_return_conditional_losses_591650w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_140_layer_call_fn_592296

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_591407?
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
H
,__inference_dropout_142_layer_call_fn_592438

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
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_142_layer_call_and_return_conditional_losses_591563h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_142_layer_call_and_return_conditional_losses_592448

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

f
G__inference_dropout_139_layer_call_and_return_conditional_losses_592262

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????''0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????''0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????''0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????''0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????''0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????''0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????''0:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
f
J__inference_activation_140_layer_call_and_return_conditional_losses_591493

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????%%0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????%%0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????%%0:W S
/
_output_shapes
:?????????%%0
 
_user_specified_nameinputs
?I
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_591987
conv2d_139_input+
conv2d_139_591948:0
conv2d_139_591950:0+
conv2d_140_591956:00
conv2d_140_591958:0+
conv2d_141_591964:00
conv2d_141_591966:0+
conv2d_142_591972:00
conv2d_142_591974:0"
dense_41_591981:	?
dense_41_591983:
identity??"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall? dense_41/StatefulPartitionedCall?#dropout_139/StatefulPartitionedCall?#dropout_140/StatefulPartitionedCall?#dropout_141/StatefulPartitionedCall?#dropout_142/StatefulPartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCallconv2d_139_inputconv2d_139_591948conv2d_139_591950*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_591451?
activation_139/PartitionedCallPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_139_layer_call_and_return_conditional_losses_591462?
!max_pooling2d_139/PartitionedCallPartitionedCall'activation_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_591395?
#dropout_139/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_139/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_139_layer_call_and_return_conditional_losses_591767?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall,dropout_139/StatefulPartitionedCall:output:0conv2d_140_591956conv2d_140_591958*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_591482?
activation_140/PartitionedCallPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_140_layer_call_and_return_conditional_losses_591493?
!max_pooling2d_140/PartitionedCallPartitionedCall'activation_140/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_591407?
#dropout_140/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_140/PartitionedCall:output:0$^dropout_139/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_140_layer_call_and_return_conditional_losses_591728?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall,dropout_140/StatefulPartitionedCall:output:0conv2d_141_591964conv2d_141_591966*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_591513?
activation_141/PartitionedCallPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_141_layer_call_and_return_conditional_losses_591524?
!max_pooling2d_141/PartitionedCallPartitionedCall'activation_141/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_591419?
#dropout_141/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_141/PartitionedCall:output:0$^dropout_140/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_141_layer_call_and_return_conditional_losses_591689?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall,dropout_141/StatefulPartitionedCall:output:0conv2d_142_591972conv2d_142_591974*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_591544?
activation_142/PartitionedCallPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_142_layer_call_and_return_conditional_losses_591555?
!max_pooling2d_142/PartitionedCallPartitionedCall'activation_142/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_591431?
#dropout_142/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_142/PartitionedCall:output:0$^dropout_141/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_142_layer_call_and_return_conditional_losses_591650?
flatten_41/PartitionedCallPartitionedCall,dropout_142/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_591571?
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_41_591981dense_41_591983*
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
D__inference_dense_41_layer_call_and_return_conditional_losses_591584x
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall$^dropout_139/StatefulPartitionedCall$^dropout_140/StatefulPartitionedCall$^dropout_141/StatefulPartitionedCall$^dropout_142/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2J
#dropout_139/StatefulPartitionedCall#dropout_139/StatefulPartitionedCall2J
#dropout_140/StatefulPartitionedCall#dropout_140/StatefulPartitionedCall2J
#dropout_141/StatefulPartitionedCall#dropout_141/StatefulPartitionedCall2J
#dropout_142/StatefulPartitionedCall#dropout_142/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_139_input
?
i
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_591407

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
?R
?
__inference__traced_save_592631
file_prefix0
,savev2_conv2d_139_kernel_read_readvariableop.
*savev2_conv2d_139_bias_read_readvariableop0
,savev2_conv2d_140_kernel_read_readvariableop.
*savev2_conv2d_140_bias_read_readvariableop0
,savev2_conv2d_141_kernel_read_readvariableop.
*savev2_conv2d_141_bias_read_readvariableop0
,savev2_conv2d_142_kernel_read_readvariableop.
*savev2_conv2d_142_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_139_kernel_m_read_readvariableop5
1savev2_adam_conv2d_139_bias_m_read_readvariableop7
3savev2_adam_conv2d_140_kernel_m_read_readvariableop5
1savev2_adam_conv2d_140_bias_m_read_readvariableop7
3savev2_adam_conv2d_141_kernel_m_read_readvariableop5
1savev2_adam_conv2d_141_bias_m_read_readvariableop7
3savev2_adam_conv2d_142_kernel_m_read_readvariableop5
1savev2_adam_conv2d_142_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop7
3savev2_adam_conv2d_139_kernel_v_read_readvariableop5
1savev2_adam_conv2d_139_bias_v_read_readvariableop7
3savev2_adam_conv2d_140_kernel_v_read_readvariableop5
1savev2_adam_conv2d_140_bias_v_read_readvariableop7
3savev2_adam_conv2d_141_kernel_v_read_readvariableop5
1savev2_adam_conv2d_141_bias_v_read_readvariableop7
3savev2_adam_conv2d_142_kernel_v_read_readvariableop5
1savev2_adam_conv2d_142_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_139_kernel_read_readvariableop*savev2_conv2d_139_bias_read_readvariableop,savev2_conv2d_140_kernel_read_readvariableop*savev2_conv2d_140_bias_read_readvariableop,savev2_conv2d_141_kernel_read_readvariableop*savev2_conv2d_141_bias_read_readvariableop,savev2_conv2d_142_kernel_read_readvariableop*savev2_conv2d_142_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_139_kernel_m_read_readvariableop1savev2_adam_conv2d_139_bias_m_read_readvariableop3savev2_adam_conv2d_140_kernel_m_read_readvariableop1savev2_adam_conv2d_140_bias_m_read_readvariableop3savev2_adam_conv2d_141_kernel_m_read_readvariableop1savev2_adam_conv2d_141_bias_m_read_readvariableop3savev2_adam_conv2d_142_kernel_m_read_readvariableop1savev2_adam_conv2d_142_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop3savev2_adam_conv2d_139_kernel_v_read_readvariableop1savev2_adam_conv2d_139_bias_v_read_readvariableop3savev2_adam_conv2d_140_kernel_v_read_readvariableop1savev2_adam_conv2d_140_bias_v_read_readvariableop3savev2_adam_conv2d_141_kernel_v_read_readvariableop1savev2_adam_conv2d_141_bias_v_read_readvariableop3savev2_adam_conv2d_142_kernel_v_read_readvariableop1savev2_adam_conv2d_142_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :0:0:00:0:00:0:00:0:	?:: : : : : : : : : :0:0:00:0:00:0:00:0:	?::0:0:00:0:00:0:00:0:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:0: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:%	!

_output_shapes
:	?: 
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
:0: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:%!

_output_shapes
:	?: 

_output_shapes
::,(
&
_output_shapes
:0: 

_output_shapes
:0:, (
&
_output_shapes
:00: !

_output_shapes
:0:,"(
&
_output_shapes
:00: #

_output_shapes
:0:,$(
&
_output_shapes
:00: %

_output_shapes
:0:%&!

_output_shapes
:	?: '

_output_shapes
::(

_output_shapes
: 
?

f
G__inference_dropout_140_layer_call_and_return_conditional_losses_591728

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_141_layer_call_fn_592362

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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_591419?
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
G__inference_dropout_141_layer_call_and_return_conditional_losses_591532

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
G__inference_dropout_140_layer_call_and_return_conditional_losses_591501

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
G
+__inference_flatten_41_layer_call_fn_592465

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_41_layer_call_and_return_conditional_losses_591571a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_592020
conv2d_139_input!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0#
	unknown_5:00
	unknown_6:0
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_139_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_591386o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_139_input
?

?
.__inference_sequential_41_layer_call_fn_592070

inputs!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0#
	unknown_5:00
	unknown_6:0
	unknown_7:	?
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_591855o
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
?
?
+__inference_conv2d_140_layer_call_fn_592271

inputs!
unknown:00
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_591482w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????%%0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????''0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
H
,__inference_dropout_141_layer_call_fn_592372

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
:?????????0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_141_layer_call_and_return_conditional_losses_591532h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
.__inference_sequential_41_layer_call_fn_592045

inputs!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0#
	unknown_5:00
	unknown_6:0
	unknown_7:	?
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_591591o
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
.__inference_sequential_41_layer_call_fn_591903
conv2d_139_input!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0#
	unknown_5:00
	unknown_6:0
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_139_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_591855o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_139_input
?

?
.__inference_sequential_41_layer_call_fn_591614
conv2d_139_input!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0#
	unknown_5:00
	unknown_6:0
	unknown_7:	?
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_139_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *R
fMRK
I__inference_sequential_41_layer_call_and_return_conditional_losses_591591o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_139_input
?

f
G__inference_dropout_142_layer_call_and_return_conditional_losses_591650

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
K
/__inference_activation_140_layer_call_fn_592286

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
:?????????%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_140_layer_call_and_return_conditional_losses_591493h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????%%0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????%%0:W S
/
_output_shapes
:?????????%%0
 
_user_specified_nameinputs
?
?
+__inference_conv2d_141_layer_call_fn_592337

inputs!
unknown:00
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_591513w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_591419

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

f
G__inference_dropout_141_layer_call_and_return_conditional_losses_591689

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
D__inference_dense_41_layer_call_and_return_conditional_losses_592491

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_activation_139_layer_call_and_return_conditional_losses_592225

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????NN0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????NN0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????NN0:W S
/
_output_shapes
:?????????NN0
 
_user_specified_nameinputs
?
?
+__inference_conv2d_139_layer_call_fn_592205

inputs!
unknown:0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????NN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_591451w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????NN0`
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

?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_591544

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
f
J__inference_activation_140_layer_call_and_return_conditional_losses_592291

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????%%0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????%%0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????%%0:W S
/
_output_shapes
:?????????%%0
 
_user_specified_nameinputs
?

?
D__inference_dense_41_layer_call_and_return_conditional_losses_591584

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_591431

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

f
G__inference_dropout_140_layer_call_and_return_conditional_losses_592328

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?J
?

!__inference__wrapped_model_591386
conv2d_139_inputQ
7sequential_41_conv2d_139_conv2d_readvariableop_resource:0F
8sequential_41_conv2d_139_biasadd_readvariableop_resource:0Q
7sequential_41_conv2d_140_conv2d_readvariableop_resource:00F
8sequential_41_conv2d_140_biasadd_readvariableop_resource:0Q
7sequential_41_conv2d_141_conv2d_readvariableop_resource:00F
8sequential_41_conv2d_141_biasadd_readvariableop_resource:0Q
7sequential_41_conv2d_142_conv2d_readvariableop_resource:00F
8sequential_41_conv2d_142_biasadd_readvariableop_resource:0H
5sequential_41_dense_41_matmul_readvariableop_resource:	?D
6sequential_41_dense_41_biasadd_readvariableop_resource:
identity??/sequential_41/conv2d_139/BiasAdd/ReadVariableOp?.sequential_41/conv2d_139/Conv2D/ReadVariableOp?/sequential_41/conv2d_140/BiasAdd/ReadVariableOp?.sequential_41/conv2d_140/Conv2D/ReadVariableOp?/sequential_41/conv2d_141/BiasAdd/ReadVariableOp?.sequential_41/conv2d_141/Conv2D/ReadVariableOp?/sequential_41/conv2d_142/BiasAdd/ReadVariableOp?.sequential_41/conv2d_142/Conv2D/ReadVariableOp?-sequential_41/dense_41/BiasAdd/ReadVariableOp?,sequential_41/dense_41/MatMul/ReadVariableOp?
.sequential_41/conv2d_139/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
sequential_41/conv2d_139/Conv2DConv2Dconv2d_139_input6sequential_41/conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
/sequential_41/conv2d_139/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_41/conv2d_139/BiasAddBiasAdd(sequential_41/conv2d_139/Conv2D:output:07sequential_41/conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0?
!sequential_41/activation_139/ReluRelu)sequential_41/conv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
'sequential_41/max_pooling2d_139/MaxPoolMaxPool/sequential_41/activation_139/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
?
"sequential_41/dropout_139/IdentityIdentity0sequential_41/max_pooling2d_139/MaxPool:output:0*
T0*/
_output_shapes
:?????????''0?
.sequential_41/conv2d_140/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_41/conv2d_140/Conv2DConv2D+sequential_41/dropout_139/Identity:output:06sequential_41/conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
/sequential_41/conv2d_140/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_140_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_41/conv2d_140/BiasAddBiasAdd(sequential_41/conv2d_140/Conv2D:output:07sequential_41/conv2d_140/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0?
!sequential_41/activation_140/ReluRelu)sequential_41/conv2d_140/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
'sequential_41/max_pooling2d_140/MaxPoolMaxPool/sequential_41/activation_140/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_41/dropout_140/IdentityIdentity0sequential_41/max_pooling2d_140/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
.sequential_41/conv2d_141/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_41/conv2d_141/Conv2DConv2D+sequential_41/dropout_140/Identity:output:06sequential_41/conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
/sequential_41/conv2d_141/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_141_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_41/conv2d_141/BiasAddBiasAdd(sequential_41/conv2d_141/Conv2D:output:07sequential_41/conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0?
!sequential_41/activation_141/ReluRelu)sequential_41/conv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
'sequential_41/max_pooling2d_141/MaxPoolMaxPool/sequential_41/activation_141/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_41/dropout_141/IdentityIdentity0sequential_41/max_pooling2d_141/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
.sequential_41/conv2d_142/Conv2D/ReadVariableOpReadVariableOp7sequential_41_conv2d_142_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_41/conv2d_142/Conv2DConv2D+sequential_41/dropout_141/Identity:output:06sequential_41/conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
/sequential_41/conv2d_142/BiasAdd/ReadVariableOpReadVariableOp8sequential_41_conv2d_142_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_41/conv2d_142/BiasAddBiasAdd(sequential_41/conv2d_142/Conv2D:output:07sequential_41/conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0?
!sequential_41/activation_142/ReluRelu)sequential_41/conv2d_142/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
'sequential_41/max_pooling2d_142/MaxPoolMaxPool/sequential_41/activation_142/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_41/dropout_142/IdentityIdentity0sequential_41/max_pooling2d_142/MaxPool:output:0*
T0*/
_output_shapes
:?????????0o
sequential_41/flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
 sequential_41/flatten_41/ReshapeReshape+sequential_41/dropout_142/Identity:output:0'sequential_41/flatten_41/Const:output:0*
T0*(
_output_shapes
:???????????
,sequential_41/dense_41/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_41_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_41/dense_41/MatMulMatMul)sequential_41/flatten_41/Reshape:output:04sequential_41/dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_41/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_41/dense_41/BiasAddBiasAdd'sequential_41/dense_41/MatMul:product:05sequential_41/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_41/dense_41/SoftmaxSoftmax'sequential_41/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_41/dense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_41/conv2d_139/BiasAdd/ReadVariableOp/^sequential_41/conv2d_139/Conv2D/ReadVariableOp0^sequential_41/conv2d_140/BiasAdd/ReadVariableOp/^sequential_41/conv2d_140/Conv2D/ReadVariableOp0^sequential_41/conv2d_141/BiasAdd/ReadVariableOp/^sequential_41/conv2d_141/Conv2D/ReadVariableOp0^sequential_41/conv2d_142/BiasAdd/ReadVariableOp/^sequential_41/conv2d_142/Conv2D/ReadVariableOp.^sequential_41/dense_41/BiasAdd/ReadVariableOp-^sequential_41/dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2b
/sequential_41/conv2d_139/BiasAdd/ReadVariableOp/sequential_41/conv2d_139/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_139/Conv2D/ReadVariableOp.sequential_41/conv2d_139/Conv2D/ReadVariableOp2b
/sequential_41/conv2d_140/BiasAdd/ReadVariableOp/sequential_41/conv2d_140/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_140/Conv2D/ReadVariableOp.sequential_41/conv2d_140/Conv2D/ReadVariableOp2b
/sequential_41/conv2d_141/BiasAdd/ReadVariableOp/sequential_41/conv2d_141/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_141/Conv2D/ReadVariableOp.sequential_41/conv2d_141/Conv2D/ReadVariableOp2b
/sequential_41/conv2d_142/BiasAdd/ReadVariableOp/sequential_41/conv2d_142/BiasAdd/ReadVariableOp2`
.sequential_41/conv2d_142/Conv2D/ReadVariableOp.sequential_41/conv2d_142/Conv2D/ReadVariableOp2^
-sequential_41/dense_41/BiasAdd/ReadVariableOp-sequential_41/dense_41/BiasAdd/ReadVariableOp2\
,sequential_41/dense_41/MatMul/ReadVariableOp,sequential_41/dense_41/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_139_input
?
e
G__inference_dropout_139_layer_call_and_return_conditional_losses_591470

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????''0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????''0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????''0:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
?
)__inference_dense_41_layer_call_fn_592480

inputs
unknown:	?
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
D__inference_dense_41_layer_call_and_return_conditional_losses_591584o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_591395

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

f
G__inference_dropout_139_layer_call_and_return_conditional_losses_591767

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????''0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????''0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????''0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????''0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????''0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????''0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????''0:W S
/
_output_shapes
:?????????''0
 
_user_specified_nameinputs
?
f
J__inference_activation_141_layer_call_and_return_conditional_losses_592357

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:?????????0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?]
?
I__inference_sequential_41_layer_call_and_return_conditional_losses_592196

inputsC
)conv2d_139_conv2d_readvariableop_resource:08
*conv2d_139_biasadd_readvariableop_resource:0C
)conv2d_140_conv2d_readvariableop_resource:008
*conv2d_140_biasadd_readvariableop_resource:0C
)conv2d_141_conv2d_readvariableop_resource:008
*conv2d_141_biasadd_readvariableop_resource:0C
)conv2d_142_conv2d_readvariableop_resource:008
*conv2d_142_biasadd_readvariableop_resource:0:
'dense_41_matmul_readvariableop_resource:	?6
(dense_41_biasadd_readvariableop_resource:
identity??!conv2d_139/BiasAdd/ReadVariableOp? conv2d_139/Conv2D/ReadVariableOp?!conv2d_140/BiasAdd/ReadVariableOp? conv2d_140/Conv2D/ReadVariableOp?!conv2d_141/BiasAdd/ReadVariableOp? conv2d_141/Conv2D/ReadVariableOp?!conv2d_142/BiasAdd/ReadVariableOp? conv2d_142/Conv2D/ReadVariableOp?dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?
 conv2d_139/Conv2D/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
conv2d_139/Conv2DConv2Dinputs(conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
!conv2d_139/BiasAdd/ReadVariableOpReadVariableOp*conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_139/BiasAddBiasAddconv2d_139/Conv2D:output:0)conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0r
activation_139/ReluReluconv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
max_pooling2d_139/MaxPoolMaxPool!activation_139/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
^
dropout_139/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_139/dropout/MulMul"max_pooling2d_139/MaxPool:output:0"dropout_139/dropout/Const:output:0*
T0*/
_output_shapes
:?????????''0k
dropout_139/dropout/ShapeShape"max_pooling2d_139/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_139/dropout/random_uniform/RandomUniformRandomUniform"dropout_139/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????''0*
dtype0*

seedg
"dropout_139/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
 dropout_139/dropout/GreaterEqualGreaterEqual9dropout_139/dropout/random_uniform/RandomUniform:output:0+dropout_139/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????''0?
dropout_139/dropout/CastCast$dropout_139/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????''0?
dropout_139/dropout/Mul_1Muldropout_139/dropout/Mul:z:0dropout_139/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????''0?
 conv2d_140/Conv2D/ReadVariableOpReadVariableOp)conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_140/Conv2DConv2Ddropout_139/dropout/Mul_1:z:0(conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
!conv2d_140/BiasAdd/ReadVariableOpReadVariableOp*conv2d_140_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_140/BiasAddBiasAddconv2d_140/Conv2D:output:0)conv2d_140/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0r
activation_140/ReluReluconv2d_140/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
max_pooling2d_140/MaxPoolMaxPool!activation_140/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_140/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_140/dropout/MulMul"max_pooling2d_140/MaxPool:output:0"dropout_140/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_140/dropout/ShapeShape"max_pooling2d_140/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_140/dropout/random_uniform/RandomUniformRandomUniform"dropout_140/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_140/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
 dropout_140/dropout/GreaterEqualGreaterEqual9dropout_140/dropout/random_uniform/RandomUniform:output:0+dropout_140/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_140/dropout/CastCast$dropout_140/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_140/dropout/Mul_1Muldropout_140/dropout/Mul:z:0dropout_140/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0?
 conv2d_141/Conv2D/ReadVariableOpReadVariableOp)conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_141/Conv2DConv2Ddropout_140/dropout/Mul_1:z:0(conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_141/BiasAdd/ReadVariableOpReadVariableOp*conv2d_141_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_141/BiasAddBiasAddconv2d_141/Conv2D:output:0)conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_141/ReluReluconv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_141/MaxPoolMaxPool!activation_141/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_141/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_141/dropout/MulMul"max_pooling2d_141/MaxPool:output:0"dropout_141/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_141/dropout/ShapeShape"max_pooling2d_141/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_141/dropout/random_uniform/RandomUniformRandomUniform"dropout_141/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_141/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
 dropout_141/dropout/GreaterEqualGreaterEqual9dropout_141/dropout/random_uniform/RandomUniform:output:0+dropout_141/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_141/dropout/CastCast$dropout_141/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_141/dropout/Mul_1Muldropout_141/dropout/Mul:z:0dropout_141/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0?
 conv2d_142/Conv2D/ReadVariableOpReadVariableOp)conv2d_142_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_142/Conv2DConv2Ddropout_141/dropout/Mul_1:z:0(conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_142/BiasAdd/ReadVariableOpReadVariableOp*conv2d_142_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_142/BiasAddBiasAddconv2d_142/Conv2D:output:0)conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_142/ReluReluconv2d_142/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_142/MaxPoolMaxPool!activation_142/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_142/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_142/dropout/MulMul"max_pooling2d_142/MaxPool:output:0"dropout_142/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_142/dropout/ShapeShape"max_pooling2d_142/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_142/dropout/random_uniform/RandomUniformRandomUniform"dropout_142/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_142/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
 dropout_142/dropout/GreaterEqualGreaterEqual9dropout_142/dropout/random_uniform/RandomUniform:output:0+dropout_142/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_142/dropout/CastCast$dropout_142/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_142/dropout/Mul_1Muldropout_142/dropout/Mul:z:0dropout_142/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_41/ReshapeReshapedropout_142/dropout/Mul_1:z:0flatten_41/Const:output:0*
T0*(
_output_shapes
:???????????
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_41/MatMulMatMulflatten_41/Reshape:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_41/SoftmaxSoftmaxdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_41/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_139/BiasAdd/ReadVariableOp!^conv2d_139/Conv2D/ReadVariableOp"^conv2d_140/BiasAdd/ReadVariableOp!^conv2d_140/Conv2D/ReadVariableOp"^conv2d_141/BiasAdd/ReadVariableOp!^conv2d_141/Conv2D/ReadVariableOp"^conv2d_142/BiasAdd/ReadVariableOp!^conv2d_142/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_139/BiasAdd/ReadVariableOp!conv2d_139/BiasAdd/ReadVariableOp2D
 conv2d_139/Conv2D/ReadVariableOp conv2d_139/Conv2D/ReadVariableOp2F
!conv2d_140/BiasAdd/ReadVariableOp!conv2d_140/BiasAdd/ReadVariableOp2D
 conv2d_140/Conv2D/ReadVariableOp conv2d_140/Conv2D/ReadVariableOp2F
!conv2d_141/BiasAdd/ReadVariableOp!conv2d_141/BiasAdd/ReadVariableOp2D
 conv2d_141/Conv2D/ReadVariableOp conv2d_141/Conv2D/ReadVariableOp2F
!conv2d_142/BiasAdd/ReadVariableOp!conv2d_142/BiasAdd/ReadVariableOp2D
 conv2d_142/Conv2D/ReadVariableOp conv2d_142/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
e
G__inference_dropout_140_layer_call_and_return_conditional_losses_592316

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_139_inputA
"serving_default_conv2d_139_input:0?????????PP<
dense_410
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-3
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-4
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
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
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator"
_tf_keras_layer
?
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
?
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator"
_tf_keras_layer
?
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses

Zkernel
[bias
 \_jit_compiled_convolution_op"
_tf_keras_layer
?
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
?
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses
o_random_generator"
_tf_keras_layer
?
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias
 x_jit_compiled_convolution_op"
_tf_keras_layer
?
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias"
_tf_keras_layer
h
"0
#1
>2
?3
Z4
[5
v6
w7
?8
?9"
trackable_list_wrapper
h
"0
#1
>2
?3
Z4
[5
v6
w7
?8
?9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
.__inference_sequential_41_layer_call_fn_591614
.__inference_sequential_41_layer_call_fn_592045
.__inference_sequential_41_layer_call_fn_592070
.__inference_sequential_41_layer_call_fn_591903?
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
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
I__inference_sequential_41_layer_call_and_return_conditional_losses_592119
I__inference_sequential_41_layer_call_and_return_conditional_losses_592196
I__inference_sequential_41_layer_call_and_return_conditional_losses_591945
I__inference_sequential_41_layer_call_and_return_conditional_losses_591987?
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
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
!__inference__wrapped_model_591386conv2d_139_input"?
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
	?iter
?beta_1
?beta_2

?decay
?learning_rate"m?#m?>m??m?Zm?[m?vm?wm?	?m?	?m?"v?#v?>v??v?Zv?[v?vv?wv?	?v?	?v?"
	optimizer
-
?serving_default"
signature_map
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_conv2d_139_layer_call_fn_592205?
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
F__inference_conv2d_139_layer_call_and_return_conditional_losses_592215?
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
+:)02conv2d_139/kernel
:02conv2d_139/bias
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
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_activation_139_layer_call_fn_592220?
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
J__inference_activation_139_layer_call_and_return_conditional_losses_592225?
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
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_max_pooling2d_139_layer_call_fn_592230?
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
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_592235?
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
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
,__inference_dropout_139_layer_call_fn_592240
,__inference_dropout_139_layer_call_fn_592245?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
G__inference_dropout_139_layer_call_and_return_conditional_losses_592250
G__inference_dropout_139_layer_call_and_return_conditional_losses_592262?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_conv2d_140_layer_call_fn_592271?
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
F__inference_conv2d_140_layer_call_and_return_conditional_losses_592281?
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
+:)002conv2d_140/kernel
:02conv2d_140/bias
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
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_activation_140_layer_call_fn_592286?
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
J__inference_activation_140_layer_call_and_return_conditional_losses_592291?
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
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_max_pooling2d_140_layer_call_fn_592296?
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
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_592301?
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
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
,__inference_dropout_140_layer_call_fn_592306
,__inference_dropout_140_layer_call_fn_592311?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
G__inference_dropout_140_layer_call_and_return_conditional_losses_592316
G__inference_dropout_140_layer_call_and_return_conditional_losses_592328?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_conv2d_141_layer_call_fn_592337?
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
F__inference_conv2d_141_layer_call_and_return_conditional_losses_592347?
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
+:)002conv2d_141/kernel
:02conv2d_141/bias
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
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_activation_141_layer_call_fn_592352?
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
J__inference_activation_141_layer_call_and_return_conditional_losses_592357?
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
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_max_pooling2d_141_layer_call_fn_592362?
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
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_592367?
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
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
,__inference_dropout_141_layer_call_fn_592372
,__inference_dropout_141_layer_call_fn_592377?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
G__inference_dropout_141_layer_call_and_return_conditional_losses_592382
G__inference_dropout_141_layer_call_and_return_conditional_losses_592394?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_conv2d_142_layer_call_fn_592403?
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
 z?trace_0
?
?trace_02?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_592413?
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
 z?trace_0
+:)002conv2d_142/kernel
:02conv2d_142/bias
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
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_activation_142_layer_call_fn_592418?
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
 z?trace_0
?
?trace_02?
J__inference_activation_142_layer_call_and_return_conditional_losses_592423?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_max_pooling2d_142_layer_call_fn_592428?
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
 z?trace_0
?
?trace_02?
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_592433?
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
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
,__inference_dropout_142_layer_call_fn_592438
,__inference_dropout_142_layer_call_fn_592443?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
G__inference_dropout_142_layer_call_and_return_conditional_losses_592448
G__inference_dropout_142_layer_call_and_return_conditional_losses_592460?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_flatten_41_layer_call_fn_592465?
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
 z?trace_0
?
?trace_02?
F__inference_flatten_41_layer_call_and_return_conditional_losses_592471?
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
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_dense_41_layer_call_fn_592480?
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
 z?trace_0
?
?trace_02?
D__inference_dense_41_layer_call_and_return_conditional_losses_592491?
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
 z?trace_0
": 	?2dense_41/kernel
:2dense_41/bias
 "
trackable_list_wrapper
?
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
11
12
13
14
15
16
17"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_sequential_41_layer_call_fn_591614conv2d_139_input"?
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
?B?
.__inference_sequential_41_layer_call_fn_592045inputs"?
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
?B?
.__inference_sequential_41_layer_call_fn_592070inputs"?
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
.__inference_sequential_41_layer_call_fn_591903conv2d_139_input"?
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_592119inputs"?
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_592196inputs"?
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_591945conv2d_139_input"?
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_591987conv2d_139_input"?
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
$__inference_signature_wrapper_592020conv2d_139_input"?
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
+__inference_conv2d_139_layer_call_fn_592205inputs"?
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
F__inference_conv2d_139_layer_call_and_return_conditional_losses_592215inputs"?
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
/__inference_activation_139_layer_call_fn_592220inputs"?
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
J__inference_activation_139_layer_call_and_return_conditional_losses_592225inputs"?
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
2__inference_max_pooling2d_139_layer_call_fn_592230inputs"?
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
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_592235inputs"?
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
,__inference_dropout_139_layer_call_fn_592240inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
,__inference_dropout_139_layer_call_fn_592245inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_139_layer_call_and_return_conditional_losses_592250inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_139_layer_call_and_return_conditional_losses_592262inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
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
+__inference_conv2d_140_layer_call_fn_592271inputs"?
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
F__inference_conv2d_140_layer_call_and_return_conditional_losses_592281inputs"?
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
/__inference_activation_140_layer_call_fn_592286inputs"?
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
J__inference_activation_140_layer_call_and_return_conditional_losses_592291inputs"?
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
2__inference_max_pooling2d_140_layer_call_fn_592296inputs"?
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
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_592301inputs"?
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
,__inference_dropout_140_layer_call_fn_592306inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
,__inference_dropout_140_layer_call_fn_592311inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_140_layer_call_and_return_conditional_losses_592316inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_140_layer_call_and_return_conditional_losses_592328inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
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
+__inference_conv2d_141_layer_call_fn_592337inputs"?
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
F__inference_conv2d_141_layer_call_and_return_conditional_losses_592347inputs"?
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
/__inference_activation_141_layer_call_fn_592352inputs"?
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
J__inference_activation_141_layer_call_and_return_conditional_losses_592357inputs"?
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
2__inference_max_pooling2d_141_layer_call_fn_592362inputs"?
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
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_592367inputs"?
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
,__inference_dropout_141_layer_call_fn_592372inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
,__inference_dropout_141_layer_call_fn_592377inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_141_layer_call_and_return_conditional_losses_592382inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_141_layer_call_and_return_conditional_losses_592394inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
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
+__inference_conv2d_142_layer_call_fn_592403inputs"?
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
F__inference_conv2d_142_layer_call_and_return_conditional_losses_592413inputs"?
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
/__inference_activation_142_layer_call_fn_592418inputs"?
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
J__inference_activation_142_layer_call_and_return_conditional_losses_592423inputs"?
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
2__inference_max_pooling2d_142_layer_call_fn_592428inputs"?
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
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_592433inputs"?
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
,__inference_dropout_142_layer_call_fn_592438inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
,__inference_dropout_142_layer_call_fn_592443inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_142_layer_call_and_return_conditional_losses_592448inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
G__inference_dropout_142_layer_call_and_return_conditional_losses_592460inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
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
+__inference_flatten_41_layer_call_fn_592465inputs"?
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
F__inference_flatten_41_layer_call_and_return_conditional_losses_592471inputs"?
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
)__inference_dense_41_layer_call_fn_592480inputs"?
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
D__inference_dense_41_layer_call_and_return_conditional_losses_592491inputs"?
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
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.02Adam/conv2d_139/kernel/m
": 02Adam/conv2d_139/bias/m
0:.002Adam/conv2d_140/kernel/m
": 02Adam/conv2d_140/bias/m
0:.002Adam/conv2d_141/kernel/m
": 02Adam/conv2d_141/bias/m
0:.002Adam/conv2d_142/kernel/m
": 02Adam/conv2d_142/bias/m
':%	?2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
0:.02Adam/conv2d_139/kernel/v
": 02Adam/conv2d_139/bias/v
0:.002Adam/conv2d_140/kernel/v
": 02Adam/conv2d_140/bias/v
0:.002Adam/conv2d_141/kernel/v
": 02Adam/conv2d_141/bias/v
0:.002Adam/conv2d_142/kernel/v
": 02Adam/conv2d_142/bias/v
':%	?2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/v?
!__inference__wrapped_model_591386?"#>?Z[vw??A?>
7?4
2?/
conv2d_139_input?????????PP
? "3?0
.
dense_41"?
dense_41??????????
J__inference_activation_139_layer_call_and_return_conditional_losses_592225h7?4
-?*
(?%
inputs?????????NN0
? "-?*
#? 
0?????????NN0
? ?
/__inference_activation_139_layer_call_fn_592220[7?4
-?*
(?%
inputs?????????NN0
? " ??????????NN0?
J__inference_activation_140_layer_call_and_return_conditional_losses_592291h7?4
-?*
(?%
inputs?????????%%0
? "-?*
#? 
0?????????%%0
? ?
/__inference_activation_140_layer_call_fn_592286[7?4
-?*
(?%
inputs?????????%%0
? " ??????????%%0?
J__inference_activation_141_layer_call_and_return_conditional_losses_592357h7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
/__inference_activation_141_layer_call_fn_592352[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
J__inference_activation_142_layer_call_and_return_conditional_losses_592423h7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
/__inference_activation_142_layer_call_fn_592418[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_592215l"#7?4
-?*
(?%
inputs?????????PP
? "-?*
#? 
0?????????NN0
? ?
+__inference_conv2d_139_layer_call_fn_592205_"#7?4
-?*
(?%
inputs?????????PP
? " ??????????NN0?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_592281l>?7?4
-?*
(?%
inputs?????????''0
? "-?*
#? 
0?????????%%0
? ?
+__inference_conv2d_140_layer_call_fn_592271_>?7?4
-?*
(?%
inputs?????????''0
? " ??????????%%0?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_592347lZ[7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
+__inference_conv2d_141_layer_call_fn_592337_Z[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_592413lvw7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
+__inference_conv2d_142_layer_call_fn_592403_vw7?4
-?*
(?%
inputs?????????0
? " ??????????0?
D__inference_dense_41_layer_call_and_return_conditional_losses_592491_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_41_layer_call_fn_592480R??0?-
&?#
!?
inputs??????????
? "???????????
G__inference_dropout_139_layer_call_and_return_conditional_losses_592250l;?8
1?.
(?%
inputs?????????''0
p 
? "-?*
#? 
0?????????''0
? ?
G__inference_dropout_139_layer_call_and_return_conditional_losses_592262l;?8
1?.
(?%
inputs?????????''0
p
? "-?*
#? 
0?????????''0
? ?
,__inference_dropout_139_layer_call_fn_592240_;?8
1?.
(?%
inputs?????????''0
p 
? " ??????????''0?
,__inference_dropout_139_layer_call_fn_592245_;?8
1?.
(?%
inputs?????????''0
p
? " ??????????''0?
G__inference_dropout_140_layer_call_and_return_conditional_losses_592316l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
G__inference_dropout_140_layer_call_and_return_conditional_losses_592328l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
,__inference_dropout_140_layer_call_fn_592306_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
,__inference_dropout_140_layer_call_fn_592311_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
G__inference_dropout_141_layer_call_and_return_conditional_losses_592382l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
G__inference_dropout_141_layer_call_and_return_conditional_losses_592394l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
,__inference_dropout_141_layer_call_fn_592372_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
,__inference_dropout_141_layer_call_fn_592377_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
G__inference_dropout_142_layer_call_and_return_conditional_losses_592448l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
G__inference_dropout_142_layer_call_and_return_conditional_losses_592460l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
,__inference_dropout_142_layer_call_fn_592438_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
,__inference_dropout_142_layer_call_fn_592443_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
F__inference_flatten_41_layer_call_and_return_conditional_losses_592471a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
+__inference_flatten_41_layer_call_fn_592465T7?4
-?*
(?%
inputs?????????0
? "????????????
M__inference_max_pooling2d_139_layer_call_and_return_conditional_losses_592235?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_139_layer_call_fn_592230?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_140_layer_call_and_return_conditional_losses_592301?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_140_layer_call_fn_592296?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_141_layer_call_and_return_conditional_losses_592367?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_141_layer_call_fn_592362?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_142_layer_call_and_return_conditional_losses_592433?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_142_layer_call_fn_592428?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_41_layer_call_and_return_conditional_losses_591945?"#>?Z[vw??I?F
??<
2?/
conv2d_139_input?????????PP
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_591987?"#>?Z[vw??I?F
??<
2?/
conv2d_139_input?????????PP
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_41_layer_call_and_return_conditional_losses_592119v"#>?Z[vw????<
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
I__inference_sequential_41_layer_call_and_return_conditional_losses_592196v"#>?Z[vw????<
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
.__inference_sequential_41_layer_call_fn_591614s"#>?Z[vw??I?F
??<
2?/
conv2d_139_input?????????PP
p 

 
? "???????????
.__inference_sequential_41_layer_call_fn_591903s"#>?Z[vw??I?F
??<
2?/
conv2d_139_input?????????PP
p

 
? "???????????
.__inference_sequential_41_layer_call_fn_592045i"#>?Z[vw????<
5?2
(?%
inputs?????????PP
p 

 
? "???????????
.__inference_sequential_41_layer_call_fn_592070i"#>?Z[vw????<
5?2
(?%
inputs?????????PP
p

 
? "???????????
$__inference_signature_wrapper_592020?"#>?Z[vw??U?R
? 
K?H
F
conv2d_139_input2?/
conv2d_139_input?????????PP"3?0
.
dense_41"?
dense_41?????????