л
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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Ћ	

Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:*
dtype0

Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_56/kernel/v

*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes
:	*
dtype0

Adam/conv2d_170/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_170/bias/v
}
*Adam/conv2d_170/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/bias/v*
_output_shapes
:0*
dtype0

Adam/conv2d_170/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_170/kernel/v

,Adam/conv2d_170/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/kernel/v*&
_output_shapes
:00*
dtype0

Adam/conv2d_169/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_169/bias/v
}
*Adam/conv2d_169/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/bias/v*
_output_shapes
:0*
dtype0

Adam/conv2d_169/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_169/kernel/v

,Adam/conv2d_169/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/kernel/v*&
_output_shapes
:00*
dtype0

Adam/conv2d_168/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_168/bias/v
}
*Adam/conv2d_168/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/bias/v*
_output_shapes
:0*
dtype0

Adam/conv2d_168/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_168/kernel/v

,Adam/conv2d_168/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/kernel/v*&
_output_shapes
:0*
dtype0

Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:*
dtype0

Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_56/kernel/m

*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes
:	*
dtype0

Adam/conv2d_170/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_170/bias/m
}
*Adam/conv2d_170/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/bias/m*
_output_shapes
:0*
dtype0

Adam/conv2d_170/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_170/kernel/m

,Adam/conv2d_170/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_170/kernel/m*&
_output_shapes
:00*
dtype0

Adam/conv2d_169/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_169/bias/m
}
*Adam/conv2d_169/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/bias/m*
_output_shapes
:0*
dtype0

Adam/conv2d_169/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*)
shared_nameAdam/conv2d_169/kernel/m

,Adam/conv2d_169/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_169/kernel/m*&
_output_shapes
:00*
dtype0

Adam/conv2d_168/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*'
shared_nameAdam/conv2d_168/bias/m
}
*Adam/conv2d_168/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/bias/m*
_output_shapes
:0*
dtype0

Adam/conv2d_168/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdam/conv2d_168/kernel/m

,Adam/conv2d_168/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_168/kernel/m*&
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
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:*
dtype0
{
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_56/kernel
t
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes
:	*
dtype0
v
conv2d_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_170/bias
o
#conv2d_170/bias/Read/ReadVariableOpReadVariableOpconv2d_170/bias*
_output_shapes
:0*
dtype0

conv2d_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_170/kernel

%conv2d_170/kernel/Read/ReadVariableOpReadVariableOpconv2d_170/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_169/bias
o
#conv2d_169/bias/Read/ReadVariableOpReadVariableOpconv2d_169/bias*
_output_shapes
:0*
dtype0

conv2d_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:00*"
shared_nameconv2d_169/kernel

%conv2d_169/kernel/Read/ReadVariableOpReadVariableOpconv2d_169/kernel*&
_output_shapes
:00*
dtype0
v
conv2d_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_168/bias
o
#conv2d_168/bias/Read/ReadVariableOpReadVariableOpconv2d_168/bias*
_output_shapes
:0*
dtype0

conv2d_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameconv2d_168/kernel

%conv2d_168/kernel/Read/ReadVariableOpReadVariableOpconv2d_168/kernel*&
_output_shapes
:0*
dtype0

NoOpNoOp
шe
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ѓe
valueeBe Be
ю
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
layer-12
layer_with_weights-3
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op*

!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 

'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
Ѕ
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_random_generator* 
Ш
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op*

=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 

C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
Ѕ
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator* 
Ш
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias
 X_jit_compiled_convolution_op*

Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses* 

_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
Ѕ
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
k_random_generator* 

l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses* 
І
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias*
<
0
1
:2
;3
V4
W5
x6
y7*
<
0
1
:2
;3
V4
W5
x6
y7*
* 
А
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
9
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
щ
	iter
beta_1
beta_2

decay
learning_ratemm:m;mVmWmxmymvv:v;vVvWvxvyv*

serving_default* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

trace_0* 
a[
VARIABLE_VALUEconv2d_168/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_168/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

 trace_0* 

Ёtrace_0* 
* 
* 
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

Їtrace_0
Јtrace_1* 

Љtrace_0
Њtrace_1* 
* 

:0
;1*

:0
;1*
* 

Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
a[
VARIABLE_VALUEconv2d_169/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_169/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

Зtrace_0* 

Иtrace_0* 
* 
* 
* 

Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

Оtrace_0* 

Пtrace_0* 
* 
* 
* 

Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

Хtrace_0
Цtrace_1* 

Чtrace_0
Шtrace_1* 
* 

V0
W1*

V0
W1*
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
a[
VARIABLE_VALUEconv2d_170/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_170/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

еtrace_0* 

жtrace_0* 
* 
* 
* 

зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 
* 
* 
* 

оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

уtrace_0
фtrace_1* 

хtrace_0
цtrace_1* 
* 
* 
* 
* 

чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses* 

ьtrace_0* 

эtrace_0* 

x0
y1*

x0
y1*
* 

юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*

ѓtrace_0* 

єtrace_0* 
_Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_56/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
j
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
13*

ѕ0
і1*
* 
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
<
ї	variables
ј	keras_api

љtotal

њcount*
M
ћ	variables
ќ	keras_api

§total

ўcount
џ
_fn_kwargs*

љ0
њ1*

ї	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

§0
ў1*

ћ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
~
VARIABLE_VALUEAdam/conv2d_168/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_168/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_169/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_169/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_170/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_170/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_168/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_168/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_169/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_169/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_170/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_170/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_conv2d_168_inputPlaceholder*/
_output_shapes
:џџџџџџџџџPP*
dtype0*$
shape:џџџџџџџџџPP
к
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_168_inputconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/biasdense_56/kerneldense_56/bias*
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
$__inference_signature_wrapper_599342
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_168/kernel/Read/ReadVariableOp#conv2d_168/bias/Read/ReadVariableOp%conv2d_169/kernel/Read/ReadVariableOp#conv2d_169/bias/Read/ReadVariableOp%conv2d_170/kernel/Read/ReadVariableOp#conv2d_170/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/conv2d_168/kernel/m/Read/ReadVariableOp*Adam/conv2d_168/bias/m/Read/ReadVariableOp,Adam/conv2d_169/kernel/m/Read/ReadVariableOp*Adam/conv2d_169/bias/m/Read/ReadVariableOp,Adam/conv2d_170/kernel/m/Read/ReadVariableOp*Adam/conv2d_170/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp,Adam/conv2d_168/kernel/v/Read/ReadVariableOp*Adam/conv2d_168/bias/v/Read/ReadVariableOp,Adam/conv2d_169/kernel/v/Read/ReadVariableOp*Adam/conv2d_169/bias/v/Read/ReadVariableOp,Adam/conv2d_170/kernel/v/Read/ReadVariableOp*Adam/conv2d_170/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOpConst*.
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
__inference__traced_save_599836
Г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_168/kernelconv2d_168/biasconv2d_169/kernelconv2d_169/biasconv2d_170/kernelconv2d_170/biasdense_56/kerneldense_56/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_168/kernel/mAdam/conv2d_168/bias/mAdam/conv2d_169/kernel/mAdam/conv2d_169/bias/mAdam/conv2d_170/kernel/mAdam/conv2d_170/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/conv2d_168/kernel/vAdam/conv2d_168/bias/vAdam/conv2d_169/kernel/vAdam/conv2d_169/bias/vAdam/conv2d_170/kernel/vAdam/conv2d_170/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/v*-
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
"__inference__traced_restore_599945ны
Њ

џ
F__inference_conv2d_170_layer_call_and_return_conditional_losses_599636

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
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
:џџџџџџџџџ0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ТI
ё
I__inference_sequential_56_layer_call_and_return_conditional_losses_599485

inputsC
)conv2d_168_conv2d_readvariableop_resource:08
*conv2d_168_biasadd_readvariableop_resource:0C
)conv2d_169_conv2d_readvariableop_resource:008
*conv2d_169_biasadd_readvariableop_resource:0C
)conv2d_170_conv2d_readvariableop_resource:008
*conv2d_170_biasadd_readvariableop_resource:0:
'dense_56_matmul_readvariableop_resource:	6
(dense_56_biasadd_readvariableop_resource:
identityЂ!conv2d_168/BiasAdd/ReadVariableOpЂ conv2d_168/Conv2D/ReadVariableOpЂ!conv2d_169/BiasAdd/ReadVariableOpЂ conv2d_169/Conv2D/ReadVariableOpЂ!conv2d_170/BiasAdd/ReadVariableOpЂ conv2d_170/Conv2D/ReadVariableOpЂdense_56/BiasAdd/ReadVariableOpЂdense_56/MatMul/ReadVariableOp
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0А
conv2d_168/Conv2DConv2Dinputs(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0*
paddingVALID*
strides

!conv2d_168/BiasAdd/ReadVariableOpReadVariableOp*conv2d_168_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_168/BiasAddBiasAddconv2d_168/Conv2D:output:0)conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0r
activation_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџNN0Д
max_pooling2d_168/MaxPoolMaxPool!activation_168/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ''0*
ksize
*
paddingVALID*
strides
^
dropout_168/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ? 
dropout_168/dropout/MulMul"max_pooling2d_168/MaxPool:output:0"dropout_168/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0k
dropout_168/dropout/ShapeShape"max_pooling2d_168/MaxPool:output:0*
T0*
_output_shapes
:И
0dropout_168/dropout/random_uniform/RandomUniformRandomUniform"dropout_168/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0*
dtype0*

seedg
"dropout_168/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >в
 dropout_168/dropout/GreaterEqualGreaterEqual9dropout_168/dropout/random_uniform/RandomUniform:output:0+dropout_168/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0
dropout_168/dropout/CastCast$dropout_168/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ''0
dropout_168/dropout/Mul_1Muldropout_168/dropout/Mul:z:0dropout_168/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ''0
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0Ч
conv2d_169/Conv2DConv2Ddropout_168/dropout/Mul_1:z:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0*
paddingVALID*
strides

!conv2d_169/BiasAdd/ReadVariableOpReadVariableOp*conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_169/BiasAddBiasAddconv2d_169/Conv2D:output:0)conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0r
activation_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0Д
max_pooling2d_169/MaxPoolMaxPool!activation_169/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides
^
dropout_169/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ? 
dropout_169/dropout/MulMul"max_pooling2d_169/MaxPool:output:0"dropout_169/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0k
dropout_169/dropout/ShapeShape"max_pooling2d_169/MaxPool:output:0*
T0*
_output_shapes
:Х
0dropout_169/dropout/random_uniform/RandomUniformRandomUniform"dropout_169/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
dtype0*

seed*
seed2g
"dropout_169/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >в
 dropout_169/dropout/GreaterEqualGreaterEqual9dropout_169/dropout/random_uniform/RandomUniform:output:0+dropout_169/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0
dropout_169/dropout/CastCast$dropout_169/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ0
dropout_169/dropout/Mul_1Muldropout_169/dropout/Mul:z:0dropout_169/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ0
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0Ч
conv2d_170/Conv2DConv2Ddropout_169/dropout/Mul_1:z:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
paddingVALID*
strides

!conv2d_170/BiasAdd/ReadVariableOpReadVariableOp*conv2d_170_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_170/BiasAddBiasAddconv2d_170/Conv2D:output:0)conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0r
activation_170/ReluReluconv2d_170/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0Д
max_pooling2d_170/MaxPoolMaxPool!activation_170/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides
^
dropout_170/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ? 
dropout_170/dropout/MulMul"max_pooling2d_170/MaxPool:output:0"dropout_170/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0k
dropout_170/dropout/ShapeShape"max_pooling2d_170/MaxPool:output:0*
T0*
_output_shapes
:Х
0dropout_170/dropout/random_uniform/RandomUniformRandomUniform"dropout_170/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
dtype0*

