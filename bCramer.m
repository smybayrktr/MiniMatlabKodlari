% 2x+y+z=3
% x-y-z=0
% x+2y+z=0
% doğrusal denklemlerinin kökünü Cramer yöntemi ile bulunuz.
clear all;close all;clc;
A=[2 1 1 ; 1 -1 -1 ; 1 2 1]
b=[3 ; 0 ; 0]
Ax=[3 1 1 ; 0 -1 -1 ; 0 2 1]
Bx=[2 3 1 ; 1 0 -1 ; 1 0 1]
Cx=[2 1 3 ; 1 -1 0 ; 1 2 0]
detA=det(A)
x=det(Ax)/detA
y=det(Bx)/detA
z=det(Cx)/detA