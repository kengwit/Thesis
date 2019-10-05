function [E,v,rho,g,coord,etopol,bc,f]=inputFE3 
E=40e9; v=0.2; rho=2.4e+3; g=0*9.81; 
coord=[0.0 0.0 0.0
       0.1 0.0 0.0
       0.0 0.1 0.0
       0.1 0.1 0.0
       0.0 0.0 0.1
       0.1 0.0 0.1
       0.0 0.1 0.1
       0.1 0.1 0.1
       0.0 0.0 0.2
       0.1 0.0 0.2
       0.0 0.1 0.2
       0.1 0.1 0.2
       0.0 0.0 0.3
       0.1 0.0 0.3
       0.0 0.1 0.3
       0.1 0.1 0.3
       0.0 0.0 0.4
       0.1 0.0 0.4
       0.0 0.1 0.4
       0.1 0.1 0.4
       0.0 0.0 0.5
       0.1 0.0 0.5
       0.0 0.1 0.5
       0.1 0.1 0.5
       0.0 0.0 0.6
       0.1 0.0 0.6
       0.0 0.1 0.6
       0.1 0.1 0.6
       0.0 0.0 0.7
       0.1 0.0 0.7
       0.0 0.1 0.7
       0.1 0.1 0.7
       0.0 0.0 0.8
       0.1 0.0 0.8
       0.0 0.1 0.8
       0.1 0.1 0.8
       0.0 0.0 0.9
       0.1 0.0 0.9
       0.0 0.1 0.9
       0.1 0.1 0.9
       0.0 0.0 1.0
       0.1 0.0 1.0
       0.0 0.1 1.0
       0.1 0.1 1.0];
etopol=[ 1  5  6  2  3  7  8  4
         5  9 10  6  7 11 12  8
         9 13 14 10 11 15 16 12
        13 17 18 14 15 19 20 16
        17 21 22 18 19 23 24 20
        21 25 26 22 23 27 28 24
        25 29 30 26 27 31 32 28
        29 33 34 30 31 35 36 32
        33 37 38 34 35 39 40 36
        37 41 42 38 39 43 44 40];
bc=[ 1 0 %degree of freedom x1
     2 0 %y1
     3 0 %z1
     5 0
     6 0
     7 0
     9 0
    12 0];
f=zeros(3*size(coord,1),1); f(123:3:132)=-0.25e+6; %force on degree of freedom
%f=zeros(3*size(coord,1),1); f(17)=-0.25e+6;