seed*
seed2g
"dropout_170/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >в
 dropout_170/dropout/GreaterEqualGreaterEqual9dropout_170/dropout/random_uniform/RandomUniform:output:0+dropout_170/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0
dropout_170/dropout/CastCast$dropout_170/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ0
dropout_170/dropout/Mul_1Muldropout_170/dropout/Mul:z:0dropout_170/dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ0a
flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_56/ReshapeReshapedropout_170/dropout/Mul_1:z:0flatten_56/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_56/MatMulMatMulflatten_56/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_56/SoftmaxSoftmaxdense_56/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_56/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2F
!conv2d_168/BiasAdd/ReadVariableOp!conv2d_168/BiasAdd/ReadVariableOp2D
 conv2d_168/Conv2D/ReadVariableOp conv2d_168/Conv2D/ReadVariableOp2F
!conv2d_169/BiasAdd/ReadVariableOp!conv2d_169/BiasAdd/ReadVariableOp2D
 conv2d_169/Conv2D/ReadVariableOp conv2d_169/Conv2D/ReadVariableOp2F
!conv2d_170/BiasAdd/ReadVariableOp!conv2d_170/BiasAdd/ReadVariableOp2D
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Ь
K
/__inference_activation_170_layer_call_fn_599641

inputs
identityР
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_170_layer_call_and_return_conditional_losses_598960h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ю
f
J__inference_activation_169_layer_call_and_return_conditional_losses_598929

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ%%0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ%%0:W S
/
_output_shapes
:џџџџџџџџџ%%0
 
_user_specified_nameinputs
Є

і
D__inference_dense_56_layer_call_and_return_conditional_losses_598989

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
њ
e
G__inference_dropout_170_layer_call_and_return_conditional_losses_598968

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
с9
Ѓ
I__inference_sequential_56_layer_call_and_return_conditional_losses_599313
conv2d_168_input+
conv2d_168_599282:0
conv2d_168_599284:0+
conv2d_169_599290:00
conv2d_169_599292:0+
conv2d_170_599298:00
conv2d_170_599300:0"
dense_56_599307:	
dense_56_599309:
identityЂ"conv2d_168/StatefulPartitionedCallЂ"conv2d_169/StatefulPartitionedCallЂ"conv2d_170/StatefulPartitionedCallЂ dense_56/StatefulPartitionedCallЂ#dropout_168/StatefulPartitionedCallЂ#dropout_169/StatefulPartitionedCallЂ#dropout_170/StatefulPartitionedCall
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputconv2d_168_599282conv2d_168_599284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_168_layer_call_and_return_conditional_losses_598887є
activation_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_168_layer_call_and_return_conditional_losses_598898і
!max_pooling2d_168/PartitionedCallPartitionedCall'activation_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_598843§
#dropout_168/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_168_layer_call_and_return_conditional_losses_599129Љ
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall,dropout_168/StatefulPartitionedCall:output:0conv2d_169_599290conv2d_169_599292*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_169_layer_call_and_return_conditional_losses_598918є
activation_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_169_layer_call_and_return_conditional_losses_598929і
!max_pooling2d_169/PartitionedCallPartitionedCall'activation_169/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_598855Ѓ
#dropout_169/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_169/PartitionedCall:output:0$^dropout_168/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_169_layer_call_and_return_conditional_losses_599090Љ
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall,dropout_169/StatefulPartitionedCall:output:0conv2d_170_599298conv2d_170_599300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_170_layer_call_and_return_conditional_losses_598949є
activation_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_170_layer_call_and_return_conditional_losses_598960і
!max_pooling2d_170/PartitionedCallPartitionedCall'activation_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_598867Ѓ
#dropout_170/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_170/PartitionedCall:output:0$^dropout_169/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_170_layer_call_and_return_conditional_losses_599051ц
flatten_56/PartitionedCallPartitionedCall,dropout_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_56_layer_call_and_return_conditional_losses_598976
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_56_599307dense_56_599309*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_598989x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall$^dropout_168/StatefulPartitionedCall$^dropout_169/StatefulPartitionedCall$^dropout_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2J
#dropout_168/StatefulPartitionedCall#dropout_168/StatefulPartitionedCall2J
#dropout_169/StatefulPartitionedCall#dropout_169/StatefulPartitionedCall2J
#dropout_170/StatefulPartitionedCall#dropout_170/StatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџPP
*
_user_specified_nameconv2d_168_input
ё
 
