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
?
Adam/dense_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_47/kernel/v
?
*Adam/dense_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_166/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_166/bias/v
}
*Adam/conv2d_166/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_166/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_166/kernel/v
?
,Adam/conv2d_166/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_165/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_165/bias/v
}
*Adam/conv2d_165/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_165/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_165/kernel/v
?
,Adam/conv2d_165/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_164/bias/v
}
*Adam/conv2d_164/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_164/kernel/v
?
,Adam/conv2d_164/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/kernel/v*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_163/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_163/bias/v
}
*Adam/conv2d_163/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/bias/v*
_output_shapes
:0*
dtype0
?
Adam/conv2d_163/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_163/kernel/v
?
,Adam/conv2d_163/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/kernel/v*&
_output_shapes
:0*
dtype0
?
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
?
Adam/dense_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_47/kernel/m
?
*Adam/dense_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/conv2d_166/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_166/bias/m
}
*Adam/conv2d_166/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_166/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_166/kernel/m
?
,Adam/conv2d_166/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_166/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_165/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_165/bias/m
}
*Adam/conv2d_165/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_165/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_165/kernel/m
?
,Adam/conv2d_165/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_165/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_164/bias/m
}
*Adam/conv2d_164/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_164/kernel/m
?
,Adam/conv2d_164/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_164/kernel/m*&
_output_shapes
:00*
dtype0
?
Adam/conv2d_163/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_163/bias/m
}
*Adam/conv2d_163/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d_163/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_163/kernel/m
?
,Adam/conv2d_163/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_163/kernel/m*&
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
{
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_47/kernel
t
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes
:	?*
dtype0
v
conv2d_166/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_166/bias
o
#conv2d_166/bias/Read/ReadVariableOpReadVariableOpconv2d_166/bias*
_output_shapes
:0*
dtype0
?
conv2d_166/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_166/kernel

%conv2d_166/kernel/Read/ReadVariableOpReadVariableOpconv2d_166/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_165/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_165/bias
o
#conv2d_165/bias/Read/ReadVariableOpReadVariableOpconv2d_165/bias*
_output_shapes
:0*
dtype0
?
conv2d_165/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_165/kernel

%conv2d_165/kernel/Read/ReadVariableOpReadVariableOpconv2d_165/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_164/bias
o
#conv2d_164/bias/Read/ReadVariableOpReadVariableOpconv2d_164/bias*
_output_shapes
:0*
dtype0
?
conv2d_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_164/kernel

%conv2d_164/kernel/Read/ReadVariableOpReadVariableOpconv2d_164/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_163/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_163/bias
o
#conv2d_163/bias/Read/ReadVariableOpReadVariableOpconv2d_163/bias*
_output_shapes
:0*
dtype0
?
conv2d_163/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameconv2d_163/kernel

%conv2d_163/kernel/Read/ReadVariableOpReadVariableOpconv2d_163/kernel*&
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
VARIABLE_VALUEconv2d_163/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_163/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_164/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_164/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_165/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_165/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv2d_166/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_166/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_47/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_47/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv2d_163/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_163/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_164/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_164/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_165/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_165/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_166/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_166/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_47/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_47/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_163/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_163/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_164/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_164/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_165/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_165/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_166/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_166/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_47/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_47/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
 serving_default_conv2d_163_inputPlaceholder*/
_output_shapes
:?????????PP*
dtype0*$
shape:?????????PP
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_163_inputconv2d_163/kernelconv2d_163/biasconv2d_164/kernelconv2d_164/biasconv2d_165/kernelconv2d_165/biasconv2d_166/kernelconv2d_166/biasdense_47/kerneldense_47/bias*
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
$__inference_signature_wrapper_686264
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_163/kernel/Read/ReadVariableOp#conv2d_163/bias/Read/ReadVariableOp%conv2d_164/kernel/Read/ReadVariableOp#conv2d_164/bias/Read/ReadVariableOp%conv2d_165/kernel/Read/ReadVariableOp#conv2d_165/bias/Read/ReadVariableOp%conv2d_166/kernel/Read/ReadVariableOp#conv2d_166/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_163/kernel/m/Read/ReadVariableOp*Adam/conv2d_163/bias/m/Read/ReadVariableOp,Adam/conv2d_164/kernel/m/Read/ReadVariableOp*Adam/conv2d_164/bias/m/Read/ReadVariableOp,Adam/conv2d_165/kernel/m/Read/ReadVariableOp*Adam/conv2d_165/bias/m/Read/ReadVariableOp,Adam/conv2d_166/kernel/m/Read/ReadVariableOp*Adam/conv2d_166/bias/m/Read/ReadVariableOp*Adam/dense_47/kernel/m/Read/ReadVariableOp(Adam/dense_47/bias/m/Read/ReadVariableOp,Adam/conv2d_163/kernel/v/Read/ReadVariableOp*Adam/conv2d_163/bias/v/Read/ReadVariableOp,Adam/conv2d_164/kernel/v/Read/ReadVariableOp*Adam/conv2d_164/bias/v/Read/ReadVariableOp,Adam/conv2d_165/kernel/v/Read/ReadVariableOp*Adam/conv2d_165/bias/v/Read/ReadVariableOp,Adam/conv2d_166/kernel/v/Read/ReadVariableOp*Adam/conv2d_166/bias/v/Read/ReadVariableOp*Adam/dense_47/kernel/v/Read/ReadVariableOp(Adam/dense_47/bias/v/Read/ReadVariableOpConst*4
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
__inference__traced_save_686875
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_163/kernelconv2d_163/biasconv2d_164/kernelconv2d_164/biasconv2d_165/kernelconv2d_165/biasconv2d_166/kernelconv2d_166/biasdense_47/kerneldense_47/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_163/kernel/mAdam/conv2d_163/bias/mAdam/conv2d_164/kernel/mAdam/conv2d_164/bias/mAdam/conv2d_165/kernel/mAdam/conv2d_165/bias/mAdam/conv2d_166/kernel/mAdam/conv2d_166/bias/mAdam/dense_47/kernel/mAdam/dense_47/bias/mAdam/conv2d_163/kernel/vAdam/conv2d_163/bias/vAdam/conv2d_164/kernel/vAdam/conv2d_164/bias/vAdam/conv2d_165/kernel/vAdam/conv2d_165/bias/vAdam/conv2d_166/kernel/vAdam/conv2d_166/bias/vAdam/dense_47/kernel/vAdam/dense_47/bias/v*3
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
"__inference__traced_restore_687002??	
?

f
G__inference_dropout_165_layer_call_and_return_conditional_losses_685933

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
 *???>?
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

f
G__inference_dropout_165_layer_call_and_return_conditional_losses_686638

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
 *???>?
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
?
f
J__inference_activation_163_layer_call_and_return_conditional_losses_685706

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
?J
?

!__inference__wrapped_model_685630
conv2d_163_inputQ
7sequential_47_conv2d_163_conv2d_readvariableop_resource:0F
8sequential_47_conv2d_163_biasadd_readvariableop_resource:0Q
7sequential_47_conv2d_164_conv2d_readvariableop_resource:00F
8sequential_47_conv2d_164_biasadd_readvariableop_resource:0Q
7sequential_47_conv2d_165_conv2d_readvariableop_resource:00F
8sequential_47_conv2d_165_biasadd_readvariableop_resource:0Q
7sequential_47_conv2d_166_conv2d_readvariableop_resource:00F
8sequential_47_conv2d_166_biasadd_readvariableop_resource:0H
5sequential_47_dense_47_matmul_readvariableop_resource:	?D
6sequential_47_dense_47_biasadd_readvariableop_resource:
identity??/sequential_47/conv2d_163/BiasAdd/ReadVariableOp?.sequential_47/conv2d_163/Conv2D/ReadVariableOp?/sequential_47/conv2d_164/BiasAdd/ReadVariableOp?.sequential_47/conv2d_164/Conv2D/ReadVariableOp?/sequential_47/conv2d_165/BiasAdd/ReadVariableOp?.sequential_47/conv2d_165/Conv2D/ReadVariableOp?/sequential_47/conv2d_166/BiasAdd/ReadVariableOp?.sequential_47/conv2d_166/Conv2D/ReadVariableOp?-sequential_47/dense_47/BiasAdd/ReadVariableOp?,sequential_47/dense_47/MatMul/ReadVariableOp?
.sequential_47/conv2d_163/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
sequential_47/conv2d_163/Conv2DConv2Dconv2d_163_input6sequential_47/conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
/sequential_47/conv2d_163/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_163_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_47/conv2d_163/BiasAddBiasAdd(sequential_47/conv2d_163/Conv2D:output:07sequential_47/conv2d_163/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0?
!sequential_47/activation_163/ReluRelu)sequential_47/conv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
'sequential_47/max_pooling2d_163/MaxPoolMaxPool/sequential_47/activation_163/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
?
"sequential_47/dropout_163/IdentityIdentity0sequential_47/max_pooling2d_163/MaxPool:output:0*
T0*/
_output_shapes
:?????????''0?
.sequential_47/conv2d_164/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_47/conv2d_164/Conv2DConv2D+sequential_47/dropout_163/Identity:output:06sequential_47/conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
/sequential_47/conv2d_164/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_164_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_47/conv2d_164/BiasAddBiasAdd(sequential_47/conv2d_164/Conv2D:output:07sequential_47/conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0?
!sequential_47/activation_164/ReluRelu)sequential_47/conv2d_164/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
'sequential_47/max_pooling2d_164/MaxPoolMaxPool/sequential_47/activation_164/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_47/dropout_164/IdentityIdentity0sequential_47/max_pooling2d_164/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
.sequential_47/conv2d_165/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_47/conv2d_165/Conv2DConv2D+sequential_47/dropout_164/Identity:output:06sequential_47/conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
/sequential_47/conv2d_165/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_165_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_47/conv2d_165/BiasAddBiasAdd(sequential_47/conv2d_165/Conv2D:output:07sequential_47/conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0?
!sequential_47/activation_165/ReluRelu)sequential_47/conv2d_165/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
'sequential_47/max_pooling2d_165/MaxPoolMaxPool/sequential_47/activation_165/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_47/dropout_165/IdentityIdentity0sequential_47/max_pooling2d_165/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
.sequential_47/conv2d_166/Conv2D/ReadVariableOpReadVariableOp7sequential_47_conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
sequential_47/conv2d_166/Conv2DConv2D+sequential_47/dropout_165/Identity:output:06sequential_47/conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
/sequential_47/conv2d_166/BiasAdd/ReadVariableOpReadVariableOp8sequential_47_conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
 sequential_47/conv2d_166/BiasAddBiasAdd(sequential_47/conv2d_166/Conv2D:output:07sequential_47/conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0?
!sequential_47/activation_166/ReluRelu)sequential_47/conv2d_166/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
'sequential_47/max_pooling2d_166/MaxPoolMaxPool/sequential_47/activation_166/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
?
"sequential_47/dropout_166/IdentityIdentity0sequential_47/max_pooling2d_166/MaxPool:output:0*
T0*/
_output_shapes
:?????????0o
sequential_47/flatten_47/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
 sequential_47/flatten_47/ReshapeReshape+sequential_47/dropout_166/Identity:output:0'sequential_47/flatten_47/Const:output:0*
T0*(
_output_shapes
:???????????
,sequential_47/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_47_dense_47_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_47/dense_47/MatMulMatMul)sequential_47/flatten_47/Reshape:output:04sequential_47/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_47/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_47_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_47/dense_47/BiasAddBiasAdd'sequential_47/dense_47/MatMul:product:05sequential_47/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_47/dense_47/SoftmaxSoftmax'sequential_47/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_47/dense_47/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_47/conv2d_163/BiasAdd/ReadVariableOp/^sequential_47/conv2d_163/Conv2D/ReadVariableOp0^sequential_47/conv2d_164/BiasAdd/ReadVariableOp/^sequential_47/conv2d_164/Conv2D/ReadVariableOp0^sequential_47/conv2d_165/BiasAdd/ReadVariableOp/^sequential_47/conv2d_165/Conv2D/ReadVariableOp0^sequential_47/conv2d_166/BiasAdd/ReadVariableOp/^sequential_47/conv2d_166/Conv2D/ReadVariableOp.^sequential_47/dense_47/BiasAdd/ReadVariableOp-^sequential_47/dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2b
/sequential_47/conv2d_163/BiasAdd/ReadVariableOp/sequential_47/conv2d_163/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_163/Conv2D/ReadVariableOp.sequential_47/conv2d_163/Conv2D/ReadVariableOp2b
/sequential_47/conv2d_164/BiasAdd/ReadVariableOp/sequential_47/conv2d_164/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_164/Conv2D/ReadVariableOp.sequential_47/conv2d_164/Conv2D/ReadVariableOp2b
/sequential_47/conv2d_165/BiasAdd/ReadVariableOp/sequential_47/conv2d_165/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_165/Conv2D/ReadVariableOp.sequential_47/conv2d_165/Conv2D/ReadVariableOp2b
/sequential_47/conv2d_166/BiasAdd/ReadVariableOp/sequential_47/conv2d_166/BiasAdd/ReadVariableOp2`
.sequential_47/conv2d_166/Conv2D/ReadVariableOp.sequential_47/conv2d_166/Conv2D/ReadVariableOp2^
-sequential_47/dense_47/BiasAdd/ReadVariableOp-sequential_47/dense_47/BiasAdd/ReadVariableOp2\
,sequential_47/dense_47/MatMul/ReadVariableOp,sequential_47/dense_47/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_163_input
?
f
J__inference_activation_165_layer_call_and_return_conditional_losses_686601

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
?
f
J__inference_activation_163_layer_call_and_return_conditional_losses_686469

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
J__inference_activation_164_layer_call_and_return_conditional_losses_686535

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

f
G__inference_dropout_163_layer_call_and_return_conditional_losses_686011

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
?
?
+__inference_conv2d_164_layer_call_fn_686515

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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_685726w
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
?
?
+__inference_conv2d_166_layer_call_fn_686647

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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_685788w
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
?
i
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_685663

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
K
/__inference_activation_165_layer_call_fn_686596

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
J__inference_activation_165_layer_call_and_return_conditional_losses_685768h
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
?
e
G__inference_dropout_165_layer_call_and_return_conditional_losses_685776

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
H
,__inference_dropout_164_layer_call_fn_686550

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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685745h
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
?
e
G__inference_dropout_163_layer_call_and_return_conditional_losses_686494

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
.__inference_sequential_47_layer_call_fn_686289

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
I__inference_sequential_47_layer_call_and_return_conditional_losses_685835o
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
D__inference_dense_47_layer_call_and_return_conditional_losses_686735

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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_686611

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
e
G__inference_dropout_163_layer_call_and_return_conditional_losses_685714

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
?
b
F__inference_flatten_47_layer_call_and_return_conditional_losses_685815

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

f
G__inference_dropout_163_layer_call_and_return_conditional_losses_686506

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
?
H
,__inference_dropout_165_layer_call_fn_686616

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
G__inference_dropout_165_layer_call_and_return_conditional_losses_685776h
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
?I
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686099

inputs+
conv2d_163_686060:0
conv2d_163_686062:0+
conv2d_164_686068:00
conv2d_164_686070:0+
conv2d_165_686076:00
conv2d_165_686078:0+
conv2d_166_686084:00
conv2d_166_686086:0"
dense_47_686093:	?
dense_47_686095:
identity??"conv2d_163/StatefulPartitionedCall?"conv2d_164/StatefulPartitionedCall?"conv2d_165/StatefulPartitionedCall?"conv2d_166/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?#dropout_163/StatefulPartitionedCall?#dropout_164/StatefulPartitionedCall?#dropout_165/StatefulPartitionedCall?#dropout_166/StatefulPartitionedCall?
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_163_686060conv2d_163_686062*
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_685695?
activation_163/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
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
J__inference_activation_163_layer_call_and_return_conditional_losses_685706?
!max_pooling2d_163/PartitionedCallPartitionedCall'activation_163/PartitionedCall:output:0*
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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_685639?
#dropout_163/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_163/PartitionedCall:output:0*
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_686011?
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall,dropout_163/StatefulPartitionedCall:output:0conv2d_164_686068conv2d_164_686070*
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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_685726?
activation_164/PartitionedCallPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0*
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
J__inference_activation_164_layer_call_and_return_conditional_losses_685737?
!max_pooling2d_164/PartitionedCallPartitionedCall'activation_164/PartitionedCall:output:0*
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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_685651?
#dropout_164/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_164/PartitionedCall:output:0$^dropout_163/StatefulPartitionedCall*
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685972?
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall,dropout_164/StatefulPartitionedCall:output:0conv2d_165_686076conv2d_165_686078*
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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_685757?
activation_165/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
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
J__inference_activation_165_layer_call_and_return_conditional_losses_685768?
!max_pooling2d_165/PartitionedCallPartitionedCall'activation_165/PartitionedCall:output:0*
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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_685663?
#dropout_165/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_165/PartitionedCall:output:0$^dropout_164/StatefulPartitionedCall*
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_685933?
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall,dropout_165/StatefulPartitionedCall:output:0conv2d_166_686084conv2d_166_686086*
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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_685788?
activation_166/PartitionedCallPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0*
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
J__inference_activation_166_layer_call_and_return_conditional_losses_685799?
!max_pooling2d_166/PartitionedCallPartitionedCall'activation_166/PartitionedCall:output:0*
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_685675?
#dropout_166/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_166/PartitionedCall:output:0$^dropout_165/StatefulPartitionedCall*
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_685894?
flatten_47/PartitionedCallPartitionedCall,dropout_166/StatefulPartitionedCall:output:0*
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_685815?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_47_686093dense_47_686095*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_685828x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall$^dropout_163/StatefulPartitionedCall$^dropout_164/StatefulPartitionedCall$^dropout_165/StatefulPartitionedCall$^dropout_166/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2J
#dropout_163/StatefulPartitionedCall#dropout_163/StatefulPartitionedCall2J
#dropout_164/StatefulPartitionedCall#dropout_164/StatefulPartitionedCall2J
#dropout_165/StatefulPartitionedCall#dropout_165/StatefulPartitionedCall2J
#dropout_166/StatefulPartitionedCall#dropout_166/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_687002
file_prefix<
"assignvariableop_conv2d_163_kernel:00
"assignvariableop_1_conv2d_163_bias:0>
$assignvariableop_2_conv2d_164_kernel:000
"assignvariableop_3_conv2d_164_bias:0>
$assignvariableop_4_conv2d_165_kernel:000
"assignvariableop_5_conv2d_165_bias:0>
$assignvariableop_6_conv2d_166_kernel:000
"assignvariableop_7_conv2d_166_bias:05
"assignvariableop_8_dense_47_kernel:	?.
 assignvariableop_9_dense_47_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: F
,assignvariableop_19_adam_conv2d_163_kernel_m:08
*assignvariableop_20_adam_conv2d_163_bias_m:0F
,assignvariableop_21_adam_conv2d_164_kernel_m:008
*assignvariableop_22_adam_conv2d_164_bias_m:0F
,assignvariableop_23_adam_conv2d_165_kernel_m:008
*assignvariableop_24_adam_conv2d_165_bias_m:0F
,assignvariableop_25_adam_conv2d_166_kernel_m:008
*assignvariableop_26_adam_conv2d_166_bias_m:0=
*assignvariableop_27_adam_dense_47_kernel_m:	?6
(assignvariableop_28_adam_dense_47_bias_m:F
,assignvariableop_29_adam_conv2d_163_kernel_v:08
*assignvariableop_30_adam_conv2d_163_bias_v:0F
,assignvariableop_31_adam_conv2d_164_kernel_v:008
*assignvariableop_32_adam_conv2d_164_bias_v:0F
,assignvariableop_33_adam_conv2d_165_kernel_v:008
*assignvariableop_34_adam_conv2d_165_bias_v:0F
,assignvariableop_35_adam_conv2d_166_kernel_v:008
*assignvariableop_36_adam_conv2d_166_bias_v:0=
*assignvariableop_37_adam_dense_47_kernel_v:	?6
(assignvariableop_38_adam_dense_47_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_163_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_163_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_164_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_164_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_165_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_165_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_166_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_166_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_47_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_47_biasIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_163_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_163_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_164_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_164_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_165_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_165_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_166_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_166_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_47_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_47_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_163_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_163_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_164_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_164_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_165_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_165_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_166_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_166_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_47_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_47_bias_vIdentity_38:output:0"/device:CPU:0*
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
?
K
/__inference_activation_163_layer_call_fn_686464

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
J__inference_activation_163_layer_call_and_return_conditional_losses_685706h
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
?B
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_685835

inputs+
conv2d_163_685696:0
conv2d_163_685698:0+
conv2d_164_685727:00
conv2d_164_685729:0+
conv2d_165_685758:00
conv2d_165_685760:0+
conv2d_166_685789:00
conv2d_166_685791:0"
dense_47_685829:	?
dense_47_685831:
identity??"conv2d_163/StatefulPartitionedCall?"conv2d_164/StatefulPartitionedCall?"conv2d_165/StatefulPartitionedCall?"conv2d_166/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_163_685696conv2d_163_685698*
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_685695?
activation_163/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
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
J__inference_activation_163_layer_call_and_return_conditional_losses_685706?
!max_pooling2d_163/PartitionedCallPartitionedCall'activation_163/PartitionedCall:output:0*
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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_685639?
dropout_163/PartitionedCallPartitionedCall*max_pooling2d_163/PartitionedCall:output:0*
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_685714?
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall$dropout_163/PartitionedCall:output:0conv2d_164_685727conv2d_164_685729*
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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_685726?
activation_164/PartitionedCallPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0*
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
J__inference_activation_164_layer_call_and_return_conditional_losses_685737?
!max_pooling2d_164/PartitionedCallPartitionedCall'activation_164/PartitionedCall:output:0*
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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_685651?
dropout_164/PartitionedCallPartitionedCall*max_pooling2d_164/PartitionedCall:output:0*
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685745?
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall$dropout_164/PartitionedCall:output:0conv2d_165_685758conv2d_165_685760*
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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_685757?
activation_165/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
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
J__inference_activation_165_layer_call_and_return_conditional_losses_685768?
!max_pooling2d_165/PartitionedCallPartitionedCall'activation_165/PartitionedCall:output:0*
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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_685663?
dropout_165/PartitionedCallPartitionedCall*max_pooling2d_165/PartitionedCall:output:0*
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_685776?
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall$dropout_165/PartitionedCall:output:0conv2d_166_685789conv2d_166_685791*
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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_685788?
activation_166/PartitionedCallPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0*
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
J__inference_activation_166_layer_call_and_return_conditional_losses_685799?
!max_pooling2d_166/PartitionedCallPartitionedCall'activation_166/PartitionedCall:output:0*
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_685675?
dropout_166/PartitionedCallPartitionedCall*max_pooling2d_166/PartitionedCall:output:0*
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_685807?
flatten_47/PartitionedCallPartitionedCall$dropout_166/PartitionedCall:output:0*
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_685815?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_47_685829dense_47_685831*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_685828x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
?
)__inference_dense_47_layer_call_fn_686724

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
D__inference_dense_47_layer_call_and_return_conditional_losses_685828o
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
?
e
G__inference_dropout_166_layer_call_and_return_conditional_losses_686692

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

?
.__inference_sequential_47_layer_call_fn_686147
conv2d_163_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_163_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686099o
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
_user_specified_nameconv2d_163_input
?
N
2__inference_max_pooling2d_164_layer_call_fn_686540

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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_685651?
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
N
2__inference_max_pooling2d_165_layer_call_fn_686606

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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_685663?
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
?<
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686363

inputsC
)conv2d_163_conv2d_readvariableop_resource:08
*conv2d_163_biasadd_readvariableop_resource:0C
)conv2d_164_conv2d_readvariableop_resource:008
*conv2d_164_biasadd_readvariableop_resource:0C
)conv2d_165_conv2d_readvariableop_resource:008
*conv2d_165_biasadd_readvariableop_resource:0C
)conv2d_166_conv2d_readvariableop_resource:008
*conv2d_166_biasadd_readvariableop_resource:0:
'dense_47_matmul_readvariableop_resource:	?6
(dense_47_biasadd_readvariableop_resource:
identity??!conv2d_163/BiasAdd/ReadVariableOp? conv2d_163/Conv2D/ReadVariableOp?!conv2d_164/BiasAdd/ReadVariableOp? conv2d_164/Conv2D/ReadVariableOp?!conv2d_165/BiasAdd/ReadVariableOp? conv2d_165/Conv2D/ReadVariableOp?!conv2d_166/BiasAdd/ReadVariableOp? conv2d_166/Conv2D/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?
 conv2d_163/Conv2D/ReadVariableOpReadVariableOp)conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
conv2d_163/Conv2DConv2Dinputs(conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
!conv2d_163/BiasAdd/ReadVariableOpReadVariableOp*conv2d_163_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_163/BiasAddBiasAddconv2d_163/Conv2D:output:0)conv2d_163/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0r
activation_163/ReluReluconv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
max_pooling2d_163/MaxPoolMaxPool!activation_163/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
~
dropout_163/IdentityIdentity"max_pooling2d_163/MaxPool:output:0*
T0*/
_output_shapes
:?????????''0?
 conv2d_164/Conv2D/ReadVariableOpReadVariableOp)conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_164/Conv2DConv2Ddropout_163/Identity:output:0(conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
!conv2d_164/BiasAdd/ReadVariableOpReadVariableOp*conv2d_164_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_164/BiasAddBiasAddconv2d_164/Conv2D:output:0)conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0r
activation_164/ReluReluconv2d_164/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
max_pooling2d_164/MaxPoolMaxPool!activation_164/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_164/IdentityIdentity"max_pooling2d_164/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
 conv2d_165/Conv2D/ReadVariableOpReadVariableOp)conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_165/Conv2DConv2Ddropout_164/Identity:output:0(conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_165/BiasAdd/ReadVariableOpReadVariableOp*conv2d_165_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_165/BiasAddBiasAddconv2d_165/Conv2D:output:0)conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_165/ReluReluconv2d_165/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_165/MaxPoolMaxPool!activation_165/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_165/IdentityIdentity"max_pooling2d_165/MaxPool:output:0*
T0*/
_output_shapes
:?????????0?
 conv2d_166/Conv2D/ReadVariableOpReadVariableOp)conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_166/Conv2DConv2Ddropout_165/Identity:output:0(conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_166/BiasAdd/ReadVariableOpReadVariableOp*conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_166/BiasAddBiasAddconv2d_166/Conv2D:output:0)conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_166/ReluReluconv2d_166/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_166/MaxPoolMaxPool!activation_166/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
~
dropout_166/IdentityIdentity"max_pooling2d_166/MaxPool:output:0*
T0*/
_output_shapes
:?????????0a
flatten_47/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_47/ReshapeReshapedropout_166/Identity:output:0flatten_47/Const:output:0*
T0*(
_output_shapes
:???????????
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_47/MatMulMatMulflatten_47/Reshape:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_47/SoftmaxSoftmaxdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_47/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_163/BiasAdd/ReadVariableOp!^conv2d_163/Conv2D/ReadVariableOp"^conv2d_164/BiasAdd/ReadVariableOp!^conv2d_164/Conv2D/ReadVariableOp"^conv2d_165/BiasAdd/ReadVariableOp!^conv2d_165/Conv2D/ReadVariableOp"^conv2d_166/BiasAdd/ReadVariableOp!^conv2d_166/Conv2D/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_163/BiasAdd/ReadVariableOp!conv2d_163/BiasAdd/ReadVariableOp2D
 conv2d_163/Conv2D/ReadVariableOp conv2d_163/Conv2D/ReadVariableOp2F
!conv2d_164/BiasAdd/ReadVariableOp!conv2d_164/BiasAdd/ReadVariableOp2D
 conv2d_164/Conv2D/ReadVariableOp conv2d_164/Conv2D/ReadVariableOp2F
!conv2d_165/BiasAdd/ReadVariableOp!conv2d_165/BiasAdd/ReadVariableOp2D
 conv2d_165/Conv2D/ReadVariableOp conv2d_165/Conv2D/ReadVariableOp2F
!conv2d_166/BiasAdd/ReadVariableOp!conv2d_166/BiasAdd/ReadVariableOp2D
 conv2d_166/Conv2D/ReadVariableOp conv2d_166/Conv2D/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?

?
.__inference_sequential_47_layer_call_fn_685858
conv2d_163_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_163_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_685835o
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
_user_specified_nameconv2d_163_input
?
e
,__inference_dropout_164_layer_call_fn_686555

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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685972w
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

?
F__inference_conv2d_165_layer_call_and_return_conditional_losses_686591

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
H
,__inference_dropout_166_layer_call_fn_686682

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
G__inference_dropout_166_layer_call_and_return_conditional_losses_685807h
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
?

f
G__inference_dropout_164_layer_call_and_return_conditional_losses_686572

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
?
N
2__inference_max_pooling2d_163_layer_call_fn_686474

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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_685639?
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_686560

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
f
J__inference_activation_164_layer_call_and_return_conditional_losses_685737

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
?
f
J__inference_activation_166_layer_call_and_return_conditional_losses_686667

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
K
/__inference_activation_164_layer_call_fn_686530

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
J__inference_activation_164_layer_call_and_return_conditional_losses_685737h
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
?
K
/__inference_activation_166_layer_call_fn_686662

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
J__inference_activation_166_layer_call_and_return_conditional_losses_685799h
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
?
G
+__inference_flatten_47_layer_call_fn_686709

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
F__inference_flatten_47_layer_call_and_return_conditional_losses_685815a
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
?
?
+__inference_conv2d_165_layer_call_fn_686581

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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_685757w
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
?

?
F__inference_conv2d_164_layer_call_and_return_conditional_losses_686525

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
?
f
J__inference_activation_166_layer_call_and_return_conditional_losses_685799

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
?
N
2__inference_max_pooling2d_166_layer_call_fn_686672

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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_685675?
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
?
b
F__inference_flatten_47_layer_call_and_return_conditional_losses_686715

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
D__inference_dense_47_layer_call_and_return_conditional_losses_685828

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
?

?
.__inference_sequential_47_layer_call_fn_686314

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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686099o
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
?
i
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_685639

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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_685651

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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685972

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

?
F__inference_conv2d_166_layer_call_and_return_conditional_losses_685788

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
i
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_686545

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
,__inference_dropout_165_layer_call_fn_686621

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
G__inference_dropout_165_layer_call_and_return_conditional_losses_685933w
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
?
i
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_686677

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
e
G__inference_dropout_164_layer_call_and_return_conditional_losses_685745

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
H
,__inference_dropout_163_layer_call_fn_686484

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
G__inference_dropout_163_layer_call_and_return_conditional_losses_685714h
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

?
F__inference_conv2d_165_layer_call_and_return_conditional_losses_685757

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
?

?
F__inference_conv2d_166_layer_call_and_return_conditional_losses_686657

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
?

?
$__inference_signature_wrapper_686264
conv2d_163_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_163_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
!__inference__wrapped_model_685630o
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
_user_specified_nameconv2d_163_input
?]
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686440

inputsC
)conv2d_163_conv2d_readvariableop_resource:08
*conv2d_163_biasadd_readvariableop_resource:0C
)conv2d_164_conv2d_readvariableop_resource:008
*conv2d_164_biasadd_readvariableop_resource:0C
)conv2d_165_conv2d_readvariableop_resource:008
*conv2d_165_biasadd_readvariableop_resource:0C
)conv2d_166_conv2d_readvariableop_resource:008
*conv2d_166_biasadd_readvariableop_resource:0:
'dense_47_matmul_readvariableop_resource:	?6
(dense_47_biasadd_readvariableop_resource:
identity??!conv2d_163/BiasAdd/ReadVariableOp? conv2d_163/Conv2D/ReadVariableOp?!conv2d_164/BiasAdd/ReadVariableOp? conv2d_164/Conv2D/ReadVariableOp?!conv2d_165/BiasAdd/ReadVariableOp? conv2d_165/Conv2D/ReadVariableOp?!conv2d_166/BiasAdd/ReadVariableOp? conv2d_166/Conv2D/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?
 conv2d_163/Conv2D/ReadVariableOpReadVariableOp)conv2d_163_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0?
conv2d_163/Conv2DConv2Dinputs(conv2d_163/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0*
paddingVALID*
strides
?
!conv2d_163/BiasAdd/ReadVariableOpReadVariableOp*conv2d_163_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_163/BiasAddBiasAddconv2d_163/Conv2D:output:0)conv2d_163/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????NN0r
activation_163/ReluReluconv2d_163/BiasAdd:output:0*
T0*/
_output_shapes
:?????????NN0?
max_pooling2d_163/MaxPoolMaxPool!activation_163/Relu:activations:0*/
_output_shapes
:?????????''0*
ksize
*
paddingVALID*
strides
^
dropout_163/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_163/dropout/MulMul"max_pooling2d_163/MaxPool:output:0"dropout_163/dropout/Const:output:0*
T0*/
_output_shapes
:?????????''0k
dropout_163/dropout/ShapeShape"max_pooling2d_163/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_163/dropout/random_uniform/RandomUniformRandomUniform"dropout_163/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????''0*
dtype0*

seedg
"dropout_163/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
 dropout_163/dropout/GreaterEqualGreaterEqual9dropout_163/dropout/random_uniform/RandomUniform:output:0+dropout_163/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????''0?
dropout_163/dropout/CastCast$dropout_163/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????''0?
dropout_163/dropout/Mul_1Muldropout_163/dropout/Mul:z:0dropout_163/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????''0?
 conv2d_164/Conv2D/ReadVariableOpReadVariableOp)conv2d_164_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_164/Conv2DConv2Ddropout_163/dropout/Mul_1:z:0(conv2d_164/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0*
paddingVALID*
strides
?
!conv2d_164/BiasAdd/ReadVariableOpReadVariableOp*conv2d_164_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_164/BiasAddBiasAddconv2d_164/Conv2D:output:0)conv2d_164/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%%0r
activation_164/ReluReluconv2d_164/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%%0?
max_pooling2d_164/MaxPoolMaxPool!activation_164/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_164/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_164/dropout/MulMul"max_pooling2d_164/MaxPool:output:0"dropout_164/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_164/dropout/ShapeShape"max_pooling2d_164/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_164/dropout/random_uniform/RandomUniformRandomUniform"dropout_164/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_164/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
 dropout_164/dropout/GreaterEqualGreaterEqual9dropout_164/dropout/random_uniform/RandomUniform:output:0+dropout_164/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_164/dropout/CastCast$dropout_164/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_164/dropout/Mul_1Muldropout_164/dropout/Mul:z:0dropout_164/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0?
 conv2d_165/Conv2D/ReadVariableOpReadVariableOp)conv2d_165_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_165/Conv2DConv2Ddropout_164/dropout/Mul_1:z:0(conv2d_165/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_165/BiasAdd/ReadVariableOpReadVariableOp*conv2d_165_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_165/BiasAddBiasAddconv2d_165/Conv2D:output:0)conv2d_165/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_165/ReluReluconv2d_165/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_165/MaxPoolMaxPool!activation_165/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_165/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_165/dropout/MulMul"max_pooling2d_165/MaxPool:output:0"dropout_165/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_165/dropout/ShapeShape"max_pooling2d_165/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_165/dropout/random_uniform/RandomUniformRandomUniform"dropout_165/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_165/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
 dropout_165/dropout/GreaterEqualGreaterEqual9dropout_165/dropout/random_uniform/RandomUniform:output:0+dropout_165/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_165/dropout/CastCast$dropout_165/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_165/dropout/Mul_1Muldropout_165/dropout/Mul:z:0dropout_165/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0?
 conv2d_166/Conv2D/ReadVariableOpReadVariableOp)conv2d_166_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0?
conv2d_166/Conv2DConv2Ddropout_165/dropout/Mul_1:z:0(conv2d_166/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
?
!conv2d_166/BiasAdd/ReadVariableOpReadVariableOp*conv2d_166_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
conv2d_166/BiasAddBiasAddconv2d_166/Conv2D:output:0)conv2d_166/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0r
activation_166/ReluReluconv2d_166/BiasAdd:output:0*
T0*/
_output_shapes
:?????????0?
max_pooling2d_166/MaxPoolMaxPool!activation_166/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
^
dropout_166/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_166/dropout/MulMul"max_pooling2d_166/MaxPool:output:0"dropout_166/dropout/Const:output:0*
T0*/
_output_shapes
:?????????0k
dropout_166/dropout/ShapeShape"max_pooling2d_166/MaxPool:output:0*
T0*
_output_shapes
:?
0dropout_166/dropout/random_uniform/RandomUniformRandomUniform"dropout_166/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype0*

seed*
seed2g
"dropout_166/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
 dropout_166/dropout/GreaterEqualGreaterEqual9dropout_166/dropout/random_uniform/RandomUniform:output:0+dropout_166/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????0?
dropout_166/dropout/CastCast$dropout_166/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????0?
dropout_166/dropout/Mul_1Muldropout_166/dropout/Mul:z:0dropout_166/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????0a
flatten_47/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_47/ReshapeReshapedropout_166/dropout/Mul_1:z:0flatten_47/Const:output:0*
T0*(
_output_shapes
:???????????
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_47/MatMulMatMulflatten_47/Reshape:output:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_47/SoftmaxSoftmaxdense_47/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_47/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_163/BiasAdd/ReadVariableOp!^conv2d_163/Conv2D/ReadVariableOp"^conv2d_164/BiasAdd/ReadVariableOp!^conv2d_164/Conv2D/ReadVariableOp"^conv2d_165/BiasAdd/ReadVariableOp!^conv2d_165/Conv2D/ReadVariableOp"^conv2d_166/BiasAdd/ReadVariableOp!^conv2d_166/Conv2D/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2F
!conv2d_163/BiasAdd/ReadVariableOp!conv2d_163/BiasAdd/ReadVariableOp2D
 conv2d_163/Conv2D/ReadVariableOp conv2d_163/Conv2D/ReadVariableOp2F
!conv2d_164/BiasAdd/ReadVariableOp!conv2d_164/BiasAdd/ReadVariableOp2D
 conv2d_164/Conv2D/ReadVariableOp conv2d_164/Conv2D/ReadVariableOp2F
!conv2d_165/BiasAdd/ReadVariableOp!conv2d_165/BiasAdd/ReadVariableOp2D
 conv2d_165/Conv2D/ReadVariableOp conv2d_165/Conv2D/ReadVariableOp2F
!conv2d_166/BiasAdd/ReadVariableOp!conv2d_166/BiasAdd/ReadVariableOp2D
 conv2d_166/Conv2D/ReadVariableOp conv2d_166/Conv2D/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????PP
 
_user_specified_nameinputs
?
e
G__inference_dropout_165_layer_call_and_return_conditional_losses_686626

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
?
e
,__inference_dropout_166_layer_call_fn_686687

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
G__inference_dropout_166_layer_call_and_return_conditional_losses_685894w
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

f
G__inference_dropout_166_layer_call_and_return_conditional_losses_685894

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
 *???>?
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_685675

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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_685726

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

f
G__inference_dropout_166_layer_call_and_return_conditional_losses_686704

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
 *???>?
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
?
e
G__inference_dropout_166_layer_call_and_return_conditional_losses_685807

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

?
F__inference_conv2d_163_layer_call_and_return_conditional_losses_685695

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
?
?
+__inference_conv2d_163_layer_call_fn_686449

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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_685695w
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_686459

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
J__inference_activation_165_layer_call_and_return_conditional_losses_685768

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
?I
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686231
conv2d_163_input+
conv2d_163_686192:0
conv2d_163_686194:0+
conv2d_164_686200:00
conv2d_164_686202:0+
conv2d_165_686208:00
conv2d_165_686210:0+
conv2d_166_686216:00
conv2d_166_686218:0"
dense_47_686225:	?
dense_47_686227:
identity??"conv2d_163/StatefulPartitionedCall?"conv2d_164/StatefulPartitionedCall?"conv2d_165/StatefulPartitionedCall?"conv2d_166/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?#dropout_163/StatefulPartitionedCall?#dropout_164/StatefulPartitionedCall?#dropout_165/StatefulPartitionedCall?#dropout_166/StatefulPartitionedCall?
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCallconv2d_163_inputconv2d_163_686192conv2d_163_686194*
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_685695?
activation_163/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
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
J__inference_activation_163_layer_call_and_return_conditional_losses_685706?
!max_pooling2d_163/PartitionedCallPartitionedCall'activation_163/PartitionedCall:output:0*
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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_685639?
#dropout_163/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_163/PartitionedCall:output:0*
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_686011?
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall,dropout_163/StatefulPartitionedCall:output:0conv2d_164_686200conv2d_164_686202*
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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_685726?
activation_164/PartitionedCallPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0*
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
J__inference_activation_164_layer_call_and_return_conditional_losses_685737?
!max_pooling2d_164/PartitionedCallPartitionedCall'activation_164/PartitionedCall:output:0*
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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_685651?
#dropout_164/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_164/PartitionedCall:output:0$^dropout_163/StatefulPartitionedCall*
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685972?
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall,dropout_164/StatefulPartitionedCall:output:0conv2d_165_686208conv2d_165_686210*
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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_685757?
activation_165/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
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
J__inference_activation_165_layer_call_and_return_conditional_losses_685768?
!max_pooling2d_165/PartitionedCallPartitionedCall'activation_165/PartitionedCall:output:0*
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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_685663?
#dropout_165/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_165/PartitionedCall:output:0$^dropout_164/StatefulPartitionedCall*
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_685933?
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall,dropout_165/StatefulPartitionedCall:output:0conv2d_166_686216conv2d_166_686218*
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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_685788?
activation_166/PartitionedCallPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0*
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
J__inference_activation_166_layer_call_and_return_conditional_losses_685799?
!max_pooling2d_166/PartitionedCallPartitionedCall'activation_166/PartitionedCall:output:0*
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_685675?
#dropout_166/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_166/PartitionedCall:output:0$^dropout_165/StatefulPartitionedCall*
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_685894?
flatten_47/PartitionedCallPartitionedCall,dropout_166/StatefulPartitionedCall:output:0*
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_685815?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_47_686225dense_47_686227*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_685828x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall$^dropout_163/StatefulPartitionedCall$^dropout_164/StatefulPartitionedCall$^dropout_165/StatefulPartitionedCall$^dropout_166/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2J
#dropout_163/StatefulPartitionedCall#dropout_163/StatefulPartitionedCall2J
#dropout_164/StatefulPartitionedCall#dropout_164/StatefulPartitionedCall2J
#dropout_165/StatefulPartitionedCall#dropout_165/StatefulPartitionedCall2J
#dropout_166/StatefulPartitionedCall#dropout_166/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_163_input
?
e
,__inference_dropout_163_layer_call_fn_686489

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
G__inference_dropout_163_layer_call_and_return_conditional_losses_686011w
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
i
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_686479

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
__inference__traced_save_686875
file_prefix0
,savev2_conv2d_163_kernel_read_readvariableop.
*savev2_conv2d_163_bias_read_readvariableop0
,savev2_conv2d_164_kernel_read_readvariableop.
*savev2_conv2d_164_bias_read_readvariableop0
,savev2_conv2d_165_kernel_read_readvariableop.
*savev2_conv2d_165_bias_read_readvariableop0
,savev2_conv2d_166_kernel_read_readvariableop.
*savev2_conv2d_166_bias_read_readvariableop.
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
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_163_kernel_m_read_readvariableop5
1savev2_adam_conv2d_163_bias_m_read_readvariableop7
3savev2_adam_conv2d_164_kernel_m_read_readvariableop5
1savev2_adam_conv2d_164_bias_m_read_readvariableop7
3savev2_adam_conv2d_165_kernel_m_read_readvariableop5
1savev2_adam_conv2d_165_bias_m_read_readvariableop7
3savev2_adam_conv2d_166_kernel_m_read_readvariableop5
1savev2_adam_conv2d_166_bias_m_read_readvariableop5
1savev2_adam_dense_47_kernel_m_read_readvariableop3
/savev2_adam_dense_47_bias_m_read_readvariableop7
3savev2_adam_conv2d_163_kernel_v_read_readvariableop5
1savev2_adam_conv2d_163_bias_v_read_readvariableop7
3savev2_adam_conv2d_164_kernel_v_read_readvariableop5
1savev2_adam_conv2d_164_bias_v_read_readvariableop7
3savev2_adam_conv2d_165_kernel_v_read_readvariableop5
1savev2_adam_conv2d_165_bias_v_read_readvariableop7
3savev2_adam_conv2d_166_kernel_v_read_readvariableop5
1savev2_adam_conv2d_166_bias_v_read_readvariableop5
1savev2_adam_dense_47_kernel_v_read_readvariableop3
/savev2_adam_dense_47_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_163_kernel_read_readvariableop*savev2_conv2d_163_bias_read_readvariableop,savev2_conv2d_164_kernel_read_readvariableop*savev2_conv2d_164_bias_read_readvariableop,savev2_conv2d_165_kernel_read_readvariableop*savev2_conv2d_165_bias_read_readvariableop,savev2_conv2d_166_kernel_read_readvariableop*savev2_conv2d_166_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_163_kernel_m_read_readvariableop1savev2_adam_conv2d_163_bias_m_read_readvariableop3savev2_adam_conv2d_164_kernel_m_read_readvariableop1savev2_adam_conv2d_164_bias_m_read_readvariableop3savev2_adam_conv2d_165_kernel_m_read_readvariableop1savev2_adam_conv2d_165_bias_m_read_readvariableop3savev2_adam_conv2d_166_kernel_m_read_readvariableop1savev2_adam_conv2d_166_bias_m_read_readvariableop1savev2_adam_dense_47_kernel_m_read_readvariableop/savev2_adam_dense_47_bias_m_read_readvariableop3savev2_adam_conv2d_163_kernel_v_read_readvariableop1savev2_adam_conv2d_163_bias_v_read_readvariableop3savev2_adam_conv2d_164_kernel_v_read_readvariableop1savev2_adam_conv2d_164_bias_v_read_readvariableop3savev2_adam_conv2d_165_kernel_v_read_readvariableop1savev2_adam_conv2d_165_bias_v_read_readvariableop3savev2_adam_conv2d_166_kernel_v_read_readvariableop1savev2_adam_conv2d_166_bias_v_read_readvariableop1savev2_adam_dense_47_kernel_v_read_readvariableop/savev2_adam_dense_47_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?B
?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686189
conv2d_163_input+
conv2d_163_686150:0
conv2d_163_686152:0+
conv2d_164_686158:00
conv2d_164_686160:0+
conv2d_165_686166:00
conv2d_165_686168:0+
conv2d_166_686174:00
conv2d_166_686176:0"
dense_47_686183:	?
dense_47_686185:
identity??"conv2d_163/StatefulPartitionedCall?"conv2d_164/StatefulPartitionedCall?"conv2d_165/StatefulPartitionedCall?"conv2d_166/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?
"conv2d_163/StatefulPartitionedCallStatefulPartitionedCallconv2d_163_inputconv2d_163_686150conv2d_163_686152*
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_685695?
activation_163/PartitionedCallPartitionedCall+conv2d_163/StatefulPartitionedCall:output:0*
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
J__inference_activation_163_layer_call_and_return_conditional_losses_685706?
!max_pooling2d_163/PartitionedCallPartitionedCall'activation_163/PartitionedCall:output:0*
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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_685639?
dropout_163/PartitionedCallPartitionedCall*max_pooling2d_163/PartitionedCall:output:0*
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_685714?
"conv2d_164/StatefulPartitionedCallStatefulPartitionedCall$dropout_163/PartitionedCall:output:0conv2d_164_686158conv2d_164_686160*
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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_685726?
activation_164/PartitionedCallPartitionedCall+conv2d_164/StatefulPartitionedCall:output:0*
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
J__inference_activation_164_layer_call_and_return_conditional_losses_685737?
!max_pooling2d_164/PartitionedCallPartitionedCall'activation_164/PartitionedCall:output:0*
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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_685651?
dropout_164/PartitionedCallPartitionedCall*max_pooling2d_164/PartitionedCall:output:0*
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_685745?
"conv2d_165/StatefulPartitionedCallStatefulPartitionedCall$dropout_164/PartitionedCall:output:0conv2d_165_686166conv2d_165_686168*
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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_685757?
activation_165/PartitionedCallPartitionedCall+conv2d_165/StatefulPartitionedCall:output:0*
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
J__inference_activation_165_layer_call_and_return_conditional_losses_685768?
!max_pooling2d_165/PartitionedCallPartitionedCall'activation_165/PartitionedCall:output:0*
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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_685663?
dropout_165/PartitionedCallPartitionedCall*max_pooling2d_165/PartitionedCall:output:0*
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_685776?
"conv2d_166/StatefulPartitionedCallStatefulPartitionedCall$dropout_165/PartitionedCall:output:0conv2d_166_686174conv2d_166_686176*
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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_685788?
activation_166/PartitionedCallPartitionedCall+conv2d_166/StatefulPartitionedCall:output:0*
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
J__inference_activation_166_layer_call_and_return_conditional_losses_685799?
!max_pooling2d_166/PartitionedCallPartitionedCall'activation_166/PartitionedCall:output:0*
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_685675?
dropout_166/PartitionedCallPartitionedCall*max_pooling2d_166/PartitionedCall:output:0*
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_685807?
flatten_47/PartitionedCallPartitionedCall$dropout_166/PartitionedCall:output:0*
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_685815?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall#flatten_47/PartitionedCall:output:0dense_47_686183dense_47_686185*
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
D__inference_dense_47_layer_call_and_return_conditional_losses_685828x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv2d_163/StatefulPartitionedCall#^conv2d_164/StatefulPartitionedCall#^conv2d_165/StatefulPartitionedCall#^conv2d_166/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????PP: : : : : : : : : : 2H
"conv2d_163/StatefulPartitionedCall"conv2d_163/StatefulPartitionedCall2H
"conv2d_164/StatefulPartitionedCall"conv2d_164/StatefulPartitionedCall2H
"conv2d_165/StatefulPartitionedCall"conv2d_165/StatefulPartitionedCall2H
"conv2d_166/StatefulPartitionedCall"conv2d_166/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????PP
*
_user_specified_nameconv2d_163_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_163_inputA
"serving_default_conv2d_163_input:0?????????PP<
dense_470
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
.__inference_sequential_47_layer_call_fn_685858
.__inference_sequential_47_layer_call_fn_686289
.__inference_sequential_47_layer_call_fn_686314
.__inference_sequential_47_layer_call_fn_686147?
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686363
I__inference_sequential_47_layer_call_and_return_conditional_losses_686440
I__inference_sequential_47_layer_call_and_return_conditional_losses_686189
I__inference_sequential_47_layer_call_and_return_conditional_losses_686231?
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
!__inference__wrapped_model_685630conv2d_163_input"?
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
+__inference_conv2d_163_layer_call_fn_686449?
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_686459?
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
+:)02conv2d_163/kernel
:02conv2d_163/bias
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
/__inference_activation_163_layer_call_fn_686464?
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
J__inference_activation_163_layer_call_and_return_conditional_losses_686469?
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
2__inference_max_pooling2d_163_layer_call_fn_686474?
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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_686479?
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
,__inference_dropout_163_layer_call_fn_686484
,__inference_dropout_163_layer_call_fn_686489?
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_686494
G__inference_dropout_163_layer_call_and_return_conditional_losses_686506?
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
+__inference_conv2d_164_layer_call_fn_686515?
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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_686525?
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
+:)002conv2d_164/kernel
:02conv2d_164/bias
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
/__inference_activation_164_layer_call_fn_686530?
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
J__inference_activation_164_layer_call_and_return_conditional_losses_686535?
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
2__inference_max_pooling2d_164_layer_call_fn_686540?
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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_686545?
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
,__inference_dropout_164_layer_call_fn_686550
,__inference_dropout_164_layer_call_fn_686555?
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_686560
G__inference_dropout_164_layer_call_and_return_conditional_losses_686572?
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
+__inference_conv2d_165_layer_call_fn_686581?
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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_686591?
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
+:)002conv2d_165/kernel
:02conv2d_165/bias
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
/__inference_activation_165_layer_call_fn_686596?
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
J__inference_activation_165_layer_call_and_return_conditional_losses_686601?
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
2__inference_max_pooling2d_165_layer_call_fn_686606?
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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_686611?
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
,__inference_dropout_165_layer_call_fn_686616
,__inference_dropout_165_layer_call_fn_686621?
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_686626
G__inference_dropout_165_layer_call_and_return_conditional_losses_686638?
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
+__inference_conv2d_166_layer_call_fn_686647?
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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_686657?
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
+:)002conv2d_166/kernel
:02conv2d_166/bias
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
/__inference_activation_166_layer_call_fn_686662?
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
J__inference_activation_166_layer_call_and_return_conditional_losses_686667?
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
2__inference_max_pooling2d_166_layer_call_fn_686672?
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_686677?
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
,__inference_dropout_166_layer_call_fn_686682
,__inference_dropout_166_layer_call_fn_686687?
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_686692
G__inference_dropout_166_layer_call_and_return_conditional_losses_686704?
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
+__inference_flatten_47_layer_call_fn_686709?
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_686715?
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
)__inference_dense_47_layer_call_fn_686724?
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
D__inference_dense_47_layer_call_and_return_conditional_losses_686735?
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
": 	?2dense_47/kernel
:2dense_47/bias
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
.__inference_sequential_47_layer_call_fn_685858conv2d_163_input"?
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
.__inference_sequential_47_layer_call_fn_686289inputs"?
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
.__inference_sequential_47_layer_call_fn_686314inputs"?
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
.__inference_sequential_47_layer_call_fn_686147conv2d_163_input"?
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686363inputs"?
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686440inputs"?
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686189conv2d_163_input"?
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686231conv2d_163_input"?
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
$__inference_signature_wrapper_686264conv2d_163_input"?
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
+__inference_conv2d_163_layer_call_fn_686449inputs"?
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
F__inference_conv2d_163_layer_call_and_return_conditional_losses_686459inputs"?
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
/__inference_activation_163_layer_call_fn_686464inputs"?
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
J__inference_activation_163_layer_call_and_return_conditional_losses_686469inputs"?
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
2__inference_max_pooling2d_163_layer_call_fn_686474inputs"?
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
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_686479inputs"?
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
,__inference_dropout_163_layer_call_fn_686484inputs"?
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
,__inference_dropout_163_layer_call_fn_686489inputs"?
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_686494inputs"?
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
G__inference_dropout_163_layer_call_and_return_conditional_losses_686506inputs"?
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
+__inference_conv2d_164_layer_call_fn_686515inputs"?
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
F__inference_conv2d_164_layer_call_and_return_conditional_losses_686525inputs"?
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
/__inference_activation_164_layer_call_fn_686530inputs"?
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
J__inference_activation_164_layer_call_and_return_conditional_losses_686535inputs"?
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
2__inference_max_pooling2d_164_layer_call_fn_686540inputs"?
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
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_686545inputs"?
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
,__inference_dropout_164_layer_call_fn_686550inputs"?
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
,__inference_dropout_164_layer_call_fn_686555inputs"?
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_686560inputs"?
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
G__inference_dropout_164_layer_call_and_return_conditional_losses_686572inputs"?
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
+__inference_conv2d_165_layer_call_fn_686581inputs"?
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
F__inference_conv2d_165_layer_call_and_return_conditional_losses_686591inputs"?
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
/__inference_activation_165_layer_call_fn_686596inputs"?
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
J__inference_activation_165_layer_call_and_return_conditional_losses_686601inputs"?
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
2__inference_max_pooling2d_165_layer_call_fn_686606inputs"?
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
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_686611inputs"?
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
,__inference_dropout_165_layer_call_fn_686616inputs"?
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
,__inference_dropout_165_layer_call_fn_686621inputs"?
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_686626inputs"?
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
G__inference_dropout_165_layer_call_and_return_conditional_losses_686638inputs"?
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
+__inference_conv2d_166_layer_call_fn_686647inputs"?
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
F__inference_conv2d_166_layer_call_and_return_conditional_losses_686657inputs"?
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
/__inference_activation_166_layer_call_fn_686662inputs"?
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
J__inference_activation_166_layer_call_and_return_conditional_losses_686667inputs"?
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
2__inference_max_pooling2d_166_layer_call_fn_686672inputs"?
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
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_686677inputs"?
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
,__inference_dropout_166_layer_call_fn_686682inputs"?
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
,__inference_dropout_166_layer_call_fn_686687inputs"?
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_686692inputs"?
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
G__inference_dropout_166_layer_call_and_return_conditional_losses_686704inputs"?
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
+__inference_flatten_47_layer_call_fn_686709inputs"?
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
F__inference_flatten_47_layer_call_and_return_conditional_losses_686715inputs"?
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
)__inference_dense_47_layer_call_fn_686724inputs"?
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
D__inference_dense_47_layer_call_and_return_conditional_losses_686735inputs"?
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
0:.02Adam/conv2d_163/kernel/m
": 02Adam/conv2d_163/bias/m
0:.002Adam/conv2d_164/kernel/m
": 02Adam/conv2d_164/bias/m
0:.002Adam/conv2d_165/kernel/m
": 02Adam/conv2d_165/bias/m
0:.002Adam/conv2d_166/kernel/m
": 02Adam/conv2d_166/bias/m
':%	?2Adam/dense_47/kernel/m
 :2Adam/dense_47/bias/m
0:.02Adam/conv2d_163/kernel/v
": 02Adam/conv2d_163/bias/v
0:.002Adam/conv2d_164/kernel/v
": 02Adam/conv2d_164/bias/v
0:.002Adam/conv2d_165/kernel/v
": 02Adam/conv2d_165/bias/v
0:.002Adam/conv2d_166/kernel/v
": 02Adam/conv2d_166/bias/v
':%	?2Adam/dense_47/kernel/v
 :2Adam/dense_47/bias/v?
!__inference__wrapped_model_685630?"#>?Z[vw??A?>
7?4
2?/
conv2d_163_input?????????PP
? "3?0
.
dense_47"?
dense_47??????????
J__inference_activation_163_layer_call_and_return_conditional_losses_686469h7?4
-?*
(?%
inputs?????????NN0
? "-?*
#? 
0?????????NN0
? ?
/__inference_activation_163_layer_call_fn_686464[7?4
-?*
(?%
inputs?????????NN0
? " ??????????NN0?
J__inference_activation_164_layer_call_and_return_conditional_losses_686535h7?4
-?*
(?%
inputs?????????%%0
? "-?*
#? 
0?????????%%0
? ?
/__inference_activation_164_layer_call_fn_686530[7?4
-?*
(?%
inputs?????????%%0
? " ??????????%%0?
J__inference_activation_165_layer_call_and_return_conditional_losses_686601h7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
/__inference_activation_165_layer_call_fn_686596[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
J__inference_activation_166_layer_call_and_return_conditional_losses_686667h7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
/__inference_activation_166_layer_call_fn_686662[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
F__inference_conv2d_163_layer_call_and_return_conditional_losses_686459l"#7?4
-?*
(?%
inputs?????????PP
? "-?*
#? 
0?????????NN0
? ?
+__inference_conv2d_163_layer_call_fn_686449_"#7?4
-?*
(?%
inputs?????????PP
? " ??????????NN0?
F__inference_conv2d_164_layer_call_and_return_conditional_losses_686525l>?7?4
-?*
(?%
inputs?????????''0
? "-?*
#? 
0?????????%%0
? ?
+__inference_conv2d_164_layer_call_fn_686515_>?7?4
-?*
(?%
inputs?????????''0
? " ??????????%%0?
F__inference_conv2d_165_layer_call_and_return_conditional_losses_686591lZ[7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
+__inference_conv2d_165_layer_call_fn_686581_Z[7?4
-?*
(?%
inputs?????????0
? " ??????????0?
F__inference_conv2d_166_layer_call_and_return_conditional_losses_686657lvw7?4
-?*
(?%
inputs?????????0
? "-?*
#? 
0?????????0
? ?
+__inference_conv2d_166_layer_call_fn_686647_vw7?4
-?*
(?%
inputs?????????0
? " ??????????0?
D__inference_dense_47_layer_call_and_return_conditional_losses_686735_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? 
)__inference_dense_47_layer_call_fn_686724R??0?-
&?#
!?
inputs??????????
? "???????????
G__inference_dropout_163_layer_call_and_return_conditional_losses_686494l;?8
1?.
(?%
inputs?????????''0
p 
? "-?*
#? 
0?????????''0
? ?
G__inference_dropout_163_layer_call_and_return_conditional_losses_686506l;?8
1?.
(?%
inputs?????????''0
p
? "-?*
#? 
0?????????''0
? ?
,__inference_dropout_163_layer_call_fn_686484_;?8
1?.
(?%
inputs?????????''0
p 
? " ??????????''0?
,__inference_dropout_163_layer_call_fn_686489_;?8
1?.
(?%
inputs?????????''0
p
? " ??????????''0?
G__inference_dropout_164_layer_call_and_return_conditional_losses_686560l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
G__inference_dropout_164_layer_call_and_return_conditional_losses_686572l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
,__inference_dropout_164_layer_call_fn_686550_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
,__inference_dropout_164_layer_call_fn_686555_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
G__inference_dropout_165_layer_call_and_return_conditional_losses_686626l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
G__inference_dropout_165_layer_call_and_return_conditional_losses_686638l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
,__inference_dropout_165_layer_call_fn_686616_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
,__inference_dropout_165_layer_call_fn_686621_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
G__inference_dropout_166_layer_call_and_return_conditional_losses_686692l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
G__inference_dropout_166_layer_call_and_return_conditional_losses_686704l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
,__inference_dropout_166_layer_call_fn_686682_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
,__inference_dropout_166_layer_call_fn_686687_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
F__inference_flatten_47_layer_call_and_return_conditional_losses_686715a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
+__inference_flatten_47_layer_call_fn_686709T7?4
-?*
(?%
inputs?????????0
? "????????????
M__inference_max_pooling2d_163_layer_call_and_return_conditional_losses_686479?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_163_layer_call_fn_686474?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_164_layer_call_and_return_conditional_losses_686545?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_164_layer_call_fn_686540?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_165_layer_call_and_return_conditional_losses_686611?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_165_layer_call_fn_686606?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_166_layer_call_and_return_conditional_losses_686677?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_166_layer_call_fn_686672?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_47_layer_call_and_return_conditional_losses_686189?"#>?Z[vw??I?F
??<
2?/
conv2d_163_input?????????PP
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686231?"#>?Z[vw??I?F
??<
2?/
conv2d_163_input?????????PP
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_47_layer_call_and_return_conditional_losses_686363v"#>?Z[vw????<
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
I__inference_sequential_47_layer_call_and_return_conditional_losses_686440v"#>?Z[vw????<
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
.__inference_sequential_47_layer_call_fn_685858s"#>?Z[vw??I?F
??<
2?/
conv2d_163_input?????????PP
p 

 
? "???????????
.__inference_sequential_47_layer_call_fn_686147s"#>?Z[vw??I?F
??<
2?/
conv2d_163_input?????????PP
p

 
? "???????????
.__inference_sequential_47_layer_call_fn_686289i"#>?Z[vw????<
5?2
(?%
inputs?????????PP
p 

 
? "???????????
.__inference_sequential_47_layer_call_fn_686314i"#>?Z[vw????<
5?2
(?%
inputs?????????PP
p

 
? "???????????
$__inference_signature_wrapper_686264?"#>?Z[vw??U?R
? 
K?H
F
conv2d_163_input2?/
conv2d_163_input?????????PP"3?0
.
dense_47"?
dense_47?????????