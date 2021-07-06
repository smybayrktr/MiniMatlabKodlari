% 3x-0.1y-0.2z=7.85
% 0.1x+7y-0.3z=-19.3
% 0.3x-0.2y+10z=71.4
% denklemlerini Gauss Seidel yöntemi kullanarak kökünü bulunuz. Bitirme
% şartı x in hata oranı (errorx)<0.01 ise bitir.
clear all;close all;clc; format('long','g');
i=1;
y(i)=0; z(i)=0;x(i)=0;
errorx=9999;
while errorx(i)>=0.01
    x(i+1)=(7.85+0.1*y(i)+0.2*z(i))/3;
    y(i+1)=(-19.3-0.1*x(i+1)+0.3*z(i))/7;
    z(i+1)=(71.4-0.3*x(i+1)+0.2*y(i+1))/10;
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