+__inference_conv2d_168_layer_call_fn_599494

inputs!
unknown:0
	unknown_0:0
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_168_layer_call_and_return_conditional_losses_598887w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџNN0`
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
5
Б
I__inference_sequential_56_layer_call_and_return_conditional_losses_599279
conv2d_168_input+
conv2d_168_599248:0
conv2d_168_599250:0+
conv2d_169_599256:00
conv2d_169_599258:0+
conv2d_170_599264:00
conv2d_170_599266:0"
dense_56_599273:	
dense_56_599275:
identityЂ"conv2d_168/StatefulPartitionedCallЂ"conv2d_169/StatefulPartitionedCallЂ"conv2d_170/StatefulPartitionedCallЂ dense_56/StatefulPartitionedCall
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputconv2d_168_599248conv2d_168_599250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_168_layer_call_and_return_conditional_losses_598887є
activation_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_168_layer_call_and_return_conditional_losses_598898і
!max_pooling2d_168/PartitionedCallPartitionedCall'activation_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_598843э
dropout_168/PartitionedCallPartitionedCall*max_pooling2d_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_168_layer_call_and_return_conditional_losses_598906Ё
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall$dropout_168/PartitionedCall:output:0conv2d_169_599256conv2d_169_599258*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_169_layer_call_and_return_conditional_losses_598918є
activation_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_169_layer_call_and_return_conditional_losses_598929і
!max_pooling2d_169/PartitionedCallPartitionedCall'activation_169/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_598855э
dropout_169/PartitionedCallPartitionedCall*max_pooling2d_169/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_169_layer_call_and_return_conditional_losses_598937Ё
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall$dropout_169/PartitionedCall:output:0conv2d_170_599264conv2d_170_599266*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_170_layer_call_and_return_conditional_losses_598949є
activation_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_170_layer_call_and_return_conditional_losses_598960і
!max_pooling2d_170/PartitionedCallPartitionedCall'activation_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_598867э
dropout_170/PartitionedCallPartitionedCall*max_pooling2d_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_170_layer_call_and_return_conditional_losses_598968о
flatten_56/PartitionedCallPartitionedCall$dropout_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_56_layer_call_and_return_conditional_losses_598976
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_56_599273dense_56_599275*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_598989x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџи
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџPP
*
_user_specified_nameconv2d_168_input
Ш
b
F__inference_flatten_56_layer_call_and_return_conditional_losses_598976

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

e
,__inference_dropout_169_layer_call_fn_599600

inputs
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_169_layer_call_and_return_conditional_losses_599090w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
С

f
G__inference_dropout_168_layer_call_and_return_conditional_losses_599129

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ''0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ''0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ''0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ''0:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
С

f
G__inference_dropout_169_layer_call_and_return_conditional_losses_599617

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ц
H
,__inference_dropout_169_layer_call_fn_599595

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_169_layer_call_and_return_conditional_losses_598937h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ь
K
/__inference_activation_169_layer_call_fn_599575

inputs
identityР
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_169_layer_call_and_return_conditional_losses_598929h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ%%0:W S
/
_output_shapes
:џџџџџџџџџ%%0
 
_user_specified_nameinputs
њ
e
G__inference_dropout_170_layer_call_and_return_conditional_losses_599671

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
ю
f
J__inference_activation_170_layer_call_and_return_conditional_losses_599646

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_169_layer_call_fn_599585

inputs
identityо
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
GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_598855
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
Ш

)__inference_dense_56_layer_call_fn_599703

inputs
unknown:	
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
D__inference_dense_56_layer_call_and_return_conditional_losses_598989o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ц
H
,__inference_dropout_168_layer_call_fn_599529

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_168_layer_call_and_return_conditional_losses_598906h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ''0:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs


р
.__inference_sequential_56_layer_call_fn_599015
conv2d_168_input!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_598996o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџPP
*
_user_specified_nameconv2d_168_input
р	
ж
$__inference_signature_wrapper_599342
conv2d_168_input!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
!__inference__wrapped_model_598834o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџPP
*
_user_specified_nameconv2d_168_input
њ
e
G__inference_dropout_169_layer_call_and_return_conditional_losses_599605

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_170_layer_call_fn_599651

inputs
identityо
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
GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_598867
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

i
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_598855

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
ё
 
+__inference_conv2d_169_layer_call_fn_599560

inputs!
unknown:00
	unknown_0:0
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_169_layer_call_and_return_conditional_losses_598918w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ%%0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ''0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
Њ

џ
F__inference_conv2d_170_layer_call_and_return_conditional_losses_598949

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
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
:џџџџџџџџџ0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
є	
ж
.__inference_sequential_56_layer_call_fn_599384

inputs!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0
	unknown_5:	
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_599205o
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

e
,__inference_dropout_168_layer_call_fn_599534

inputs
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_168_layer_call_and_return_conditional_losses_599129w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ''0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ''022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
Њ

џ
F__inference_conv2d_168_layer_call_and_return_conditional_losses_598887

inputs8
conv2d_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0*
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
:џџџџџџџџџNN0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџNN0w
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
њ
e
G__inference_dropout_168_layer_call_and_return_conditional_losses_599539

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ''0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ''0:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
С

f
G__inference_dropout_169_layer_call_and_return_conditional_losses_599090

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ж
G
+__inference_flatten_56_layer_call_fn_599688

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
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_56_layer_call_and_return_conditional_losses_598976a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_599656

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
С

f
G__inference_dropout_170_layer_call_and_return_conditional_losses_599683

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
њ
e
G__inference_dropout_168_layer_call_and_return_conditional_losses_598906

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ''0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ''0:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
Њ

џ
F__inference_conv2d_169_layer_call_and_return_conditional_losses_598918

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0*
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
:џџџџџџџџџ%%0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ%%0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ''0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_168_layer_call_fn_599519

inputs
identityо
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
GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_598843
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
њ
e
G__inference_dropout_169_layer_call_and_return_conditional_losses_598937

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ0c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
С

f
G__inference_dropout_170_layer_call_and_return_conditional_losses_599051

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_598867

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
є	
ж
.__inference_sequential_56_layer_call_fn_599363

inputs!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0
	unknown_5:	
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_598996o
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
Ц
H
,__inference_dropout_170_layer_call_fn_599661

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_170_layer_call_and_return_conditional_losses_598968h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

Й
"__inference__traced_restore_599945
file_prefix<
"assignvariableop_conv2d_168_kernel:00
"assignvariableop_1_conv2d_168_bias:0>
$assignvariableop_2_conv2d_169_kernel:000
"assignvariableop_3_conv2d_169_bias:0>
$assignvariableop_4_conv2d_170_kernel:000
"assignvariableop_5_conv2d_170_bias:05
"assignvariableop_6_dense_56_kernel:	.
 assignvariableop_7_dense_56_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: F
,assignvariableop_17_adam_conv2d_168_kernel_m:08
*assignvariableop_18_adam_conv2d_168_bias_m:0F
,assignvariableop_19_adam_conv2d_169_kernel_m:008
*assignvariableop_20_adam_conv2d_169_bias_m:0F
,assignvariableop_21_adam_conv2d_170_kernel_m:008
*assignvariableop_22_adam_conv2d_170_bias_m:0=
*assignvariableop_23_adam_dense_56_kernel_m:	6
(assignvariableop_24_adam_dense_56_bias_m:F
,assignvariableop_25_adam_conv2d_168_kernel_v:08
*assignvariableop_26_adam_conv2d_168_bias_v:0F
,assignvariableop_27_adam_conv2d_169_kernel_v:008
*assignvariableop_28_adam_conv2d_169_bias_v:0F
,assignvariableop_29_adam_conv2d_170_kernel_v:008
*assignvariableop_30_adam_conv2d_170_bias_v:0=
*assignvariableop_31_adam_dense_56_kernel_v:	6
(assignvariableop_32_adam_dense_56_bias_v:
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
:
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_168_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_168_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_169_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_169_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_170_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_170_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_56_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_56_biasIdentity_7:output:0"/device:CPU:0*
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
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_conv2d_168_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_conv2d_168_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_169_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_169_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_170_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_170_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_56_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_56_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_168_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_168_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_169_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_169_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_170_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_170_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_56_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_56_bias_vIdentity_32:output:0"/device:CPU:0*
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
С

f
G__inference_dropout_168_layer_call_and_return_conditional_losses_599551

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЋЊЊ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:џџџџџџџџџ''0q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:џџџџџџџџџ''0a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:џџџџџџџџџ''0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ''0:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
ю
f
J__inference_activation_168_layer_call_and_return_conditional_losses_598898

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџNN0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџNN0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџNN0:W S
/
_output_shapes
:џџџџџџџџџNN0
 
_user_specified_nameinputs
ю
f
J__inference_activation_170_layer_call_and_return_conditional_losses_598960

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_598843

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
ч4
Ї
I__inference_sequential_56_layer_call_and_return_conditional_losses_598996

inputs+
conv2d_168_598888:0
conv2d_168_598890:0+
conv2d_169_598919:00
conv2d_169_598921:0+
conv2d_170_598950:00
conv2d_170_598952:0"
dense_56_598990:	
dense_56_598992:
identityЂ"conv2d_168/StatefulPartitionedCallЂ"conv2d_169/StatefulPartitionedCallЂ"conv2d_170/StatefulPartitionedCallЂ dense_56/StatefulPartitionedCall
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_168_598888conv2d_168_598890*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_168_layer_call_and_return_conditional_losses_598887є
activation_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_168_layer_call_and_return_conditional_losses_598898і
!max_pooling2d_168/PartitionedCallPartitionedCall'activation_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_598843э
dropout_168/PartitionedCallPartitionedCall*max_pooling2d_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_168_layer_call_and_return_conditional_losses_598906Ё
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall$dropout_168/PartitionedCall:output:0conv2d_169_598919conv2d_169_598921*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_169_layer_call_and_return_conditional_losses_598918є
activation_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_169_layer_call_and_return_conditional_losses_598929і
!max_pooling2d_169/PartitionedCallPartitionedCall'activation_169/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_598855э
dropout_169/PartitionedCallPartitionedCall*max_pooling2d_169/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_169_layer_call_and_return_conditional_losses_598937Ё
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall$dropout_169/PartitionedCall:output:0conv2d_170_598950conv2d_170_598952*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_170_layer_call_and_return_conditional_losses_598949є
activation_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_170_layer_call_and_return_conditional_losses_598960і
!max_pooling2d_170/PartitionedCallPartitionedCall'activation_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_598867э
dropout_170/PartitionedCallPartitionedCall*max_pooling2d_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_170_layer_call_and_return_conditional_losses_598968о
flatten_56/PartitionedCallPartitionedCall$dropout_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_56_layer_call_and_return_conditional_losses_598976
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_56_598990dense_56_598992*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_598989x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџи
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
ю
f
J__inference_activation_169_layer_call_and_return_conditional_losses_599580

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџ%%0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ%%0:W S
/
_output_shapes
:џџџџџџџџџ%%0
 
_user_specified_nameinputs
ю
f
J__inference_activation_168_layer_call_and_return_conditional_losses_599514

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:џџџџџџџџџNN0b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџNN0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџNN0:W S
/
_output_shapes
:џџџџџџџџџNN0
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_599590

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

i
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_599524

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


р
.__inference_sequential_56_layer_call_fn_599245
conv2d_168_input!
unknown:0
	unknown_0:0#
	unknown_1:00
	unknown_2:0#
	unknown_3:00
	unknown_4:0
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallconv2d_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_599205o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџPP
*
_user_specified_nameconv2d_168_input

e
,__inference_dropout_170_layer_call_fn_599666

inputs
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_170_layer_call_and_return_conditional_losses_599051w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
У9

I__inference_sequential_56_layer_call_and_return_conditional_losses_599205

inputs+
conv2d_168_599174:0
conv2d_168_599176:0+
conv2d_169_599182:00
conv2d_169_599184:0+
conv2d_170_599190:00
conv2d_170_599192:0"
dense_56_599199:	
dense_56_599201:
identityЂ"conv2d_168/StatefulPartitionedCallЂ"conv2d_169/StatefulPartitionedCallЂ"conv2d_170/StatefulPartitionedCallЂ dense_56/StatefulPartitionedCallЂ#dropout_168/StatefulPartitionedCallЂ#dropout_169/StatefulPartitionedCallЂ#dropout_170/StatefulPartitionedCall
"conv2d_168/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_168_599174conv2d_168_599176*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_168_layer_call_and_return_conditional_losses_598887є
activation_168/PartitionedCallPartitionedCall+conv2d_168/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_168_layer_call_and_return_conditional_losses_598898і
!max_pooling2d_168/PartitionedCallPartitionedCall'activation_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_598843§
#dropout_168/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_168/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ''0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_168_layer_call_and_return_conditional_losses_599129Љ
"conv2d_169/StatefulPartitionedCallStatefulPartitionedCall,dropout_168/StatefulPartitionedCall:output:0conv2d_169_599182conv2d_169_599184*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_169_layer_call_and_return_conditional_losses_598918є
activation_169/PartitionedCallPartitionedCall+conv2d_169/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ%%0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_169_layer_call_and_return_conditional_losses_598929і
!max_pooling2d_169/PartitionedCallPartitionedCall'activation_169/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_598855Ѓ
#dropout_169/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_169/PartitionedCall:output:0$^dropout_168/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_169_layer_call_and_return_conditional_losses_599090Љ
"conv2d_170/StatefulPartitionedCallStatefulPartitionedCall,dropout_169/StatefulPartitionedCall:output:0conv2d_170_599190conv2d_170_599192*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_170_layer_call_and_return_conditional_losses_598949є
activation_170/PartitionedCallPartitionedCall+conv2d_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_170_layer_call_and_return_conditional_losses_598960і
!max_pooling2d_170/PartitionedCallPartitionedCall'activation_170/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_598867Ѓ
#dropout_170/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_170/PartitionedCall:output:0$^dropout_169/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_170_layer_call_and_return_conditional_losses_599051ц
flatten_56/PartitionedCallPartitionedCall,dropout_170/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_56_layer_call_and_return_conditional_losses_598976
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_56/PartitionedCall:output:0dense_56_599199dense_56_599201*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_598989x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp#^conv2d_168/StatefulPartitionedCall#^conv2d_169/StatefulPartitionedCall#^conv2d_170/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall$^dropout_168/StatefulPartitionedCall$^dropout_169/StatefulPartitionedCall$^dropout_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2H
"conv2d_168/StatefulPartitionedCall"conv2d_168/StatefulPartitionedCall2H
"conv2d_169/StatefulPartitionedCall"conv2d_169/StatefulPartitionedCall2H
"conv2d_170/StatefulPartitionedCall"conv2d_170/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2J
#dropout_168/StatefulPartitionedCall#dropout_168/StatefulPartitionedCall2J
#dropout_169/StatefulPartitionedCall#dropout_169/StatefulPartitionedCall2J
#dropout_170/StatefulPartitionedCall#dropout_170/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
рG
ф
__inference__traced_save_599836
file_prefix0
,savev2_conv2d_168_kernel_read_readvariableop.
*savev2_conv2d_168_bias_read_readvariableop0
,savev2_conv2d_169_kernel_read_readvariableop.
*savev2_conv2d_169_bias_read_readvariableop0
,savev2_conv2d_170_kernel_read_readvariableop.
*savev2_conv2d_170_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_conv2d_168_kernel_m_read_readvariableop5
1savev2_adam_conv2d_168_bias_m_read_readvariableop7
3savev2_adam_conv2d_169_kernel_m_read_readvariableop5
1savev2_adam_conv2d_169_bias_m_read_readvariableop7
3savev2_adam_conv2d_170_kernel_m_read_readvariableop5
1savev2_adam_conv2d_170_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop7
3savev2_adam_conv2d_168_kernel_v_read_readvariableop5
1savev2_adam_conv2d_168_bias_v_read_readvariableop7
3savev2_adam_conv2d_169_kernel_v_read_readvariableop5
1savev2_adam_conv2d_169_bias_v_read_readvariableop7
3savev2_adam_conv2d_170_kernel_v_read_readvariableop5
1savev2_adam_conv2d_170_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop
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
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Х
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_168_kernel_read_readvariableop*savev2_conv2d_168_bias_read_readvariableop,savev2_conv2d_169_kernel_read_readvariableop*savev2_conv2d_169_bias_read_readvariableop,savev2_conv2d_170_kernel_read_readvariableop*savev2_conv2d_170_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_conv2d_168_kernel_m_read_readvariableop1savev2_adam_conv2d_168_bias_m_read_readvariableop3savev2_adam_conv2d_169_kernel_m_read_readvariableop1savev2_adam_conv2d_169_bias_m_read_readvariableop3savev2_adam_conv2d_170_kernel_m_read_readvariableop1savev2_adam_conv2d_170_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop3savev2_adam_conv2d_168_kernel_v_read_readvariableop1savev2_adam_conv2d_168_bias_v_read_readvariableop3savev2_adam_conv2d_169_kernel_v_read_readvariableop1savev2_adam_conv2d_169_bias_v_read_readvariableop3savev2_adam_conv2d_170_kernel_v_read_readvariableop1savev2_adam_conv2d_170_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*Ж
_input_shapesЄ
Ё: :0:0:00:0:00:0:	:: : : : : : : : : :0:0:00:0:00:0:	::0:0:00:0:00:0:	:: 2(
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
:0:%!

_output_shapes
:	: 
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
:0: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:%!

_output_shapes
:	: 

_output_shapes
::,(
&
_output_shapes
:0: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:,(
&
_output_shapes
:00: 

_output_shapes
:0:% !

_output_shapes
:	: !

_output_shapes
::"

_output_shapes
: 
я0
ё
I__inference_sequential_56_layer_call_and_return_conditional_losses_599424

inputsC
)conv2d_168_conv2d_readvariableop_resource:08
*conv2d_168_biasadd_readvariableop_resource:0C
)conv2d_169_conv2d_readvariableop_resource:008
*conv2d_169_biasadd_readvariableop_resource:0C
)conv2d_170_conv2d_readvariableop_resource:008
*conv2d_170_biasadd_readvariableop_resource:0:
'dense_56_matmul_readvariableop_resource:	6
(dense_56_biasadd_readvariableop_resource:
identityЂ!conv2d_168/BiasAdd/ReadVariableOpЂ conv2d_168/Conv2D/ReadVariableOpЂ!conv2d_169/BiasAdd/ReadVariableOpЂ conv2d_169/Conv2D/ReadVariableOpЂ!conv2d_170/BiasAdd/ReadVariableOpЂ conv2d_170/Conv2D/ReadVariableOpЂdense_56/BiasAdd/ReadVariableOpЂdense_56/MatMul/ReadVariableOp
 conv2d_168/Conv2D/ReadVariableOpReadVariableOp)conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0А
conv2d_168/Conv2DConv2Dinputs(conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0*
paddingVALID*
strides

!conv2d_168/BiasAdd/ReadVariableOpReadVariableOp*conv2d_168_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_168/BiasAddBiasAddconv2d_168/Conv2D:output:0)conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0r
activation_168/ReluReluconv2d_168/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџNN0Д
max_pooling2d_168/MaxPoolMaxPool!activation_168/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ''0*
ksize
*
paddingVALID*
strides
~
dropout_168/IdentityIdentity"max_pooling2d_168/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0
 conv2d_169/Conv2D/ReadVariableOpReadVariableOp)conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0Ч
conv2d_169/Conv2DConv2Ddropout_168/Identity:output:0(conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0*
paddingVALID*
strides

!conv2d_169/BiasAdd/ReadVariableOpReadVariableOp*conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_169/BiasAddBiasAddconv2d_169/Conv2D:output:0)conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0r
activation_169/ReluReluconv2d_169/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0Д
max_pooling2d_169/MaxPoolMaxPool!activation_169/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides
~
dropout_169/IdentityIdentity"max_pooling2d_169/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0
 conv2d_170/Conv2D/ReadVariableOpReadVariableOp)conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0Ч
conv2d_170/Conv2DConv2Ddropout_169/Identity:output:0(conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
paddingVALID*
strides

!conv2d_170/BiasAdd/ReadVariableOpReadVariableOp*conv2d_170_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0
conv2d_170/BiasAddBiasAddconv2d_170/Conv2D:output:0)conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0r
activation_170/ReluReluconv2d_170/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0Д
max_pooling2d_170/MaxPoolMaxPool!activation_170/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides
~
dropout_170/IdentityIdentity"max_pooling2d_170/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0a
flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_56/ReshapeReshapedropout_170/Identity:output:0flatten_56/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_56/MatMulMatMulflatten_56/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
dense_56/SoftmaxSoftmaxdense_56/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџi
IdentityIdentitydense_56/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџо
NoOpNoOp"^conv2d_168/BiasAdd/ReadVariableOp!^conv2d_168/Conv2D/ReadVariableOp"^conv2d_169/BiasAdd/ReadVariableOp!^conv2d_169/Conv2D/ReadVariableOp"^conv2d_170/BiasAdd/ReadVariableOp!^conv2d_170/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2F
!conv2d_168/BiasAdd/ReadVariableOp!conv2d_168/BiasAdd/ReadVariableOp2D
 conv2d_168/Conv2D/ReadVariableOp conv2d_168/Conv2D/ReadVariableOp2F
!conv2d_169/BiasAdd/ReadVariableOp!conv2d_169/BiasAdd/ReadVariableOp2D
 conv2d_169/Conv2D/ReadVariableOp conv2d_169/Conv2D/ReadVariableOp2F
!conv2d_170/BiasAdd/ReadVariableOp!conv2d_170/BiasAdd/ReadVariableOp2D
 conv2d_170/Conv2D/ReadVariableOp conv2d_170/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџPP
 
_user_specified_nameinputs
Ш
b
F__inference_flatten_56_layer_call_and_return_conditional_losses_599694

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ0:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
<
Г
!__inference__wrapped_model_598834
conv2d_168_inputQ
7sequential_56_conv2d_168_conv2d_readvariableop_resource:0F
8sequential_56_conv2d_168_biasadd_readvariableop_resource:0Q
7sequential_56_conv2d_169_conv2d_readvariableop_resource:00F
8sequential_56_conv2d_169_biasadd_readvariableop_resource:0Q
7sequential_56_conv2d_170_conv2d_readvariableop_resource:00F
8sequential_56_conv2d_170_biasadd_readvariableop_resource:0H
5sequential_56_dense_56_matmul_readvariableop_resource:	D
6sequential_56_dense_56_biasadd_readvariableop_resource:
identityЂ/sequential_56/conv2d_168/BiasAdd/ReadVariableOpЂ.sequential_56/conv2d_168/Conv2D/ReadVariableOpЂ/sequential_56/conv2d_169/BiasAdd/ReadVariableOpЂ.sequential_56/conv2d_169/Conv2D/ReadVariableOpЂ/sequential_56/conv2d_170/BiasAdd/ReadVariableOpЂ.sequential_56/conv2d_170/Conv2D/ReadVariableOpЂ-sequential_56/dense_56/BiasAdd/ReadVariableOpЂ,sequential_56/dense_56/MatMul/ReadVariableOpЎ
.sequential_56/conv2d_168/Conv2D/ReadVariableOpReadVariableOp7sequential_56_conv2d_168_conv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0ж
sequential_56/conv2d_168/Conv2DConv2Dconv2d_168_input6sequential_56/conv2d_168/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0*
paddingVALID*
strides
Є
/sequential_56/conv2d_168/BiasAdd/ReadVariableOpReadVariableOp8sequential_56_conv2d_168_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0Ш
 sequential_56/conv2d_168/BiasAddBiasAdd(sequential_56/conv2d_168/Conv2D:output:07sequential_56/conv2d_168/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0
!sequential_56/activation_168/ReluRelu)sequential_56/conv2d_168/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџNN0а
'sequential_56/max_pooling2d_168/MaxPoolMaxPool/sequential_56/activation_168/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ''0*
ksize
*
paddingVALID*
strides

"sequential_56/dropout_168/IdentityIdentity0sequential_56/max_pooling2d_168/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ''0Ў
.sequential_56/conv2d_169/Conv2D/ReadVariableOpReadVariableOp7sequential_56_conv2d_169_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0ё
sequential_56/conv2d_169/Conv2DConv2D+sequential_56/dropout_168/Identity:output:06sequential_56/conv2d_169/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0*
paddingVALID*
strides
Є
/sequential_56/conv2d_169/BiasAdd/ReadVariableOpReadVariableOp8sequential_56_conv2d_169_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0Ш
 sequential_56/conv2d_169/BiasAddBiasAdd(sequential_56/conv2d_169/Conv2D:output:07sequential_56/conv2d_169/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0
!sequential_56/activation_169/ReluRelu)sequential_56/conv2d_169/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0а
'sequential_56/max_pooling2d_169/MaxPoolMaxPool/sequential_56/activation_169/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

"sequential_56/dropout_169/IdentityIdentity0sequential_56/max_pooling2d_169/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0Ў
.sequential_56/conv2d_170/Conv2D/ReadVariableOpReadVariableOp7sequential_56_conv2d_170_conv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0ё
sequential_56/conv2d_170/Conv2DConv2D+sequential_56/dropout_169/Identity:output:06sequential_56/conv2d_170/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0*
paddingVALID*
strides
Є
/sequential_56/conv2d_170/BiasAdd/ReadVariableOpReadVariableOp8sequential_56_conv2d_170_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0Ш
 sequential_56/conv2d_170/BiasAddBiasAdd(sequential_56/conv2d_170/Conv2D:output:07sequential_56/conv2d_170/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ0
!sequential_56/activation_170/ReluRelu)sequential_56/conv2d_170/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0а
'sequential_56/max_pooling2d_170/MaxPoolMaxPool/sequential_56/activation_170/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ0*
ksize
*
paddingVALID*
strides

"sequential_56/dropout_170/IdentityIdentity0sequential_56/max_pooling2d_170/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ0o
sequential_56/flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Д
 sequential_56/flatten_56/ReshapeReshape+sequential_56/dropout_170/Identity:output:0'sequential_56/flatten_56/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,sequential_56/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_56_dense_56_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0К
sequential_56/dense_56/MatMulMatMul)sequential_56/flatten_56/Reshape:output:04sequential_56/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_56/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_56_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_56/dense_56/BiasAddBiasAdd'sequential_56/dense_56/MatMul:product:05sequential_56/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_56/dense_56/SoftmaxSoftmax'sequential_56/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
IdentityIdentity(sequential_56/dense_56/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp0^sequential_56/conv2d_168/BiasAdd/ReadVariableOp/^sequential_56/conv2d_168/Conv2D/ReadVariableOp0^sequential_56/conv2d_169/BiasAdd/ReadVariableOp/^sequential_56/conv2d_169/Conv2D/ReadVariableOp0^sequential_56/conv2d_170/BiasAdd/ReadVariableOp/^sequential_56/conv2d_170/Conv2D/ReadVariableOp.^sequential_56/dense_56/BiasAdd/ReadVariableOp-^sequential_56/dense_56/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:џџџџџџџџџPP: : : : : : : : 2b
/sequential_56/conv2d_168/BiasAdd/ReadVariableOp/sequential_56/conv2d_168/BiasAdd/ReadVariableOp2`
.sequential_56/conv2d_168/Conv2D/ReadVariableOp.sequential_56/conv2d_168/Conv2D/ReadVariableOp2b
/sequential_56/conv2d_169/BiasAdd/ReadVariableOp/sequential_56/conv2d_169/BiasAdd/ReadVariableOp2`
.sequential_56/conv2d_169/Conv2D/ReadVariableOp.sequential_56/conv2d_169/Conv2D/ReadVariableOp2b
/sequential_56/conv2d_170/BiasAdd/ReadVariableOp/sequential_56/conv2d_170/BiasAdd/ReadVariableOp2`
.sequential_56/conv2d_170/Conv2D/ReadVariableOp.sequential_56/conv2d_170/Conv2D/ReadVariableOp2^
-sequential_56/dense_56/BiasAdd/ReadVariableOp-sequential_56/dense_56/BiasAdd/ReadVariableOp2\
,sequential_56/dense_56/MatMul/ReadVariableOp,sequential_56/dense_56/MatMul/ReadVariableOp:a ]
/
_output_shapes
:џџџџџџџџџPP
*
_user_specified_nameconv2d_168_input
Є

