clear,clc;

syms a b c d e;
equ = [e/a==0.5,e+c==6,12+3*b==2*c+2*d,6+2*a==0.5*c+d+2*e,b==0.25*c];

answ = solve(equ,[a,b,c,d,e])