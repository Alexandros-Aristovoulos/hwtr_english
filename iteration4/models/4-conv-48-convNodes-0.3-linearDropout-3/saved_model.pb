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
Adam/dense_98/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_98/bias/v
y
(Adam/dense_98/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_98/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_98/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_98/kernel/v
?
*Adam/dense_98/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_98/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_345/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_345/bias/v
}
*Adam/conv2d_345/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_345/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_345/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_345/kernel/v
?
,Adam/conv2d_345/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_345/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_344/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_344/bias/v
}
*Adam/conv2d_344/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_344/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_344/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_344/kernel/v
?
,Adam/conv2d_344/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_344/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_343/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_343/bias/v
}
*Adam/conv2d_343/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_343/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_343/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_343/kernel/v
?
,Adam/conv2d_343/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_343/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_342/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_342/bias/v
}
*Adam/conv2d_342/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_342/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_342/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_342/kernel/v
?
,Adam/conv2d_342/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_342/kernel/v*&
_output_shapes
:0*
dtype0
?
Adam/dense_98/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_98/bias/m
y
(Adam/dense_98/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_98/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_98/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_98/kernel/m
?
*Adam/dense_98/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_98/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_345/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_345/bias/m
}
*Adam/conv2d_345/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_345/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_345/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_345/kernel/m
?
,Adam/conv2d_345/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_345/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_344/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_344/bias/m
}
*Adam/conv2d_344/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_344/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_344/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_344/kernel/m
?
,Adam/conv2d_344/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_344/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_343/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_343/bias/m
}
*Adam/conv2d_343/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_343/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_343/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_343/kernel/m
?
,Adam/conv2d_343/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_343/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_342/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_342/bias/m
}
*Adam/conv2d_342/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_342/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_342/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_342/kernel/m
?
,Adam/conv2d_342/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_342/kernel/m*&
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
dense_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_98/bias
k
!dense_98/bias/Read/ReadVariableOpReadVariableOpdense_98/bias*
_output_shapes
:*
dtype0
{
dense_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_98/kernel
t
#dense_98/kernel/Read/ReadVariableOpReadVariableOpdense_98/kernel*
_output_shapes
:	?*
dtype0
v
conv2d_345/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_345/bias
o
#conv2d_345/bias/Read/ReadVariableOpReadVariableOpconv2d_345/bias*
_output_shapes
:0*
dtype0
?
conv2d_345/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_345/kernel

%conv2d_345/kernel/Read/ReadVariableOpReadVariableOpconv2d_345/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_344/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_344/bias
o
#conv2d_344/bias/Read/ReadVariableOpReadVariableOpconv2d_344/bias*
_output_shapes
:0*
dtype0
?
conv2d_344/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_344/kernel

%conv2d_344/kernel/Read/ReadVariableOpReadVariableOpconv2d_344/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_343/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_343/bias
o
#conv2d_343/bias/Read/ReadVariableOpReadVariableOpconv2d_343/bias*
_output_shapes
:0*
dtype0
?
conv2d_343/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_343/kernel

%conv2d_343/kernel/Read/ReadVariableOpReadVariableOpconv2d_343/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_342/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_342/bias
o
#conv2d_342/bias/Read/ReadVariableOpReadVariableOpconv2d_342/bias*
_output_shapes
:0*
dtype0
?
conv2d_342/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameconv2d_342/kernel

%conv2d_342/kernel/Read/ReadVariableOpReadVariableOpconv2d_342/kernel*&
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
VARIABLE_VALUEconv2d_342/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_342/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_343/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_343/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_344/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_344/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_345/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_345/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_98/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_98/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv2d_342/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_342/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_343/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_343/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_344/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_344/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_345/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_345/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_98/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_98/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_342/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_342/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_343/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_343/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_344/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_344/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_345/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_345/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_98/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_98/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
 serving_default_conv2d_342_inputPlaceholder*/
_output_shapes
:?????????PP*
dtype0*$
shape:?????????PP
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_342_inputconv2d_342/kernelconv2d_342/biasconv2d_343/kernelconv2d_343/biasconv2d_344/kernelconv2d_344/biasconv2d_345/kernelconv2d_345/biasdense_98/kerneldense_98/bias*
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
GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1371304
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_342/kernel/Read/ReadVariableOp#conv2d_342/bias/Read/ReadVariableOp%conv2d_343/kernel/Read/ReadVariableOp#conv2d_343/bias/Read/ReadVariableOp%conv2d_344/kernel/Read/ReadVariableOp#conv2d_344/bias/Read/ReadVariableOp%conv2d_345/kernel/Read/ReadVariableOp#conv2d_345/bias/Read/ReadVariableOp#dense_98/kernel/Read/ReadVariableOp!dense_98/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_342/kernel/m/Read/ReadVariableOp*Adam/conv2d_342/bias/m/Read/ReadVariableOp,Adam/conv2d_343/kernel/m/Read/ReadVariableOp*Adam/conv2d_343/bias/m/Read/ReadVariableOp,Adam/conv2d_344/kernel/m/Read/ReadVariableOp*Adam/conv2d_344/bias/m/Read/ReadVariableOp,Adam/conv2d_345/kernel/m/Read/ReadVariableOp*Adam/conv2d_345/bias/m/Read/ReadVariableOp*Adam/dense_98/kernel/m/Read/ReadVariableOp(Adam/dense_98/bias/m/Read/ReadVariableOp,Adam/conv2d_342/kernel/v/Read/ReadVariableOp*Adam/conv2d_342/bias/v/Read/ReadVariableOp,Adam/conv2d_343/kernel/v/Read/ReadVariableOp*Adam/conv2d_343/bias/v/Read/ReadVariableOp,Adam/conv2d_344/kernel/v/Read/ReadVariableOp*Adam/conv2d_344/bias/v/Read/ReadVariableOp,Adam/conv2d_345/kernel/v/Read/ReadVariableOp*Adam/conv2d_345/bias/v/Read/ReadVariableOp*Adam/dense_98/kernel/v/Read/ReadVariableOp(Adam/dense_98/bias/v/Read/ReadVariableOpConst*4
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1371915
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_342/kernelconv2d_342/biasconv2d_343/kernelconv2d_343/biasconv2d_344/kernelconv2d_344/biasconv2d_345/kernelconv2d_345/biasdense_98/kerneldense_98/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_342/kernel/mAdam/conv2d_342/bias/mAdam/conv2d_343/kernel/mAdam/conv2d_343/bias/mAdam/conv2d_344/kernel/mAdam/conv2d_344/bias/mAdam/conv2d_345/kernel/mAdam/conv2d_345/bias/mAdam/dense_98/kernel/mAdam/dense_98/bias/mAdam/conv2d_342/kernel/vAdam/conv2d_342/bias/vAdam/conv2d_343/kernel/vAdam/conv2d_343/bias/vAdam/conv2d_344/kernel/vAdam/conv2d_344/bias/vAdam/conv2d_345/kernel/vAdam/conv2d_345/bias/vAdam/dense_98/kernel/vAdam/dense_98/bias/v*3
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1372042??	
?
?
*__inference_dense_98_layer_call_fn_1371764

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
GPU2*0J 8? *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_1370868o
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
L
0__inference_activation_343_layer_call_fn_1371570

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
GPU2*0J 8? *T
fORM
K__inference_activation_343_layer_call_and_return_conditional_losses_1370777h
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
?

?
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1371697

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
?
c
G__inference_flatten_98_layer_call_and_return_conditional_losses_1371755

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
g
K__inference_activation_343_layer_call_and_return_conditional_losses_1371575

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

g
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371612

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
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
 *???>?
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
?

?
/__inference_sequential_98_layer_call_fn_1370898
conv2d_342_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_342_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_98_layer_call_and_return_conditional_losses_1370875o
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
_user_specified_nameconv2d_342_input
?
f
-__inference_dropout_342_layer_call_fn_1371529

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371051w
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
j
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1371651

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
f
-__inference_dropout_344_layer_call_fn_1371661

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370973w
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
?

?
/__inference_sequential_98_layer_call_fn_1371187
conv2d_342_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_342_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *S
fNRL
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371139o
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
_user_specified_nameconv2d_342_input
?

g
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371546

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
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
 *???>?
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
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370816

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
?
j
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1371585

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
H
,__inference_flatten_98_layer_call_fn_1371749

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
GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_1370855a
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
?
g
K__inference_activation_342_layer_call_and_return_conditional_losses_1371509

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
f
H__inference_dropout_342_layer_call_and_return_conditional_losses_1370754

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
?

?
%__inference_signature_wrapper_1371304
conv2d_342_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_342_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1370670o
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
_user_specified_nameconv2d_342_input
?

g
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370934

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??l
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
 *???=?
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
j
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1371717

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
?
f
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371666

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
?
L
0__inference_activation_342_layer_call_fn_1371504

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
GPU2*0J 8? *T
fORM
K__inference_activation_342_layer_call_and_return_conditional_losses_1370746h
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
?
?
,__inference_conv2d_342_layer_call_fn_1371489

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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1370735w
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
?<
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371403

inputsC
)conv2d_342_conv2d_readvariableop_resource:08
*conv2d_342_biasadd_readvariableop_resource:0C
)conv2d_343_conv2d_readvariableop_resource:008
*conv2d_343_biasadd_readvariableop_resource:0C
)conv2d_344_conv2d_readvariableop_resource:008
*conv2d_344_biasadd_readvariableop_resource:0C
)conv2d_345_conv2d_readvariableop_resource:008
*conv2d_345_biasadd_readvariableop_resource:0:
'dense_98_matmul_readvariableop_resource:	?6
(dense_98_biasadd_readvariableop_resource:
identity??!conv2d_342/BiasAdd/ReadVariableOp? conv2d_342/Conv2D/ReadVariableOp?!conv2d_343/BiasAdd/ReadVariableOp? conv2d_343/Conv2D/ReadVariableOp?!conv2d_344/BiasAdd/ReadVariableOp? conv2d_344/Conv2D/ReadVariableOp?!conv2d_345/BiasAdd/ReadVariableOp? conv2d_345/Conv2D/ReadVariableOp?dense_98/BiasAdd/ReadVariableOp?dense_98/MatMul/ReadVariableOp?
 conv2d_342/Conv2D/ReadVariableOpReadVariableOp)conv2d_342_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