і
D__inference_dense_56_layer_call_and_return_conditional_losses_599714

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ

џ
F__inference_conv2d_169_layer_call_and_return_conditional_losses_599570

inputs8
conv2d_readvariableop_resource:00-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:00*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ%%0*
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
:џџџџџџџџџ%%0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ%%0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ''0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ''0
 
_user_specified_nameinputs
Њ

џ
F__inference_conv2d_168_layer_call_and_return_conditional_losses_599504

inputs8
conv2d_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџNN0*
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
:џџџџџџџџџNN0g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџNN0w
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
ё
 
+__inference_conv2d_170_layer_call_fn_599626

inputs!
unknown:00
	unknown_0:0
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_170_layer_call_and_return_conditional_losses_598949w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ0
 
_user_specified_nameinputs
Ь
K
/__inference_activation_168_layer_call_fn_599509

inputs
identityР
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџNN0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_activation_168_layer_call_and_return_conditional_losses_598898h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџNN0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџNN0:W S
/
_output_shapes
:џџџџџџџџџNN0
 
_user_specified_nameinputs"ПL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Х
serving_defaultБ
U
conv2d_168_inputA
"serving_default_conv2d_168_input:0џџџџџџџџџPP<
dense_560
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ЕЬ

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
layer-12
layer_with_weights-3
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
  _jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
