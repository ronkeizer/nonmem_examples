;; 1. Based on: run3
;; 2. Description: for scm, without tables

;; x1. Author: user

$PROBLEM PK

$INPUT ID TIME DV AMT CMT MDV EVID WT CRCL AGE SEX CENT

$DATA pktab1 IGNORE=@;

$SUBROUTINES ADVAN3 TRANS4

$PK
TVCL = THETA(1)
CL = TVCL * EXP(ETA(1))
TVV1 = THETA(2)
V1 = TVV1 * EXP(ETA(2))
Q  = THETA(3)
V2 = THETA(4)
S1 = V1/1000

$ERROR
IPRED = F
Y = IPRED * (1+EPS(2))+ EPS(1)
ADD = SIGMA(1,1)
PROP = SIGMA(2,2)
W = SQRT(PROP*IPRED**2 + ADD)
IRES = DV-IPRED
IWRES = IRES/W

$THETA
(2,  10, 100) ; CL
(20, 100, 500) ; V
(0, 10, 100); Q
(0, 100, 500); V2

$OMEGA BLOCK(2)
0.2 ; IIV CL
0.1 0.2 ; IIV V2

$SIGMA
1 ; Additive error PK
.01 ; Proportional error PK

$EST METHOD=1 INTER MAXEVAL=2000 NOABORT SIG=4 PRINT=1 POSTHOC


