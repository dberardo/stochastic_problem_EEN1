scenarios=list()
numberOfBuses=48
numberOfLines=60
#################### SCENARIO-DEPENDENT PARAMETERS ###############
#hist(rweibull(10000,2,1),40,add=F,col=4,freq = F) #wind speed distribution
#contract condition violation at lines
scenarios$ccv="
  W	o	1000
	M	m	1000
	G	a	1000"
scenarios$bmva=100
#cost of power variation at buses
scenarios$cpvB=matrix(nrow = 3,ncol=9,c(
                          rep(51.72,4*3),rep(51.72,3),rep(51.72,4*3)),byrow = F)
rownames(scenarios$cpvB)=c("o","p","t")
scenarios$cpvC=matrix(nrow = 3,ncol=9,c(
                          rep(52.85,4*3),rep(52.85,3),rep(52.85,4*3)),byrow = F)
rownames(scenarios$cpvC)=c("o","p","t")
#P_fluctuation at wind generators
scenarios$P_fluctB=matrix(nrow = 3,ncol=9,c(
                          rep(c(100,100,100),4),c(160,40,80),rep(c(100,100,100),4)),byrow = F)
rownames(scenarios$P_fluctB)=c("o","p","t")
scenarios$P_fluctC=matrix(nrow = 3,ncol=9,c(
                          rep(c(100,100,100),4),c(160,40,80),rep(c(100,100,100),4)),byrow = F)
rownames(scenarios$P_fluctC)=c("o","p","t")