М
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_random_generator"
_tf_keras_layer
н
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
М
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator"
_tf_keras_layer
н
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias
 X_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
М
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
k_random_generator"
_tf_keras_layer
Ѕ
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias"
_tf_keras_layer
X
0
1
:2
;3
V4
W5
x6
y7"
trackable_list_wrapper
X
0
1
:2
;3
V4
W5
x6
y7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
є
trace_0
trace_1
trace_2
trace_32
.__inference_sequential_56_layer_call_fn_599015
.__inference_sequential_56_layer_call_fn_599363
.__inference_sequential_56_layer_call_fn_599384
.__inference_sequential_56_layer_call_fn_599245Р
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
 ztrace_0ztrace_1ztrace_2ztrace_3
т
trace_0
trace_1
trace_2
trace_32я
I__inference_sequential_56_layer_call_and_return_conditional_losses_599424
I__inference_sequential_56_layer_call_and_return_conditional_losses_599485
I__inference_sequential_56_layer_call_and_return_conditional_losses_599279
I__inference_sequential_56_layer_call_and_return_conditional_losses_599313Р
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
 ztrace_0ztrace_1ztrace_2ztrace_3
еBв
!__inference__wrapped_model_598834conv2d_168_input"
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
ј
	iter
beta_1
beta_2

