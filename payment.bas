5 REM PAYMENT CALCULATOR, PAGE 21
10 PRINT "TYPE: SUM, YEARS, INTEREST%"
20 INPUT S, N, P
30 LET R=P/100
40 LET M=S*R*(1+R)^N/(12*((1+R)^N-1))
50 PRINT "MONTHLY BURDEN = $";M
60 PRINT "YOU LOSE $";M*(12*N)-S
70 END