conv2d_342/Conv2DConv2Dinputs(conv2d_342/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
!conv2d_342/BiasAdd/ReadVariableOpReadVariableOp*conv2d_342_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_342/BiasAddBiasAddconv2d_342/Conv2D:output:0)conv2d_342/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0r
activation_342/ReluReluconv2d_342/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
max_pooling2d_342/MaxPoolMaxPool!activation_342/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
~
dropout_342/IdentityIdentity"max_pooling2d_342/MaxPool:output:0*
T0*/
_output_shapes
:?????????''0?
 conv2d_343/Conv2D/ReadVariableOpReadVariableOp)conv2d_343_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_343/Conv2DConv2Ddropout_342/Identity:output:0(conv2d_343/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
!conv2d_343/BiasAdd/ReadVariableOpReadVariableOp*conv2d_343_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_343/BiasAddBiasAddconv2d_343/Conv2D:output:0)conv2d_343/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0r
activation_343/ReluReluconv2d_343/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
max_pooling2d_343/MaxPoolMaxPool!activation_343/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_343/IdentityIdentity"max_pooling2d_343/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
 conv2d_344/Conv2D/ReadVariableOpReadVariableOp)conv2d_344_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_344/Conv2DConv2Ddropout_343/Identity:output:0(conv2d_344/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_344/BiasAdd/ReadVariableOpReadVariableOp*conv2d_344_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_344/BiasAddBiasAddconv2d_344/Conv2D:output:0)conv2d_344/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_344/ReluReluconv2d_344/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_344/MaxPoolMaxPool!activation_344/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_344/IdentityIdentity"max_pooling2d_344/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
 conv2d_345/Conv2D/ReadVariableOpReadVariableOp)conv2d_345_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_345/Conv2DConv2Ddropout_344/Identity:output:0(conv2d_345/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_345/BiasAdd/ReadVariableOpReadVariableOp*conv2d_345_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_345/BiasAddBiasAddconv2d_345/Conv2D:output:0)conv2d_345/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_345/ReluReluconv2d_345/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_345/MaxPoolMaxPool!activation_345/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_345/IdentityIdentity"max_pooling2d_345/MaxPool:output:0*