decay
learning_ratemm:m;mVmWmxmymvv:v;vVvWvxvyv"
	optimizer
-
serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
trace_02в
+__inference_conv2d_168_layer_call_fn_599494Ђ
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
 ztrace_0

trace_02э
F__inference_conv2d_168_layer_call_and_return_conditional_losses_599504Ђ
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
 ztrace_0
+:)02conv2d_168/kernel
:02conv2d_168/bias
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ѕ
trace_02ж
/__inference_activation_168_layer_call_fn_599509Ђ
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
 ztrace_0

trace_02ё
J__inference_activation_168_layer_call_and_return_conditional_losses_599514Ђ
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ј
 trace_02й
2__inference_max_pooling2d_168_layer_call_fn_599519Ђ
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
 z trace_0

Ёtrace_02є
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_599524Ђ
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
 zЁtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
Ю
Їtrace_0
Јtrace_12
,__inference_dropout_168_layer_call_fn_599529
,__inference_dropout_168_layer_call_fn_599534Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zЇtrace_0zЈtrace_1

Љtrace_0
Њtrace_12Щ
G__inference_dropout_168_layer_call_and_return_conditional_losses_599539
G__inference_dropout_168_layer_call_and_return_conditional_losses_599551Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zЉtrace_0zЊtrace_1
"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ё
Аtrace_02в
+__inference_conv2d_169_layer_call_fn_599560Ђ
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
 zАtrace_0

