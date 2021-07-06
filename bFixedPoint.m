%Fixed-point kullanarak f(x)=x-2^-2denk. kökünü bulunuz.
clear all; close all;clc;
x1=0; tol=0.1;
for x1=0:0.01:1
    y=x1;
    yy=2^(-x1);
    plot(x1,y,'r*',x1,yy,'b.');
    hold on; grid on;
    xlabel('x');
    ylabel('y');
    text(0.5,0.8,'*y=x');
    text(0.5,0.75,'+y=2^(-x)');
end
x1=0;
fprintf('Iter x1  x2  Ea ear  \n')
for i=1:50
    x2=2^(-x1);
    Ea=abs(x2-x1);
    ear=Ea/abs(x2);
    fprintf('%4.1f %7.4f %7.4f %7.4f %7.4f \n',i,x1,x2,Ea,ear);
    if abs(x2-x1)<tol
        break;
    else
        x1=x2;
    end
end
disp('Denklemin Kökü');
disp([x2]);