#################### FIXED PARAMETERS ###############
#buses
scenarios$nodes="A  B	C	D	E	F	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v"
#buses types
#scenarios$types="2  2	0	0	0	0	2	0	0	0	0	0	3	2	2	2	0	2	0	0	2	2	2	0	2	2	0	0	0	0	2	0	0	0	0	0	2	2	2	2	0	2	0	0	2	2	2	0"
#lines
scenarios$lines="(A,B)  (A,C)	(A,E)	(B,D)	(B,F)	(C,I)	(C,X)	(D,I)	(E,J)	(F,J)	(G,H)	(H,I)	(H,J)	(I,K)	(I,L)	(J,K)	(J,L)	(K,M)	(K,N)	(L,M)	(L,W)	(M,W)	(N,P)	(O,P)	(O,U)	(O,U)	(O,X)	(P,Q)	(P,S)	(Q,R)	(Q,V)	(R,U)	(R,U)	(S,T)	(S,T)	(T,W)	(T,W)	(U,V)	(Y,Z)	(Y,a)	(Y,c)	(Z,b)	(Z,d)	(a,g)	(a,v)	(b,g)	(c,h)	(d,h)	(e,f)	(f,g)	(f,h)	(g,i)	(g,j)	(h,i)	(h,j)	(i,k)	(i,l)	(j,k)	(j,u)	(k,u)	(l,n)	(m,n)	(m,s)	(m,s)	(m,v)	(n,o)	(n,q)	(o,p)	(o,t)	(p,s)	(p,s)	(q,r)	(q,r)	(r,u)	(r,u)	(s,t)	(W,o)	(M,m)	(G,a)"
###### P_load ######
scenarios$P_load="A	1.08
B	0.97
C	1.8
D	0.74
E	0.71
F	1.36
G	1.25
H	1.71
I	1.75
J	1.95
K	0
L	0
M	2.65
N	1.94
O	3.17
P	1
Q	0
R	3.33
S	1.81
T	1.28
U	0
V	0
W	0
X	0
Y	1.08
Z	0.97
a	1.8
b	0.74
c	0.71
d	1.36
e	1.25
f	1.71
g	1.75
h	1.95
i	0
j	0
k	2.65
l	1.94
m	3.17
n	1
o	0
p	0
q	1.81
r	1.28
s	0
t	0
u	0
v	0"
######### P_gen ###########
scenarios$P_gen="A	1.72
B	1.72
C	0
D	0
E	0
F	0
G	2.4
H	0
I	0
J	0
K	0
L	0
M	2.853
N	0
O	2.15
P	1.55
Q	0
R	4
S	0
T	0
U	4
V	3
W	6.6
X	0
Y	1.72
Z	1.72
a	0
b	0
c	0
d	0
e	2.4
f	0
g	0
h	0
i	0
j	0
k	2.853
l	0
m	2.15
n	1.55
o	0
p	1
q	0
r	0
s	1
t	3
u	6.6
v	0"
######## P_gen_min #######
scenarios$P_gen_min="A	0.2
B	0.2
C	0.5
D	0.5
E	0.5
F	0.5
G	0.3
H	0.5
I	0.5
J	0.5
K	0.5
L	0.5
M	0.7
N	0.5
O	0.3
P	0.3
Q	0.5
R	0.25
S	0.5
T	0.5
U	0.25
V	1
W	0.4
X	0.5
Y	0.2
Z	0.2
a	0.5
b	0.5
c	0.5
d	0.5
e	0.3
f	0.5
g	0.5
h	0.5
i	0.5
j	0.5
k	0.7
l	0.5
m	0.3
n	0.3
o	0.5
p	0.25
q	0.5
r	0.5
s	0.25
t	1
u	0.4
v	0.5"
###### P_gen_max #######
scenarios$P_gen_max="A	1
B	1
C	1.1
D	1.1
E	1.1
F	1.1
G	1
H	1.1
I	1.1
J	1.1
K	1.1
L	1.1
M	1
N	1.1
O	1
P	1
Q	1.1
R	1
S	1.1
T	1.1
U	1
V	1
W	1
X	1.1
Y	1
Z	1
a	1.1
b	1.1
c	1.1
d	1.1
e	1
f	1.1
g	1.1
h	1.1
i	1.1
j	1.1
k	1
l	1.1
m	1
n	1
o	1.1
p	1
q	1.1
r	1.1
s	1
t	1
u	1
v	1.1"
###### admittance #####
scenarios$admittance="A  B	0.014
A	C	0.211
A	E	0.085
B	D	0.127
B	F	0.192
C	I	0.119
C	X	0.084
D	I	0.104
E	J	0.088
F	J	0.061
G	H	0.061
H	I	0.165
H	J	0.165
I	K	0.084
I	L	0.084
J	K	0.084
J	L	0.084
K	M	0.048
K	N	0.042
L	M	0.048
L	W	0.097
M	W	0.087
N	P	0.059
O	P	0.017
O	U	0.049
O	U	0.049
O	X	0.052
P	Q	0.026
P	S	0.023
Q	R	0.014
Q	V	0.105
R	U	0.026
R	U	0.026
S	T	0.04
S	T	0.04
T	W	0.022
T	W	0.022
U	V	0.068
Y	Z	0.014
Y	a	0.211
Y	c	0.085
Z	b	0.127
Z	d	0.192
a	g	0.119
a	v	0.084
b	g	0.104
c	h	0.088
d	h	0.061
e	f	0.061
f	g	0.165
f	h	0.165
g	i	0.084
g	j	0.084
h	i	0.084
h	j	0.084
i	k	0.048
i	l	0.042
j	k	0.048
j	u	0.097
k	u	0.087
l	n	0.059
m	n	0.017
m	s	0.049
m	s	0.049
m	v	0.052
n	o	0.026
n	q	0.023
o	p	0.014
o	t	0.105
p	s	0.026
p	s	0.026
q	r	0.04
q	r	0.04
r	u	0.022
r	u	0.022
s	t	0.068
W	o	0.074
M	m	0.075
G	a	0.161"
###### Bus types: 0:PQ 2:PV(Gen),3:Slack ######
scenarios$Types="
A  2
B	2
C	0
D	0
E	0
F	0
G	2
H	0
I	0
J	0
K	0
L	0
M	3
N	2
O	2
P	2
Q	0
R	2
S	0
T	0
U	2
V	2
W	2
X	0
Y	2
Z	2
a	0
b	0
c	0
d	0
e	2
f	0
g	0
h	0
i	0
j	0
k	2
l	2
m	2
n	2
o	0
p	2
q	0
r	0
s	2
t	2
u	2
v	0"
############ Buses power injection (not needed anymore) #######
scenarios$P_inj="A  280
B	269
C	180
D	74
E	71
F	136
G	365
H	171
I	175
J	195
K	0
L	0
M	550.3
N	194
O	532
P	255
Q	0
R	733
S	181
T	128
U	400
V	300
W	660
X	0
Y	280
Z	269
a	180
b	74
c	71
d	136
e	365
f	171
g	175
h	195
i	0
j	0
k	550.3
l	194
m	532
n	255
o	0
p	733
q	181
r	128
s	400
t	300
u	660
v	0"
###### P_lines_max ######
scenarios$P_lines_max="A  B	193
A	C	208
A	E	208
B	D	208
B	F	208
C	I	208
C	X	510
D	I	208
E	J	208
F	J	193
G	H	208
H	I	208
H	J	208
I	K	510
I	L	510
J	K	510
J	L	510
K	M	600
K	N	600
L	M	600
L	W	600
M	W	600
N	P	600
O	P	600
O	U	600
O	U	600
O	X	600
P	Q	600
P	S	600
Q	R	600
Q	V	600
R	U	600
R	U	600
S	T	600
S	T	600
T	W	600
T	W	600
U	V	600
Y	Z	193
Y	a	208
Y	c	208
Z	b	208
Z	d	208
a	g	208
a	v	510
b	g	208
c	h	208
d	h	193
e	f	208
f	g	208
f	h	208
g	i	510
g	j	510
h	i	510
h	j	510
i	k	600
i	l	600
j	k	600
j	u	600
k	u	600
l	n	600
m	n	600
m	s	600
m	s	600
m	v	600
n	o	600
n	q	600
o	p	600
o	t	600
p	s	600
p	s	600
q	r	600
q	r	600
r	u	600
r	u	600
s	t	600
W	o	600
M	m	600
G	a	208"
###### Costs (only needed in DCOPF) ########
scenarios$Costs="A  29.3
B	29.3
C	0
D	0
E	0
F	0
G	43.6
H	0
I	0
J	0
K	0
L	0
M	48.6
N	0
O	24.7
P	12.4
Q	0
R	4.42
S	0
T	0
U	4.42
V	0.001
W	12.1
X	0
Y	29.3
Z	29.3
a	0
b	0
c	0
d	0
e	43.6
f	0
g	0
h	0
i	0
j	0
k	48.6
l	0
m	24.7
n	12.4
o	0
p	4.42
q	0
r	0
s	4.42
t	0.001
u	12.1
v	0"
#################### EXPORT PARAMETERS ###############
attach(scenarios)
printInFile <- function(label,element,scenario,PS=T){
  print(label)
  write(paste(ifelse(PS,"param ","set "),label," :=\t",sep=""),fileName,append = T)
  for(r in 1:nrow(element))
    write(x = paste("\t",rownames(element)[r],"\t",element[r,scenario],sep=""),file=fileName,append=T)
  write("\t;\n",fileName,append = T)
}
for(i in 1:9){
  fileName=paste("Scenario",i,".dat",sep="")
  write("# generated with R\n",fileName,append = F)
  write(paste("param bmva :=\t",bmva,"\n;",sep=""),fileName,append=T)
  write(paste("param ccv :=\t",ccv,"\n;",sep=""),fileName,append=T)
  printInFile("cpvB",cpvB,i)
  printInFile("cpvC",cpvC,i)
  printInFile("P_fluctB",P_fluctB,i)
  printInFile("P_fluctC",P_fluctC,i)
  write(paste("set Nodes :=\t",nodes,"\n;",sep=""),fileName,append=T)
  write(paste("set Lines :=\t",lines,"\n;",sep=""),fileName,append=T)
  write(paste("param Types :=\t",Types,"\n;",sep=""),fileName,append=T)
  write(paste("param Costs :=\t",Costs,"\n;",sep=""),fileName,append=T)
  write(paste("param Plines_max1 :=\n",P_lines_max,"\n;",sep=""),fileName,append=T)
  write(paste("param P_gen :=\n",P_gen,"\n;",sep=""),fileName,append=T)
  write(paste("param P_load :=\n",P_load,"\n;",sep=""),fileName,append=T)
  write(paste("param P_gen_max :=\n",P_gen_max,"\n;",sep=""),fileName,append=T)
  write(paste("param P_gen_min :=\n",P_gen_min,"\n;",sep=""),fileName,append=T)
  write(paste("param X :=\n",admittance,"\n;",sep=""),fileName,append=T)
}