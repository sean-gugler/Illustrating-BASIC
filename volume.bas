5 REM DEMONSTRATE DEF, PAGE 26
10 DEF FNC(X)=3.1415892*X^2/4
20 PRINT "TYPE: L,D & I"
30 INPUT L,D,I
40 LET V=L*(FNC(D)-FNC(I))
50 PRINT "VOLUME IS";V
60 END