5 REM AREA CALCULATOR, DEMONSTRATE BRANCHES, PAGE 45
10 PRINT "***AREA CALCULATOR***"
20 PRINT
30 PRINT "TYPE: RECTANGLE, TRIANGLE OR CIRCLE"
40 INPUT S$
50 REM
60 IF S$="RECTANGLE" THEN 130
70 IF S$="TRIANGLE" THEN 180
80 IF S$="CIRCLE" THEN 240
90 PRINT S$,"MEANS STOP"
100 GO TO 320
110 REM
120 REM
130 PRINT "TYPE BREADTH & DEPTH "
140 INPUT B,D
150 LET Z=B*D
160 GO TO 280
170 REM
180 PRINT "TYPE LENGTHS OF 3 SIDES"
190 INPUT A,B,C
200 LET S=0.5*(A+B+C)
210 LET Z=SQR(S*(S-A)*(S-B)*(S-C))
220 GO TO 280
230 REM
240 PRINT "TYPE THE DIAMETER"
250 INPUT D
260 LET Z=3.141592*D^2/4
270 REM
280 REM FLOWS MERGE HERE
290 PRINT
300 PRINT "AREA OF ";S$;" IS";Z
310 GO TO 20
320 END