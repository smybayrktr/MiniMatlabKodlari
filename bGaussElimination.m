%Gauss Elimination yöntemi kullanarak 
% 2x+8y+2z=14
% x+6y-z=13
% 2x-y+2z=5 doğrusal denkleminin köklerini bulunuz
%[2 8 2
% 1 6 -1
% 2 -1 2]
clear all; close all;clc
A=[1 2 1 ; 2 5 3  ; -1 -3 1];
b=[5 ; 14 ; -6];
[n, ~]= size(A);
x=zeros(n,1);
A
for i=1:n-1
    m=A(i+1:n,i)/A(i,i)
    A(i+1:n,:)=A(i+1:n,:)-m*A(i,:)
    b(i+1:n,:)=b(i+1:n,:)-m*b(i,:)
end
x(n,:)=b(n,:)/A(n,n);
for i=n-1:-1:1
    x(i,:)=(b(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
x