T0*/
_output_shapes
:?????????0a
flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_98/ReshapeReshapedropout_345/Identity:output:0flatten_98/Const:output:0*
T0*(
_output_shapes
:???????????
dense_98/MatMul/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_98/MatMulMatMulflatten_98/Reshape:output:0&dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_98/BiasAdd/ReadVariableOpReadVariableOp(dense_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_98/BiasAddBiasAdddense_98/MatMul:product:0'dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_98/SoftmaxSoftmaxdense_98/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_98/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_342/BiasAdd/ReadVariableOp!^conv2d_342/Conv2D/ReadVariableOp"^conv2d_343/BiasAdd/ReadVariableOp!^conv2d_343/Conv2D/ReadVariableOp"^conv2d_344/BiasAdd/ReadVariableOp!^conv2d_344/Conv2D/ReadVariableOp"^conv2d_345/BiasAdd/ReadVariableOp!^conv2d_345/Conv2D/ReadVariableOp ^dense_98/BiasAdd/ReadVariableOp^dense_98/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_342/BiasAdd/ReadVariableOp!conv2d_342/BiasAdd/ReadVariableOp2D
 conv2d_342/Conv2D/ReadVariableOp conv2d_342/Conv2D/ReadVariableOp2F
!conv2d_343/BiasAdd/ReadVariableOp!conv2d_343/BiasAdd/ReadVariableOp2D
 conv2d_343/Conv2D/ReadVariableOp conv2d_343/Conv2D/ReadVariableOp2F
!conv2d_344/BiasAdd/ReadVariableOp!conv2d_344/BiasAdd/ReadVariableOp2D
 conv2d_344/Conv2D/ReadVariableOp conv2d_344/Conv2D/ReadVariableOp2F
!conv2d_345/BiasAdd/ReadVariableOp!conv2d_345/BiasAdd/ReadVariableOp2D
 conv2d_345/Conv2D/ReadVariableOp conv2d_345/Conv2D/ReadVariableOp2B
dense_98/BiasAdd/ReadVariableOpdense_98/BiasAdd/ReadVariableOp2@
dense_98/MatMul/ReadVariableOpdense_98/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?C
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371229
conv2d_342_input,
conv2d_342_1371190:0 
conv2d_342_1371192:0,
conv2d_343_1371198:00 
conv2d_343_1371200:0,
conv2d_344_1371206:00 
conv2d_344_1371208:0,
conv2d_345_1371214:00 
conv2d_345_1371216:0#
dense_98_1371223:	?
dense_98_1371225:
identity??"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall?"conv2d_344/StatefulPartitionedCall?"conv2d_345/StatefulPartitionedCall? dense_98/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCallconv2d_342_inputconv2d_342_1371190conv2d_342_1371192*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1370735?
activation_342/PartitionedCallPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_342_layer_call_and_return_conditional_losses_1370746?
!max_pooling2d_342/PartitionedCallPartitionedCall'activation_342/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1370679?
dropout_342/PartitionedCallPartitionedCall*max_pooling2d_342/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_342_layer_call_and_return_conditional_losses_1370754?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall$dropout_342/PartitionedCall:output:0conv2d_343_1371198conv2d_343_1371200*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1370766?
activation_343/PartitionedCallPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_343_layer_call_and_return_conditional_losses_1370777?
!max_pooling2d_343/PartitionedCallPartitionedCall'activation_343/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1370691?
dropout_343/PartitionedCallPartitionedCall*max_pooling2d_343/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_343_layer_call_and_return_conditional_losses_1370785?
"conv2d_344/StatefulPartitionedCallStatefulPartitionedCall$dropout_343/PartitionedCall:output:0conv2d_344_1371206conv2d_344_1371208*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1370797?
activation_344/PartitionedCallPartitionedCall+conv2d_344/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_344_layer_call_and_return_conditional_losses_1370808?
!max_pooling2d_344/PartitionedCallPartitionedCall'activation_344/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1370703?
dropout_344/PartitionedCallPartitionedCall*max_pooling2d_344/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370816?
"conv2d_345/StatefulPartitionedCallStatefulPartitionedCall$dropout_344/PartitionedCall:output:0conv2d_345_1371214conv2d_345_1371216*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1370828?
activation_345/PartitionedCallPartitionedCall+conv2d_345/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_345_layer_call_and_return_conditional_losses_1370839?
!max_pooling2d_345/PartitionedCallPartitionedCall'activation_345/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1370715?
dropout_345/PartitionedCallPartitionedCall*max_pooling2d_345/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370847?
flatten_98/PartitionedCallPartitionedCall$dropout_345/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_1370855?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_98_1371223dense_98_1371225*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_1370868x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall#^conv2d_344/StatefulPartitionedCall#^conv2d_345/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2H
"conv2d_344/StatefulPartitionedCall"conv2d_344/StatefulPartitionedCall2H
"conv2d_345/StatefulPartitionedCall"conv2d_345/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_342_input
?

?
/__inference_sequential_98_layer_call_fn_1371329

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_98_layer_call_and_return_conditional_losses_1370875o
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

?
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1370766

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

g
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370973

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
 *??>?
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
?
L
0__inference_activation_344_layer_call_fn_1371636

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
GPU2*0J 8? *T
fORM
K__inference_activation_344_layer_call_and_return_conditional_losses_1370808h
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
?
I
-__inference_dropout_345_layer_call_fn_1371722

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370847h
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
?
j
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1370691

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
?
g
K__inference_activation_344_layer_call_and_return_conditional_losses_1371641

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
?

g
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371678

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
 *??>?
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
?
f
-__inference_dropout_345_layer_call_fn_1371727

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370934w
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
?

g
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371744

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??l
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
 *???=?
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
I
-__inference_dropout_343_layer_call_fn_1371590

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_343_layer_call_and_return_conditional_losses_1370785h
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
?
L
0__inference_activation_345_layer_call_fn_1371702

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
GPU2*0J 8? *T
fORM
K__inference_activation_345_layer_call_and_return_conditional_losses_1370839h
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
?

?
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1370828

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
?
I
-__inference_dropout_342_layer_call_fn_1371524

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_342_layer_call_and_return_conditional_losses_1370754h
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
?

?
/__inference_sequential_98_layer_call_fn_1371354

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
GPU2*0J 8? *S
fNRL
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371139o
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
?
c
G__inference_flatten_98_layer_call_and_return_conditional_losses_1370855

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
f
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371534

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
?

?
E__inference_dense_98_layer_call_and_return_conditional_losses_1371775

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
?I
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371139

inputs,
conv2d_342_1371100:0 
conv2d_342_1371102:0,
conv2d_343_1371108:00 
conv2d_343_1371110:0,
conv2d_344_1371116:00 
conv2d_344_1371118:0,
conv2d_345_1371124:00 
conv2d_345_1371126:0#
dense_98_1371133:	?
dense_98_1371135:
identity??"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall?"conv2d_344/StatefulPartitionedCall?"conv2d_345/StatefulPartitionedCall? dense_98/StatefulPartitionedCall?#dropout_342/StatefulPartitionedCall?#dropout_343/StatefulPartitionedCall?#dropout_344/StatefulPartitionedCall?#dropout_345/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_342_1371100conv2d_342_1371102*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1370735?
activation_342/PartitionedCallPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_342_layer_call_and_return_conditional_losses_1370746?
!max_pooling2d_342/PartitionedCallPartitionedCall'activation_342/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1370679?
#dropout_342/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_342/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371051?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall,dropout_342/StatefulPartitionedCall:output:0conv2d_343_1371108conv2d_343_1371110*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1370766?
activation_343/PartitionedCallPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_343_layer_call_and_return_conditional_losses_1370777?
!max_pooling2d_343/PartitionedCallPartitionedCall'activation_343/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1370691?
#dropout_343/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_343/PartitionedCall:output:0$^dropout_342/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371012?
"conv2d_344/StatefulPartitionedCallStatefulPartitionedCall,dropout_343/StatefulPartitionedCall:output:0conv2d_344_1371116conv2d_344_1371118*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1370797?
activation_344/PartitionedCallPartitionedCall+conv2d_344/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_344_layer_call_and_return_conditional_losses_1370808?
!max_pooling2d_344/PartitionedCallPartitionedCall'activation_344/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1370703?
#dropout_344/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_344/PartitionedCall:output:0$^dropout_343/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370973?
"conv2d_345/StatefulPartitionedCallStatefulPartitionedCall,dropout_344/StatefulPartitionedCall:output:0conv2d_345_1371124conv2d_345_1371126*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1370828?
activation_345/PartitionedCallPartitionedCall+conv2d_345/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_345_layer_call_and_return_conditional_losses_1370839?
!max_pooling2d_345/PartitionedCallPartitionedCall'activation_345/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1370715?
#dropout_345/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_345/PartitionedCall:output:0$^dropout_344/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370934?
flatten_98/PartitionedCallPartitionedCall,dropout_345/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_1370855?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_98_1371133dense_98_1371135*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_1370868x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall#^conv2d_344/StatefulPartitionedCall#^conv2d_345/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall$^dropout_342/StatefulPartitionedCall$^dropout_343/StatefulPartitionedCall$^dropout_344/StatefulPartitionedCall$^dropout_345/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2H
"conv2d_344/StatefulPartitionedCall"conv2d_344/StatefulPartitionedCall2H
"conv2d_345/StatefulPartitionedCall"conv2d_345/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2J
#dropout_342/StatefulPartitionedCall#dropout_342/StatefulPartitionedCall2J
#dropout_343/StatefulPartitionedCall#dropout_343/StatefulPartitionedCall2J
#dropout_344/StatefulPartitionedCall#dropout_344/StatefulPartitionedCall2J
#dropout_345/StatefulPartitionedCall#dropout_345/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?R
?
 __inference__traced_save_1371915
file_prefix0
,savev2_conv2d_342_kernel_read_readvariableop.
*savev2_conv2d_342_bias_read_readvariableop0
,savev2_conv2d_343_kernel_read_readvariableop.
*savev2_conv2d_343_bias_read_readvariableop0
,savev2_conv2d_344_kernel_read_readvariableop.
*savev2_conv2d_344_bias_read_readvariableop0
,savev2_conv2d_345_kernel_read_readvariableop.
*savev2_conv2d_345_bias_read_readvariableop.
*savev2_dense_98_kernel_read_readvariableop,
(savev2_dense_98_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_342_kernel_m_read_readvariableop5
1savev2_adam_conv2d_342_bias_m_read_readvariableop7
3savev2_adam_conv2d_343_kernel_m_read_readvariableop5
1savev2_adam_conv2d_343_bias_m_read_readvariableop7
3savev2_adam_conv2d_344_kernel_m_read_readvariableop5
1savev2_adam_conv2d_344_bias_m_read_readvariableop7
3savev2_adam_conv2d_345_kernel_m_read_readvariableop5
1savev2_adam_conv2d_345_bias_m_read_readvariableop5
1savev2_adam_dense_98_kernel_m_read_readvariableop3
/savev2_adam_dense_98_bias_m_read_readvariableop7
3savev2_adam_conv2d_342_kernel_v_read_readvariableop5
1savev2_adam_conv2d_342_bias_v_read_readvariableop7
3savev2_adam_conv2d_343_kernel_v_read_readvariableop5
1savev2_adam_conv2d_343_bias_v_read_readvariableop7
3savev2_adam_conv2d_344_kernel_v_read_readvariableop5
1savev2_adam_conv2d_344_bias_v_read_readvariableop7
3savev2_adam_conv2d_345_kernel_v_read_readvariableop5
1savev2_adam_conv2d_345_bias_v_read_readvariableop5
1savev2_adam_dense_98_kernel_v_read_readvariableop3
/savev2_adam_dense_98_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_342_kernel_read_readvariableop*savev2_conv2d_342_bias_read_readvariableop,savev2_conv2d_343_kernel_read_readvariableop*savev2_conv2d_343_bias_read_readvariableop,savev2_conv2d_344_kernel_read_readvariableop*savev2_conv2d_344_bias_read_readvariableop,savev2_conv2d_345_kernel_read_readvariableop*savev2_conv2d_345_bias_read_readvariableop*savev2_dense_98_kernel_read_readvariableop(savev2_dense_98_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_342_kernel_m_read_readvariableop1savev2_adam_conv2d_342_bias_m_read_readvariableop3savev2_adam_conv2d_343_kernel_m_read_readvariableop1savev2_adam_conv2d_343_bias_m_read_readvariableop3savev2_adam_conv2d_344_kernel_m_read_readvariableop1savev2_adam_conv2d_344_bias_m_read_readvariableop3savev2_adam_conv2d_345_kernel_m_read_readvariableop1savev2_adam_conv2d_345_bias_m_read_readvariableop1savev2_adam_dense_98_kernel_m_read_readvariableop/savev2_adam_dense_98_bias_m_read_readvariableop3savev2_adam_conv2d_342_kernel_v_read_readvariableop1savev2_adam_conv2d_342_bias_v_read_readvariableop3savev2_adam_conv2d_343_kernel_v_read_readvariableop1savev2_adam_conv2d_343_bias_v_read_readvariableop3savev2_adam_conv2d_344_kernel_v_read_readvariableop1savev2_adam_conv2d_344_bias_v_read_readvariableop3savev2_adam_conv2d_345_kernel_v_read_readvariableop1savev2_adam_conv2d_345_bias_v_read_readvariableop1savev2_adam_dense_98_kernel_v_read_readvariableop/savev2_adam_dense_98_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
O
3__inference_max_pooling2d_344_layer_call_fn_1371646

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1370703?
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
?I
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371271
conv2d_342_input,
conv2d_342_1371232:0 
conv2d_342_1371234:0,
conv2d_343_1371240:00 
conv2d_343_1371242:0,
conv2d_344_1371248:00 
conv2d_344_1371250:0,
conv2d_345_1371256:00 
conv2d_345_1371258:0#
dense_98_1371265:	?
dense_98_1371267:
identity??"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall?"conv2d_344/StatefulPartitionedCall?"conv2d_345/StatefulPartitionedCall? dense_98/StatefulPartitionedCall?#dropout_342/StatefulPartitionedCall?#dropout_343/StatefulPartitionedCall?#dropout_344/StatefulPartitionedCall?#dropout_345/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCallconv2d_342_inputconv2d_342_1371232conv2d_342_1371234*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1370735?
activation_342/PartitionedCallPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_342_layer_call_and_return_conditional_losses_1370746?
!max_pooling2d_342/PartitionedCallPartitionedCall'activation_342/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1370679?
#dropout_342/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_342/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371051?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall,dropout_342/StatefulPartitionedCall:output:0conv2d_343_1371240conv2d_343_1371242*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1370766?
activation_343/PartitionedCallPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_343_layer_call_and_return_conditional_losses_1370777?
!max_pooling2d_343/PartitionedCallPartitionedCall'activation_343/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1370691?
#dropout_343/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_343/PartitionedCall:output:0$^dropout_342/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371012?
"conv2d_344/StatefulPartitionedCallStatefulPartitionedCall,dropout_343/StatefulPartitionedCall:output:0conv2d_344_1371248conv2d_344_1371250*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1370797?
activation_344/PartitionedCallPartitionedCall+conv2d_344/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_344_layer_call_and_return_conditional_losses_1370808?
!max_pooling2d_344/PartitionedCallPartitionedCall'activation_344/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1370703?
#dropout_344/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_344/PartitionedCall:output:0$^dropout_343/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370973?
"conv2d_345/StatefulPartitionedCallStatefulPartitionedCall,dropout_344/StatefulPartitionedCall:output:0conv2d_345_1371256conv2d_345_1371258*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1370828?
activation_345/PartitionedCallPartitionedCall+conv2d_345/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_345_layer_call_and_return_conditional_losses_1370839?
!max_pooling2d_345/PartitionedCallPartitionedCall'activation_345/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1370715?
#dropout_345/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_345/PartitionedCall:output:0$^dropout_344/StatefulPartitionedCall*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370934?
flatten_98/PartitionedCallPartitionedCall,dropout_345/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_1370855?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_98_1371265dense_98_1371267*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_1370868x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall#^conv2d_344/StatefulPartitionedCall#^conv2d_345/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall$^dropout_342/StatefulPartitionedCall$^dropout_343/StatefulPartitionedCall$^dropout_344/StatefulPartitionedCall$^dropout_345/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2H
"conv2d_344/StatefulPartitionedCall"conv2d_344/StatefulPartitionedCall2H
"conv2d_345/StatefulPartitionedCall"conv2d_345/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2J
#dropout_342/StatefulPartitionedCall#dropout_342/StatefulPartitionedCall2J
#dropout_343/StatefulPartitionedCall#dropout_343/StatefulPartitionedCall2J
#dropout_344/StatefulPartitionedCall#dropout_344/StatefulPartitionedCall2J
#dropout_345/StatefulPartitionedCall#dropout_345/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_342_input
?
j
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1371519

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
?
f
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371732

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
?J
?

"__inference__wrapped_model_1370670
conv2d_342_inputQ
7sequential_98_conv2d_342_conv2d_readvariableop_resource:0F
8sequential_98_conv2d_342_biasadd_readvariableop_resource:0Q
7sequential_98_conv2d_343_conv2d_readvariableop_resource:00F
8sequential_98_conv2d_343_biasadd_readvariableop_resource:0Q
7sequential_98_conv2d_344_conv2d_readvariableop_resource:00F
8sequential_98_conv2d_344_biasadd_readvariableop_resource:0Q
7sequential_98_conv2d_345_conv2d_readvariableop_resource:00F
8sequential_98_conv2d_345_biasadd_readvariableop_resource:0H
5sequential_98_dense_98_matmul_readvariableop_resource:	?D
6sequential_98_dense_98_biasadd_readvariableop_resource:
identity??/sequential_98/conv2d_342/BiasAdd/ReadVariableOp?.sequential_98/conv2d_342/Conv2D/ReadVariableOp?/sequential_98/conv2d_343/BiasAdd/ReadVariableOp?.sequential_98/conv2d_343/Conv2D/ReadVariableOp?/sequential_98/conv2d_344/BiasAdd/ReadVariableOp?.sequential_98/conv2d_344/Conv2D/ReadVariableOp?/sequential_98/conv2d_345/BiasAdd/ReadVariableOp?.sequential_98/conv2d_345/Conv2D/ReadVariableOp?-sequential_98/dense_98/BiasAdd/ReadVariableOp?,sequential_98/dense_98/MatMul/ReadVariableOp?
.sequential_98/conv2d_342/Conv2D/ReadVariableOpReadVariableOp7sequential_98_conv2d_342_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
sequential_98/conv2d_342/Conv2DConv2Dconv2d_342_input6sequential_98/conv2d_342/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
/sequential_98/conv2d_342/BiasAdd/ReadVariableOpReadVariableOp8sequential_98_conv2d_342_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_98/conv2d_342/BiasAddBiasAdd(sequential_98/conv2d_342/Conv2D:output:07sequential_98/conv2d_342/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0?
!sequential_98/activation_342/ReluRelu)sequential_98/conv2d_342/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
'sequential_98/max_pooling2d_342/MaxPoolMaxPool/sequential_98/activation_342/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
?
"sequential_98/dropout_342/IdentityIdentity0sequential_98/max_pooling2d_342/MaxPool:output:0*
T0*/
_output_shapes
:?????????''0?
.sequential_98/conv2d_343/Conv2D/ReadVariableOpReadVariableOp7sequential_98_conv2d_343_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_98/conv2d_343/Conv2DConv2D+sequential_98/dropout_342/Identity:output:06sequential_98/conv2d_343/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
/sequential_98/conv2d_343/BiasAdd/ReadVariableOpReadVariableOp8sequential_98_conv2d_343_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_98/conv2d_343/BiasAddBiasAdd(sequential_98/conv2d_343/Conv2D:output:07sequential_98/conv2d_343/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0?
!sequential_98/activation_343/ReluRelu)sequential_98/conv2d_343/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
'sequential_98/max_pooling2d_343/MaxPoolMaxPool/sequential_98/activation_343/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_98/dropout_343/IdentityIdentity0sequential_98/max_pooling2d_343/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
.sequential_98/conv2d_344/Conv2D/ReadVariableOpReadVariableOp7sequential_98_conv2d_344_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_98/conv2d_344/Conv2DConv2D+sequential_98/dropout_343/Identity:output:06sequential_98/conv2d_344/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
/sequential_98/conv2d_344/BiasAdd/ReadVariableOpReadVariableOp8sequential_98_conv2d_344_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_98/conv2d_344/BiasAddBiasAdd(sequential_98/conv2d_344/Conv2D:output:07sequential_98/conv2d_344/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0?
!sequential_98/activation_344/ReluRelu)sequential_98/conv2d_344/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
'sequential_98/max_pooling2d_344/MaxPoolMaxPool/sequential_98/activation_344/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_98/dropout_344/IdentityIdentity0sequential_98/max_pooling2d_344/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
.sequential_98/conv2d_345/Conv2D/ReadVariableOpReadVariableOp7sequential_98_conv2d_345_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_98/conv2d_345/Conv2DConv2D+sequential_98/dropout_344/Identity:output:06sequential_98/conv2d_345/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
/sequential_98/conv2d_345/BiasAdd/ReadVariableOpReadVariableOp8sequential_98_conv2d_345_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_98/conv2d_345/BiasAddBiasAdd(sequential_98/conv2d_345/Conv2D:output:07sequential_98/conv2d_345/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0?
!sequential_98/activation_345/ReluRelu)sequential_98/conv2d_345/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
'sequential_98/max_pooling2d_345/MaxPoolMaxPool/sequential_98/activation_345/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_98/dropout_345/IdentityIdentity0sequential_98/max_pooling2d_345/MaxPool:output:0*
T0*/
_output_shapes
:?????????0o
sequential_98/flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
 sequential_98/flatten_98/ReshapeReshape+sequential_98/dropout_345/Identity:output:0'sequential_98/flatten_98/Const:output:0*
T0*(
_output_shapes
:???????????
,sequential_98/dense_98/MatMul/ReadVariableOpReadVariableOp5sequential_98_dense_98_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_98/dense_98/MatMulMatMul)sequential_98/flatten_98/Reshape:output:04sequential_98/dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_98/dense_98/BiasAdd/ReadVariableOpReadVariableOp6sequential_98_dense_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_98/dense_98/BiasAddBiasAdd'sequential_98/dense_98/MatMul:product:05sequential_98/dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_98/dense_98/SoftmaxSoftmax'sequential_98/dense_98/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_98/dense_98/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_98/conv2d_342/BiasAdd/ReadVariableOp/^sequential_98/conv2d_342/Conv2D/ReadVariableOp0^sequential_98/conv2d_343/BiasAdd/ReadVariableOp/^sequential_98/conv2d_343/Conv2D/ReadVariableOp0^sequential_98/conv2d_344/BiasAdd/ReadVariableOp/^sequential_98/conv2d_344/Conv2D/ReadVariableOp0^sequential_98/conv2d_345/BiasAdd/ReadVariableOp/^sequential_98/conv2d_345/Conv2D/ReadVariableOp.^sequential_98/dense_98/BiasAdd/ReadVariableOp-^sequential_98/dense_98/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2b
/sequential_98/conv2d_342/BiasAdd/ReadVariableOp/sequential_98/conv2d_342/BiasAdd/ReadVariableOp2`
.sequential_98/conv2d_342/Conv2D/ReadVariableOp.sequential_98/conv2d_342/Conv2D/ReadVariableOp2b
/sequential_98/conv2d_343/BiasAdd/ReadVariableOp/sequential_98/conv2d_343/BiasAdd/ReadVariableOp2`
.sequential_98/conv2d_343/Conv2D/ReadVariableOp.sequential_98/conv2d_343/Conv2D/ReadVariableOp2b
/sequential_98/conv2d_344/BiasAdd/ReadVariableOp/sequential_98/conv2d_344/BiasAdd/ReadVariableOp2`
.sequential_98/conv2d_344/Conv2D/ReadVariableOp.sequential_98/conv2d_344/Conv2D/ReadVariableOp2b
/sequential_98/conv2d_345/BiasAdd/ReadVariableOp/sequential_98/conv2d_345/BiasAdd/ReadVariableOp2`
.sequential_98/conv2d_345/Conv2D/ReadVariableOp.sequential_98/conv2d_345/Conv2D/ReadVariableOp2^
-sequential_98/dense_98/BiasAdd/ReadVariableOp-sequential_98/dense_98/BiasAdd/ReadVariableOp2\
,sequential_98/dense_98/MatMul/ReadVariableOp,sequential_98/dense_98/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_342_input
?
j
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1370715

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
j
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1370703

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

g
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371012

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
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
 *???>?
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
?

?
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1371565

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
?
f
-__inference_dropout_343_layer_call_fn_1371595

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371012w
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
?
I
-__inference_dropout_344_layer_call_fn_1371656

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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370816h
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
?
O
3__inference_max_pooling2d_345_layer_call_fn_1371712

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1370715?
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

?
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1370735

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

?
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1370797

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
?
O
3__inference_max_pooling2d_342_layer_call_fn_1371514

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1370679?
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
?
O
3__inference_max_pooling2d_343_layer_call_fn_1371580

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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1370691?
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
g
K__inference_activation_343_layer_call_and_return_conditional_losses_1370777

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
?]
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371480

inputsC
)conv2d_342_conv2d_readvariableop_resource:08
*conv2d_342_biasadd_readvariableop_resource:0C
)conv2d_343_conv2d_readvariableop_resource:008
*conv2d_343_biasadd_readvariableop_resource:0C
)conv2d_344_conv2d_readvariableop_resource:008
*conv2d_344_biasadd_readvariableop_resource:0C
)conv2d_345_conv2d_readvariableop_resource:008
*conv2d_345_biasadd_readvariableop_resource:0:
'dense_98_matmul_readvariableop_resource:	?6
(dense_98_biasadd_readvariableop_resource:
identity??!conv2d_342/BiasAdd/ReadVariableOp? conv2d_342/Conv2D/ReadVariableOp?!conv2d_343/BiasAdd/ReadVariableOp? conv2d_343/Conv2D/ReadVariableOp?!conv2d_344/BiasAdd/ReadVariableOp? conv2d_344/Conv2D/ReadVariableOp?!conv2d_345/BiasAdd/ReadVariableOp? conv2d_345/Conv2D/ReadVariableOp?dense_98/BiasAdd/ReadVariableOp?dense_98/MatMul/ReadVariableOp?
 conv2d_342/Conv2D/ReadVariableOpReadVariableOp)conv2d_342_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
