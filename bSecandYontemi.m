%f(x)=x-0.17/sqrt(15/x^0.3)+2 denkleminin kökleri?(Secand Yöntemi ile)
clear all; close all; clc;
x1=1.0; 
x0=5.0;
tol=1.0E-5;
fprintf('Iter x2 abs(x2-x1) \n')
for i=1:100
    fx1=x1-0.17/sqrt(15/(x1^0.3)+2);
    fx0=x0-0.17/sqrt(15/(x0^0.3)+2);
    x2=x1-(fx1*(x1-x0))/(fx1-fx0);
    fprintf('\n %4.1f %7.4f %7.4f %7.4f \n \n',i,x2,abs(x2-x1));
    if abs(x2-x1)<tol
        break;
    end
    x0=x1;
    x1=x2;
end
disp('kök=')
x2