Бtrace_02э
F__inference_conv2d_169_layer_call_and_return_conditional_losses_599570Ђ
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
 zБtrace_0
+:)002conv2d_169/kernel
:02conv2d_169/bias
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
В
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
ѕ
Зtrace_02ж
/__inference_activation_169_layer_call_fn_599575Ђ
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
 zЗtrace_0

Иtrace_02ё
J__inference_activation_169_layer_call_and_return_conditional_losses_599580Ђ
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
 zИtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ј
Оtrace_02й
2__inference_max_pooling2d_169_layer_call_fn_599585Ђ
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
 zОtrace_0

Пtrace_02є
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_599590Ђ
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
 zПtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Ю
Хtrace_0
Цtrace_12
,__inference_dropout_169_layer_call_fn_599595
,__inference_dropout_169_layer_call_fn_599600Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zХtrace_0zЦtrace_1

Чtrace_0
Шtrace_12Щ
G__inference_dropout_169_layer_call_and_return_conditional_losses_599605
G__inference_dropout_169_layer_call_and_return_conditional_losses_599617Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zЧtrace_0zШtrace_1
"
_generic_user_object
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
ё
Юtrace_02в
+__inference_conv2d_170_layer_call_fn_599626Ђ
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
 zЮtrace_0

Яtrace_02э
F__inference_conv2d_170_layer_call_and_return_conditional_losses_599636Ђ
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
 zЯtrace_0
+:)002conv2d_170/kernel
:02conv2d_170/bias
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
В
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
ѕ
еtrace_02ж
/__inference_activation_170_layer_call_fn_599641Ђ
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
 zеtrace_0

жtrace_02ё
J__inference_activation_170_layer_call_and_return_conditional_losses_599646Ђ
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
 zжtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
ј
мtrace_02й
2__inference_max_pooling2d_170_layer_call_fn_599651Ђ
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
 zмtrace_0

нtrace_02є
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_599656Ђ
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
 zнtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
Ю
уtrace_0
фtrace_12
,__inference_dropout_170_layer_call_fn_599661
,__inference_dropout_170_layer_call_fn_599666Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zуtrace_0zфtrace_1

хtrace_0
цtrace_12Щ
G__inference_dropout_170_layer_call_and_return_conditional_losses_599671
G__inference_dropout_170_layer_call_and_return_conditional_losses_599683Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zхtrace_0zцtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
ё
ьtrace_02в
+__inference_flatten_56_layer_call_fn_599688Ђ
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
 zьtrace_0

эtrace_02э
F__inference_flatten_56_layer_call_and_return_conditional_losses_599694Ђ
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
 zэtrace_0
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
я
ѓtrace_02а
)__inference_dense_56_layer_call_fn_599703Ђ
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
 zѓtrace_0

єtrace_02ы
D__inference_dense_56_layer_call_and_return_conditional_losses_599714Ђ
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
 zєtrace_0
": 	2dense_56/kernel
:2dense_56/bias
 "
trackable_list_wrapper

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
13"
trackable_list_wrapper
0
ѕ0
і1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_56_layer_call_fn_599015conv2d_168_input"Р
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
.__inference_sequential_56_layer_call_fn_599363inputs"Р
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
.__inference_sequential_56_layer_call_fn_599384inputs"Р
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
B
.__inference_sequential_56_layer_call_fn_599245conv2d_168_input"Р
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_599424inputs"Р
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_599485inputs"Р
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
ЅBЂ
I__inference_sequential_56_layer_call_and_return_conditional_losses_599279conv2d_168_input"Р
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
ЅBЂ
I__inference_sequential_56_layer_call_and_return_conditional_losses_599313conv2d_168_input"Р
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
дBб
$__inference_signature_wrapper_599342conv2d_168_input"
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
пBм
+__inference_conv2d_168_layer_call_fn_599494inputs"Ђ
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
F__inference_conv2d_168_layer_call_and_return_conditional_losses_599504inputs"Ђ
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
уBр
/__inference_activation_168_layer_call_fn_599509inputs"Ђ
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
ўBћ
J__inference_activation_168_layer_call_and_return_conditional_losses_599514inputs"Ђ
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
цBу
2__inference_max_pooling2d_168_layer_call_fn_599519inputs"Ђ
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
Bў
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_599524inputs"Ђ
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
ђBя
,__inference_dropout_168_layer_call_fn_599529inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђBя
,__inference_dropout_168_layer_call_fn_599534inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
G__inference_dropout_168_layer_call_and_return_conditional_losses_599539inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
G__inference_dropout_168_layer_call_and_return_conditional_losses_599551inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
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
+__inference_conv2d_169_layer_call_fn_599560inputs"Ђ
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
F__inference_conv2d_169_layer_call_and_return_conditional_losses_599570inputs"Ђ
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
уBр
/__inference_activation_169_layer_call_fn_599575inputs"Ђ
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
ўBћ
J__inference_activation_169_layer_call_and_return_conditional_losses_599580inputs"Ђ
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
цBу
2__inference_max_pooling2d_169_layer_call_fn_599585inputs"Ђ
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
Bў
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_599590inputs"Ђ
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
ђBя
,__inference_dropout_169_layer_call_fn_599595inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђBя
,__inference_dropout_169_layer_call_fn_599600inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
G__inference_dropout_169_layer_call_and_return_conditional_losses_599605inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
G__inference_dropout_169_layer_call_and_return_conditional_losses_599617inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
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
+__inference_conv2d_170_layer_call_fn_599626inputs"Ђ
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
F__inference_conv2d_170_layer_call_and_return_conditional_losses_599636inputs"Ђ
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
уBр
/__inference_activation_170_layer_call_fn_599641inputs"Ђ
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
ўBћ
J__inference_activation_170_layer_call_and_return_conditional_losses_599646inputs"Ђ
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
цBу
2__inference_max_pooling2d_170_layer_call_fn_599651inputs"Ђ
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
Bў
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_599656inputs"Ђ
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
ђBя
,__inference_dropout_170_layer_call_fn_599661inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ђBя
,__inference_dropout_170_layer_call_fn_599666inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
G__inference_dropout_170_layer_call_and_return_conditional_losses_599671inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
G__inference_dropout_170_layer_call_and_return_conditional_losses_599683inputs"Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
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
+__inference_flatten_56_layer_call_fn_599688inputs"Ђ
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
F__inference_flatten_56_layer_call_and_return_conditional_losses_599694inputs"Ђ
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
)__inference_dense_56_layer_call_fn_599703inputs"Ђ
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
D__inference_dense_56_layer_call_and_return_conditional_losses_599714inputs"Ђ
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
ї	variables
ј	keras_api