conv2d_342/Conv2DConv2Dinputs(conv2d_342/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
!conv2d_342/BiasAdd/ReadVariableOpReadVariableOp*conv2d_342_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_342/BiasAddBiasAddconv2d_342/Conv2D:output:0)conv2d_342/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0r
activation_342/ReluReluconv2d_342/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
max_pooling2d_342/MaxPoolMaxPool!activation_342/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
^
dropout_342/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_342/dropout/MulMul"max_pooling2d_342/MaxPool:output:0"dropout_342/dropout/Const:output:0*
T0*/
_output_shapes
:?????????''0k
dropout_342/dropout/ShapeShape"max_pooling2d_342/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_342/dropout/random_uniform/RandomUniformRandomUniform"dropout_342/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????''0*
dtype0*

seedg
"dropout_342/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
 dropout_342/dropout/GreaterEqualGreaterEqual9dropout_342/dropout/random_uniform/RandomUniform:output:0+dropout_342/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????''0?
dropout_342/dropout/CastCast$dropout_342/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????''0?
dropout_342/dropout/Mul_1Muldropout_342/dropout/Mul:z:0dropout_342/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????''0?
 conv2d_343/Conv2D/ReadVariableOpReadVariableOp)conv2d_343_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_343/Conv2DConv2Ddropout_342/dropout/Mul_1:z:0(conv2d_343/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
!conv2d_343/BiasAdd/ReadVariableOpReadVariableOp*conv2d_343_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_343/BiasAddBiasAddconv2d_343/Conv2D:output:0)conv2d_343/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0r
activation_343/ReluReluconv2d_343/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
max_pooling2d_343/MaxPoolMaxPool!activation_343/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_343/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_343/dropout/MulMul"max_pooling2d_343/MaxPool:output:0"dropout_343/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_343/dropout/ShapeShape"max_pooling2d_343/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_343/dropout/random_uniform/RandomUniformRandomUniform"dropout_343/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_343/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
 dropout_343/dropout/GreaterEqualGreaterEqual9dropout_343/dropout/random_uniform/RandomUniform:output:0+dropout_343/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_343/dropout/CastCast$dropout_343/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_343/dropout/Mul_1Muldropout_343/dropout/Mul:z:0dropout_343/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0?
 conv2d_344/Conv2D/ReadVariableOpReadVariableOp)conv2d_344_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_344/Conv2DConv2Ddropout_343/dropout/Mul_1:z:0(conv2d_344/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_344/BiasAdd/ReadVariableOpReadVariableOp*conv2d_344_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_344/BiasAddBiasAddconv2d_344/Conv2D:output:0)conv2d_344/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_344/ReluReluconv2d_344/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_344/MaxPoolMaxPool!activation_344/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_344/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_344/dropout/MulMul"max_pooling2d_344/MaxPool:output:0"dropout_344/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_344/dropout/ShapeShape"max_pooling2d_344/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_344/dropout/random_uniform/RandomUniformRandomUniform"dropout_344/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_344/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>?
 dropout_344/dropout/GreaterEqualGreaterEqual9dropout_344/dropout/random_uniform/RandomUniform:output:0+dropout_344/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_344/dropout/CastCast$dropout_344/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_344/dropout/Mul_1Muldropout_344/dropout/Mul:z:0dropout_344/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0?
 conv2d_345/Conv2D/ReadVariableOpReadVariableOp)conv2d_345_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_345/Conv2DConv2Ddropout_344/dropout/Mul_1:z:0(conv2d_345/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_345/BiasAdd/ReadVariableOpReadVariableOp*conv2d_345_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_345/BiasAddBiasAddconv2d_345/Conv2D:output:0)conv2d_345/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_345/ReluReluconv2d_345/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_345/MaxPoolMaxPool!activation_345/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_345/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_345/dropout/MulMul"max_pooling2d_345/MaxPool:output:0"dropout_345/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_345/dropout/ShapeShape"max_pooling2d_345/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_345/dropout/random_uniform/RandomUniformRandomUniform"dropout_345/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_345/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
 dropout_345/dropout/GreaterEqualGreaterEqual9dropout_345/dropout/random_uniform/RandomUniform:output:0+dropout_345/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_345/dropout/CastCast$dropout_345/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_345/dropout/Mul_1Muldropout_345/dropout/Mul:z:0dropout_345/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_98/ReshapeReshapedropout_345/dropout/Mul_1:z:0flatten_98/Const:output:0*
