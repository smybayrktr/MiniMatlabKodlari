% 20x+y-2z=17
% 3x+20y-z=-18
% 2x-3y+20z=25
% (Başlangıç koşulları x1=0, x2=0, x3=0)
clear all;close all;clc; format('long','g');
i=1;
y(i)=0; z(i)=0;x(i)=0;
for k=0:1
    x(i+1)=(17-1*y(i)+2*z(i))/20;
    y(i+1)=(-18-3*x(i+1)+1*z(i))/20;
    z(i+1)=(25-2*x(i+1)+3*y(i+1))/20;
    errorx(i+1)=abs(x(i+1)-x(i))/x(i+1)*100;
    errory(i+1)=abs(y(i+1)-y(i))/y(i+1)*100;
    errorz(i+1)=abs(z(i+1)-z(i))/z(i+1)*100;
    i=i+1;
end
disp('                  x                             error(%)');
disp([x',errorx'])
disp('                  y                             error(%)');
disp([y',errory'])
disp('                  z                             error(%)');
disp([z',errorz'])