љtotal

њcount"
_tf_keras_metric
c
ћ	variables
ќ	keras_api

§total

ўcount
џ
_fn_kwargs"
_tf_keras_metric
0
љ0
њ1"
trackable_list_wrapper
.
ї	variables"
_generic_user_object
:  (2total
:  (2count
0
§0
ў1"
trackable_list_wrapper
.
ћ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.02Adam/conv2d_168/kernel/m
": 02Adam/conv2d_168/bias/m
0:.002Adam/conv2d_169/kernel/m
": 02Adam/conv2d_169/bias/m
0:.002Adam/conv2d_170/kernel/m
": 02Adam/conv2d_170/bias/m
':%	2Adam/dense_56/kernel/m
 :2Adam/dense_56/bias/m
0:.02Adam/conv2d_168/kernel/v
": 02Adam/conv2d_168/bias/v
0:.002Adam/conv2d_169/kernel/v
": 02Adam/conv2d_169/bias/v
0:.002Adam/conv2d_170/kernel/v
": 02Adam/conv2d_170/bias/v
':%	2Adam/dense_56/kernel/v
 :2Adam/dense_56/bias/vЈ
!__inference__wrapped_model_598834:;VWxyAЂ>
7Ђ4
2/
conv2d_168_inputџџџџџџџџџPP
Њ "3Њ0
.
dense_56"
dense_56џџџџџџџџџЖ
J__inference_activation_168_layer_call_and_return_conditional_losses_599514h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџNN0
Њ "-Ђ*
# 
0џџџџџџџџџNN0
 
/__inference_activation_168_layer_call_fn_599509[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџNN0
Њ " џџџџџџџџџNN0Ж
J__inference_activation_169_layer_call_and_return_conditional_losses_599580h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ%%0
Њ "-Ђ*
# 
0џџџџџџџџџ%%0
 
/__inference_activation_169_layer_call_fn_599575[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ%%0
Њ " џџџџџџџџџ%%0Ж
J__inference_activation_170_layer_call_and_return_conditional_losses_599646h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ0
Њ "-Ђ*
# 
0џџџџџџџџџ0
 
/__inference_activation_170_layer_call_fn_599641[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ0
Њ " џџџџџџџџџ0Ж
F__inference_conv2d_168_layer_call_and_return_conditional_losses_599504l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџPP
Њ "-Ђ*
# 
0џџџџџџџџџNN0
 
+__inference_conv2d_168_layer_call_fn_599494_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџPP
Њ " џџџџџџџџџNN0Ж
F__inference_conv2d_169_layer_call_and_return_conditional_losses_599570l:;7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ''0
Њ "-Ђ*
# 
0џџџџџџџџџ%%0
 
+__inference_conv2d_169_layer_call_fn_599560_:;7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ''0
Њ " џџџџџџџџџ%%0Ж
F__inference_conv2d_170_layer_call_and_return_conditional_losses_599636lVW7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ0
Њ "-Ђ*
# 
0џџџџџџџџџ0
 
+__inference_conv2d_170_layer_call_fn_599626_VW7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ0
Њ " џџџџџџџџџ0Ѕ
D__inference_dense_56_layer_call_and_return_conditional_losses_599714]xy0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 }
)__inference_dense_56_layer_call_fn_599703Pxy0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЗ
G__inference_dropout_168_layer_call_and_return_conditional_losses_599539l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ''0
p 
Њ "-Ђ*
# 
0џџџџџџџџџ''0
 З
G__inference_dropout_168_layer_call_and_return_conditional_losses_599551l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ''0
p
Њ "-Ђ*
# 
0џџџџџџџџџ''0
 
,__inference_dropout_168_layer_call_fn_599529_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ''0
p 
Њ " џџџџџџџџџ''0
,__inference_dropout_168_layer_call_fn_599534_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ''0
p
Њ " џџџџџџџџџ''0З
G__inference_dropout_169_layer_call_and_return_conditional_losses_599605l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p 
Њ "-Ђ*
# 
0џџџџџџџџџ0
 З
G__inference_dropout_169_layer_call_and_return_conditional_losses_599617l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p
Њ "-Ђ*
# 
0џџџџџџџџџ0
 
,__inference_dropout_169_layer_call_fn_599595_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p 
Њ " џџџџџџџџџ0
,__inference_dropout_169_layer_call_fn_599600_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p
Њ " џџџџџџџџџ0З
G__inference_dropout_170_layer_call_and_return_conditional_losses_599671l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p 
Њ "-Ђ*
# 
0џџџџџџџџџ0
 З
G__inference_dropout_170_layer_call_and_return_conditional_losses_599683l;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p
Њ "-Ђ*
# 
0џџџџџџџџџ0
 
,__inference_dropout_170_layer_call_fn_599661_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p 
Њ " џџџџџџџџџ0
,__inference_dropout_170_layer_call_fn_599666_;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ0
p
Њ " џџџџџџџџџ0Ћ
F__inference_flatten_56_layer_call_and_return_conditional_losses_599694a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ0
Њ "&Ђ#

0џџџџџџџџџ
 
+__inference_flatten_56_layer_call_fn_599688T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ0
Њ "џџџџџџџџџ№
M__inference_max_pooling2d_168_layer_call_and_return_conditional_losses_599524RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_168_layer_call_fn_599519RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
M__inference_max_pooling2d_169_layer_call_and_return_conditional_losses_599590RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_169_layer_call_fn_599585RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
M__inference_max_pooling2d_170_layer_call_and_return_conditional_losses_599656RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_170_layer_call_fn_599651RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
I__inference_sequential_56_layer_call_and_return_conditional_losses_599279|:;VWxyIЂF
?Ђ<
2/
conv2d_168_inputџџџџџџџџџPP
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Щ
I__inference_sequential_56_layer_call_and_return_conditional_losses_599313|:;VWxyIЂF
?Ђ<
2/
conv2d_168_inputџџџџџџџџџPP
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
I__inference_sequential_56_layer_call_and_return_conditional_losses_599424r:;VWxy?Ђ<
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
I__inference_sequential_56_layer_call_and_return_conditional_losses_599485r:;VWxy?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ё
.__inference_sequential_56_layer_call_fn_599015o:;VWxyIЂF
?Ђ<
2/
conv2d_168_inputџџџџџџџџџPP
p 

 
Њ "џџџџџџџџџЁ
.__inference_sequential_56_layer_call_fn_599245o:;VWxyIЂF
?Ђ<
2/
conv2d_168_inputџџџџџџџџџPP
p

 
Њ "џџџџџџџџџ
.__inference_sequential_56_layer_call_fn_599363e:;VWxy?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_56_layer_call_fn_599384e:;VWxy?Ђ<
5Ђ2
(%
inputsџџџџџџџџџPP
p

 
Њ "џџџџџџџџџП
$__inference_signature_wrapper_599342:;VWxyUЂR
Ђ 
KЊH
F
conv2d_168_input2/
conv2d_168_inputџџџџџџџџџPP"3Њ0
.
dense_56"
dense_56џџџџџџџџџ