5 REM BREAKDOWNS, DEMONSTRATES CHAINS, PAGE 72
10 PRINT "DEPARTMENT STORE: STAFF ANALYSIS"
20 DIM N(2),L$(100),N$(100),M$(100),S$(100),A(100,3),T$(2),R$(3)
25 DIM L(100)
30 DATA "FEMALE", "MALE", "DEPARTMENT", "AGE", "SALARY"
40 READ T$(1),T$(2),R$(1),R$(2),R$(3)
50 DEF FNC(Y)=Y-3*INT(Y/4)
60 REM FNC CYCLES 1,2,3,1,2 AS Y GOES 1 T0 5
70 PRINT "HOW MANY STAFF"
80 INPUT N
90 PRINT "FIRSTNAME,LASTNAME, SEX, DEPT., AGE, SALARY"
100 LET N(2)=0
110 FOR I=3 TO N+2
120 INPUT N$(I),M$(I),S$(I),A(I,1),A(I,2),A(I,3)
130 IF S$(I)=T$(1) THEN 150
140 LET N(2)=N(2)+1
150 NEXT I
160 LET N(1)= N-N(2)
170 REM INPUT COMPLETE
180 REM BEGIN ANALYSIS
190 GO SUB 1000
200 FOR K=1 TO 3
210 PRINT
220 PRINT "REPORT";K;"ORDERED BY "; R$(K)
230 PRINT
240 FOR Z=1 TO 2
250 GO SUB 2000
260 PRINT
270 PRINT T$(Z); " STAFF"
280 PRINT "NAME" , , R$(K), R$(FNC(K+1)), R$(FNC(K+2))
290 LET R=L(Z)
300 IF R=0 THEN 340
310 PRINT N$(R), M$(R), A(R,K), A(R,FNC(K+1)),A(R,FNC(K+2))
320 LET R=L(R)
330 GO TO 300
340 NEXT Z
350 NEXT K
360 GO TO 9999
1000 REM LINK INTERTWINED CHAINS; N PEOPLE
1010 LET L(1)=0
1020 LET L(2)=0
1030 FOR I=3 TO N+2
1040 LET Q=1
1050 IF S$(I)= "FEMALE" THEN 1070
1060 LET Q=2
1070 LET L(I)=L(Q)
1080 LET L(Q)=I
1090 NEXT I
1100 RETURN
2000 REM RIPPLE SORT. CHAIN L( ); HEAD L(Z);
2005 REM NUMBER OF ROWS N(Z); COLUMN K OF A(,).
2010 FOR S=1 TO N(Z)-1
2020 LET M=0
2030 LET C=Z
2040 FOR I=1 TO N(Z)-S
2050 LET P=C
2060 LET C=L(C)
2070 LET F=L(C)
2080 IF A(C,K) <= A(F,K) THEN 2150
2090 LET M=1
2100 LET X=L(P)
2110 LET L(P)=L(C)
2120 LET L(C)=L(F)
2130 LET L(F)=X
2140 LET C=F
2150 NEXT I
2160 IF M=0 THEN 2180
2170 NEXT S
2180 RETURN
9999 END