T0*(
_output_shapes
:???????????
dense_98/MatMul/ReadVariableOpReadVariableOp'dense_98_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_98/MatMulMatMulflatten_98/Reshape:output:0&dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_98/BiasAdd/ReadVariableOpReadVariableOp(dense_98_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_98/BiasAddBiasAdddense_98/MatMul:product:0'dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_98/SoftmaxSoftmaxdense_98/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_98/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_342/BiasAdd/ReadVariableOp!^conv2d_342/Conv2D/ReadVariableOp"^conv2d_343/BiasAdd/ReadVariableOp!^conv2d_343/Conv2D/ReadVariableOp"^conv2d_344/BiasAdd/ReadVariableOp!^conv2d_344/Conv2D/ReadVariableOp"^conv2d_345/BiasAdd/ReadVariableOp!^conv2d_345/Conv2D/ReadVariableOp ^dense_98/BiasAdd/ReadVariableOp^dense_98/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_342/BiasAdd/ReadVariableOp!conv2d_342/BiasAdd/ReadVariableOp2D
 conv2d_342/Conv2D/ReadVariableOp conv2d_342/Conv2D/ReadVariableOp2F
!conv2d_343/BiasAdd/ReadVariableOp!conv2d_343/BiasAdd/ReadVariableOp2D
 conv2d_343/Conv2D/ReadVariableOp conv2d_343/Conv2D/ReadVariableOp2F
!conv2d_344/BiasAdd/ReadVariableOp!conv2d_344/BiasAdd/ReadVariableOp2D
 conv2d_344/Conv2D/ReadVariableOp conv2d_344/Conv2D/ReadVariableOp2F
!conv2d_345/BiasAdd/ReadVariableOp!conv2d_345/BiasAdd/ReadVariableOp2D
 conv2d_345/Conv2D/ReadVariableOp conv2d_345/Conv2D/ReadVariableOp2B
dense_98/BiasAdd/ReadVariableOpdense_98/BiasAdd/ReadVariableOp2@
dense_98/MatMul/ReadVariableOpdense_98/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1371631

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
?
?
,__inference_conv2d_344_layer_call_fn_1371621

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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1370797w
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
?
g
K__inference_activation_344_layer_call_and_return_conditional_losses_1370808

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
?

g
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371051

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
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
 *???>?
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
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371600

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
?
g
K__inference_activation_342_layer_call_and_return_conditional_losses_1370746

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
f
H__inference_dropout_343_layer_call_and_return_conditional_losses_1370785

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
?
?
,__inference_conv2d_345_layer_call_fn_1371687

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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1370828w
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
?
g
K__inference_activation_345_layer_call_and_return_conditional_losses_1371707

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
j
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1370679

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
?
g
K__inference_activation_345_layer_call_and_return_conditional_losses_1370839

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

?
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1371499

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
??
?
#__inference__traced_restore_1372042
file_prefix<
"assignvariableop_conv2d_342_kernel:00
"assignvariableop_1_conv2d_342_bias:0>
$assignvariableop_2_conv2d_343_kernel:000
"assignvariableop_3_conv2d_343_bias:0>
$assignvariableop_4_conv2d_344_kernel:000
"assignvariableop_5_conv2d_344_bias:0>
$assignvariableop_6_conv2d_345_kernel:000
"assignvariableop_7_conv2d_345_bias:05
"assignvariableop_8_dense_98_kernel:	?.
 assignvariableop_9_dense_98_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: F
,assignvariableop_19_adam_conv2d_342_kernel_m:08
*assignvariableop_20_adam_conv2d_342_bias_m:0F
,assignvariableop_21_adam_conv2d_343_kernel_m:008
*assignvariableop_22_adam_conv2d_343_bias_m:0F
,assignvariableop_23_adam_conv2d_344_kernel_m:008
*assignvariableop_24_adam_conv2d_344_bias_m:0F
,assignvariableop_25_adam_conv2d_345_kernel_m:008
*assignvariableop_26_adam_conv2d_345_bias_m:0=
*assignvariableop_27_adam_dense_98_kernel_m:	?6
(assignvariableop_28_adam_dense_98_bias_m:F
,assignvariableop_29_adam_conv2d_342_kernel_v:08
*assignvariableop_30_adam_conv2d_342_bias_v:0F
,assignvariableop_31_adam_conv2d_343_kernel_v:008
*assignvariableop_32_adam_conv2d_343_bias_v:0F
,assignvariableop_33_adam_conv2d_344_kernel_v:008
*assignvariableop_34_adam_conv2d_344_bias_v:0F
,assignvariableop_35_adam_conv2d_345_kernel_v:008
*assignvariableop_36_adam_conv2d_345_bias_v:0=
*assignvariableop_37_adam_dense_98_kernel_v:	?6
(assignvariableop_38_adam_dense_98_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_342_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_342_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_343_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_343_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_344_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_344_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_345_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_345_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_98_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_98_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_342_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_342_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_343_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_343_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_344_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_344_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_345_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_345_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_98_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_98_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_342_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_342_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_343_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_343_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_344_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_344_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_345_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_345_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_98_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_98_bias_vIdentity_38:output:0"/device:CPU:0*
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
?

?
E__inference_dense_98_layer_call_and_return_conditional_losses_1370868

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
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370847

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
?B
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1370875

inputs,
conv2d_342_1370736:0 
conv2d_342_1370738:0,
conv2d_343_1370767:00 
conv2d_343_1370769:0,
conv2d_344_1370798:00 
conv2d_344_1370800:0,
conv2d_345_1370829:00 
conv2d_345_1370831:0#
dense_98_1370869:	?
dense_98_1370871:
identity??"conv2d_342/StatefulPartitionedCall?"conv2d_343/StatefulPartitionedCall?"conv2d_344/StatefulPartitionedCall?"conv2d_345/StatefulPartitionedCall? dense_98/StatefulPartitionedCall?
"conv2d_342/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_342_1370736conv2d_342_1370738*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1370735?
activation_342/PartitionedCallPartitionedCall+conv2d_342/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_342_layer_call_and_return_conditional_losses_1370746?
!max_pooling2d_342/PartitionedCallPartitionedCall'activation_342/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1370679?
dropout_342/PartitionedCallPartitionedCall*max_pooling2d_342/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_342_layer_call_and_return_conditional_losses_1370754?
"conv2d_343/StatefulPartitionedCallStatefulPartitionedCall$dropout_342/PartitionedCall:output:0conv2d_343_1370767conv2d_343_1370769*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1370766?
activation_343/PartitionedCallPartitionedCall+conv2d_343/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_343_layer_call_and_return_conditional_losses_1370777?
!max_pooling2d_343/PartitionedCallPartitionedCall'activation_343/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1370691?
dropout_343/PartitionedCallPartitionedCall*max_pooling2d_343/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_343_layer_call_and_return_conditional_losses_1370785?
"conv2d_344/StatefulPartitionedCallStatefulPartitionedCall$dropout_343/PartitionedCall:output:0conv2d_344_1370798conv2d_344_1370800*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1370797?
activation_344/PartitionedCallPartitionedCall+conv2d_344/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_344_layer_call_and_return_conditional_losses_1370808?
!max_pooling2d_344/PartitionedCallPartitionedCall'activation_344/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1370703?
dropout_344/PartitionedCallPartitionedCall*max_pooling2d_344/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_344_layer_call_and_return_conditional_losses_1370816?
"conv2d_345/StatefulPartitionedCallStatefulPartitionedCall$dropout_344/PartitionedCall:output:0conv2d_345_1370829conv2d_345_1370831*
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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1370828?
activation_345/PartitionedCallPartitionedCall+conv2d_345/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_activation_345_layer_call_and_return_conditional_losses_1370839?
!max_pooling2d_345/PartitionedCallPartitionedCall'activation_345/PartitionedCall:output:0*
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
GPU2*0J 8? *W
fRRP
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1370715?
dropout_345/PartitionedCallPartitionedCall*max_pooling2d_345/PartitionedCall:output:0*
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
GPU2*0J 8? *Q
fLRJ
H__inference_dropout_345_layer_call_and_return_conditional_losses_1370847?
flatten_98/PartitionedCallPartitionedCall$dropout_345/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_flatten_98_layer_call_and_return_conditional_losses_1370855?
 dense_98/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_98_1370869dense_98_1370871*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_98_layer_call_and_return_conditional_losses_1370868x
IdentityIdentity)dense_98/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_342/StatefulPartitionedCall#^conv2d_343/StatefulPartitionedCall#^conv2d_344/StatefulPartitionedCall#^conv2d_345/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_342/StatefulPartitionedCall"conv2d_342/StatefulPartitionedCall2H
"conv2d_343/StatefulPartitionedCall"conv2d_343/StatefulPartitionedCall2H
"conv2d_344/StatefulPartitionedCall"conv2d_344/StatefulPartitionedCall2H
"conv2d_345/StatefulPartitionedCall"conv2d_345/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
?
,__inference_conv2d_343_layer_call_fn_1371555

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
GPU2*0J 8? *P
fKRI
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1370766w
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
conv2d_342_inputA
"serving_default_conv2d_342_input:0?????????PP<
dense_980
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
/__inference_sequential_98_layer_call_fn_1370898
/__inference_sequential_98_layer_call_fn_1371329
/__inference_sequential_98_layer_call_fn_1371354
/__inference_sequential_98_layer_call_fn_1371187?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371403
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371480
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371229
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371271?
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
"__inference__wrapped_model_1370670conv2d_342_input"?
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
,__inference_conv2d_342_layer_call_fn_1371489?
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1371499?
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
+:)02conv2d_342/kernel
:02conv2d_342/bias
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
0__inference_activation_342_layer_call_fn_1371504?
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
K__inference_activation_342_layer_call_and_return_conditional_losses_1371509?
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
3__inference_max_pooling2d_342_layer_call_fn_1371514?
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
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1371519?
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
-__inference_dropout_342_layer_call_fn_1371524
-__inference_dropout_342_layer_call_fn_1371529?
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
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371534
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371546?
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
,__inference_conv2d_343_layer_call_fn_1371555?
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1371565?
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
+:)002conv2d_343/kernel
:02conv2d_343/bias
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
0__inference_activation_343_layer_call_fn_1371570?
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
K__inference_activation_343_layer_call_and_return_conditional_losses_1371575?
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
3__inference_max_pooling2d_343_layer_call_fn_1371580?
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
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1371585?
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
-__inference_dropout_343_layer_call_fn_1371590
-__inference_dropout_343_layer_call_fn_1371595?
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
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371600
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371612?
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
,__inference_conv2d_344_layer_call_fn_1371621?
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
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1371631?
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
+:)002conv2d_344/kernel
:02conv2d_344/bias
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
0__inference_activation_344_layer_call_fn_1371636?
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
K__inference_activation_344_layer_call_and_return_conditional_losses_1371641?
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
3__inference_max_pooling2d_344_layer_call_fn_1371646?
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
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1371651?
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
-__inference_dropout_344_layer_call_fn_1371656
-__inference_dropout_344_layer_call_fn_1371661?
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
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371666
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371678?
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
,__inference_conv2d_345_layer_call_fn_1371687?
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
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1371697?
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
+:)002conv2d_345/kernel
:02conv2d_345/bias
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
0__inference_activation_345_layer_call_fn_1371702?
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
K__inference_activation_345_layer_call_and_return_conditional_losses_1371707?
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
3__inference_max_pooling2d_345_layer_call_fn_1371712?
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
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1371717?
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
-__inference_dropout_345_layer_call_fn_1371722
-__inference_dropout_345_layer_call_fn_1371727?
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
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371732
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371744?
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
,__inference_flatten_98_layer_call_fn_1371749?
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_1371755?
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
*__inference_dense_98_layer_call_fn_1371764?
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1371775?
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
": 	?2dense_98/kernel
:2dense_98/bias
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
/__inference_sequential_98_layer_call_fn_1370898conv2d_342_input"?
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
/__inference_sequential_98_layer_call_fn_1371329inputs"?
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
/__inference_sequential_98_layer_call_fn_1371354inputs"?
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
/__inference_sequential_98_layer_call_fn_1371187conv2d_342_input"?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371403inputs"?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371480inputs"?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371229conv2d_342_input"?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371271conv2d_342_input"?
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
%__inference_signature_wrapper_1371304conv2d_342_input"?
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
,__inference_conv2d_342_layer_call_fn_1371489inputs"?
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
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1371499inputs"?
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
0__inference_activation_342_layer_call_fn_1371504inputs"?
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
K__inference_activation_342_layer_call_and_return_conditional_losses_1371509inputs"?
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
3__inference_max_pooling2d_342_layer_call_fn_1371514inputs"?
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
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1371519inputs"?
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
-__inference_dropout_342_layer_call_fn_1371524inputs"?
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
-__inference_dropout_342_layer_call_fn_1371529inputs"?
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
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371534inputs"?
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
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371546inputs"?
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
,__inference_conv2d_343_layer_call_fn_1371555inputs"?
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
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1371565inputs"?
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
0__inference_activation_343_layer_call_fn_1371570inputs"?
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
K__inference_activation_343_layer_call_and_return_conditional_losses_1371575inputs"?
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
3__inference_max_pooling2d_343_layer_call_fn_1371580inputs"?
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
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1371585inputs"?
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
-__inference_dropout_343_layer_call_fn_1371590inputs"?
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
-__inference_dropout_343_layer_call_fn_1371595inputs"?
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
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371600inputs"?
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
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371612inputs"?
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
,__inference_conv2d_344_layer_call_fn_1371621inputs"?
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
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1371631inputs"?
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
0__inference_activation_344_layer_call_fn_1371636inputs"?
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
K__inference_activation_344_layer_call_and_return_conditional_losses_1371641inputs"?
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
3__inference_max_pooling2d_344_layer_call_fn_1371646inputs"?
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
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1371651inputs"?
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
-__inference_dropout_344_layer_call_fn_1371656inputs"?
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
-__inference_dropout_344_layer_call_fn_1371661inputs"?
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
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371666inputs"?
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
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371678inputs"?
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
,__inference_conv2d_345_layer_call_fn_1371687inputs"?
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
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1371697inputs"?
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
0__inference_activation_345_layer_call_fn_1371702inputs"?
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
K__inference_activation_345_layer_call_and_return_conditional_losses_1371707inputs"?
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
3__inference_max_pooling2d_345_layer_call_fn_1371712inputs"?
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
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1371717inputs"?
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
-__inference_dropout_345_layer_call_fn_1371722inputs"?
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
-__inference_dropout_345_layer_call_fn_1371727inputs"?
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
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371732inputs"?
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
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371744inputs"?
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
,__inference_flatten_98_layer_call_fn_1371749inputs"?
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_1371755inputs"?
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
*__inference_dense_98_layer_call_fn_1371764inputs"?
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
E__inference_dense_98_layer_call_and_return_conditional_losses_1371775inputs"?
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
0:.02Adam/conv2d_342/kernel/m
": 02Adam/conv2d_342/bias/m
0:.002Adam/conv2d_343/kernel/m
": 02Adam/conv2d_343/bias/m
0:.002Adam/conv2d_344/kernel/m
": 02Adam/conv2d_344/bias/m
0:.002Adam/conv2d_345/kernel/m
": 02Adam/conv2d_345/bias/m
':%	?2Adam/dense_98/kernel/m
 :2Adam/dense_98/bias/m
