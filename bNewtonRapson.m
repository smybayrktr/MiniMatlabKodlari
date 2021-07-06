%Newton Rapson yöntemi kullanarak f(x)=sqrt(x)+ln((x)-2*sin(x/2)
%denkleminin kökünü bulunuz.
clear all; close all; clc;
x0=1.1;
tol=1.0E-6;
for i=1:100
    fx0=sqrt(x0)+log(x0)-2*sin(x0/2);
    fdx0=1/(2*sqrt(x0))+1/x0-cos(x0/2);
    x1=x0-fx0/fdx0;
    fprintf('%4.1f %7.4f %7.4f %7.4f\n',i,x0,x1,abs(x1-x0));
    if abs(x1-x0)<tol
        break;
    end
    x0=x1;
end
disp('yaklaşık kök:')
x0