0:.02Adam/conv2d_342/kernel/v
": 02Adam/conv2d_342/bias/v
0:.002Adam/conv2d_343/kernel/v
": 02Adam/conv2d_343/bias/v
0:.002Adam/conv2d_344/kernel/v
": 02Adam/conv2d_344/bias/v
0:.002Adam/conv2d_345/kernel/v
": 02Adam/conv2d_345/bias/v
':%	?2Adam/dense_98/kernel/v
 :2Adam/dense_98/bias/v?
"__inference__wrapped_model_1370670?"#>?Z[vw??A?>
7?4
2?/
conv2d_342_input?????????PP
? "3?0
.
dense_98"?
dense_98??????????
K__inference_activation_342_layer_call_and_return_conditional_losses_1371509h7?4
-?*
(?%
inputs?????????NN0
? "-?*
#? 
0?????????NN0
? ?
0__inference_activation_342_layer_call_fn_1371504[7?4
-?*
(?%
inputs?????????NN0
? " ??????????NN0?
K__inference_activation_343_layer_call_and_return_conditional_losses_1371575h7?4
-?*
(?%
inputs?????????%%0
? "-?*
#? 
0?????????%%0
? ?
0__inference_activation_343_layer_call_fn_1371570[7?4
-?*
(?%
inputs?????????%%0
? " ??????????%%0?
K__inference_activation_344_layer_call_and_return_conditional_losses_1371641h7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
0__inference_activation_344_layer_call_fn_1371636[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
K__inference_activation_345_layer_call_and_return_conditional_losses_1371707h7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
0__inference_activation_345_layer_call_fn_1371702[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
G__inference_conv2d_342_layer_call_and_return_conditional_losses_1371499l"#7?4
-?*
(?%
inputs?????????PP
? "-?*
#? 
0?????????NN0
? ?
,__inference_conv2d_342_layer_call_fn_1371489_"#7?4
-?*
(?%
inputs?????????PP
? " ??????????NN0?
G__inference_conv2d_343_layer_call_and_return_conditional_losses_1371565l>?7?4
-?*
(?%
inputs?????????''0
? "-?*
#? 
0?????????%%0
? ?
,__inference_conv2d_343_layer_call_fn_1371555_>?7?4
-?*
(?%
inputs?????????''0
? " ??????????%%0?
G__inference_conv2d_344_layer_call_and_return_conditional_losses_1371631lZ[7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_344_layer_call_fn_1371621_Z[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
G__inference_conv2d_345_layer_call_and_return_conditional_losses_1371697lvw7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_345_layer_call_fn_1371687_vw7?4
-?*
(?%
inputs?????????0
? " ??????????0?
E__inference_dense_98_layer_call_and_return_conditional_losses_1371775_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ?
*__inference_dense_98_layer_call_fn_1371764R??0?-
&?#
!?
inputs??????????
? "???????????
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371534l;?8
1?.
(?%
inputs?????????''0
p 
? "-?*
#? 
0?????????''0
? ?
H__inference_dropout_342_layer_call_and_return_conditional_losses_1371546l;?8
1?.
(?%
inputs?????????''0
p
? "-?*
#? 
0?????????''0
? ?
-__inference_dropout_342_layer_call_fn_1371524_;?8
1?.
(?%
inputs?????????''0
p 
? " ??????????''0?
-__inference_dropout_342_layer_call_fn_1371529_;?8
1?.
(?%
inputs?????????''0
p
? " ??????????''0?
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371600l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_343_layer_call_and_return_conditional_losses_1371612l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_343_layer_call_fn_1371590_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_343_layer_call_fn_1371595_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371666l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_344_layer_call_and_return_conditional_losses_1371678l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_344_layer_call_fn_1371656_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_344_layer_call_fn_1371661_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371732l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_345_layer_call_and_return_conditional_losses_1371744l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_345_layer_call_fn_1371722_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_345_layer_call_fn_1371727_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
G__inference_flatten_98_layer_call_and_return_conditional_losses_1371755a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
,__inference_flatten_98_layer_call_fn_1371749T7?4
-?*
(?%
inputs?????????0
? "????????????
N__inference_max_pooling2d_342_layer_call_and_return_conditional_losses_1371519?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_342_layer_call_fn_1371514?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_343_layer_call_and_return_conditional_losses_1371585?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_343_layer_call_fn_1371580?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_344_layer_call_and_return_conditional_losses_1371651?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_344_layer_call_fn_1371646?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_345_layer_call_and_return_conditional_losses_1371717?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_345_layer_call_fn_1371712?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371229?"#>?Z[vw??I?F
??<
2?/
conv2d_342_input?????????PP
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371271?"#>?Z[vw??I?F
??<
2?/
conv2d_342_input?????????PP
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371403v"#>?Z[vw????<
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_1371480v"#>?Z[vw????<
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
/__inference_sequential_98_layer_call_fn_1370898s"#>?Z[vw??I?F
??<
2?/
conv2d_342_input?????????PP
p 

 
? "???????????
/__inference_sequential_98_layer_call_fn_1371187s"#>?Z[vw??I?F
??<
2?/
conv2d_342_input?????????PP
p

 
? "???????????
/__inference_sequential_98_layer_call_fn_1371329i"#>?Z[vw????<
5?2
(?%
inputs?????????PP
p 

 
? "???????????
/__inference_sequential_98_layer_call_fn_1371354i"#>?Z[vw????<
5?2
(?%
inputs?????????PP
p

 
? "???????????
%__inference_signature_wrapper_1371304?"#>?Z[vw??U?R
? 
K?H
F
conv2d_342_input2?/
conv2d_342_input?????????PP"3?0
.
dense_98"?
dense_98?????????