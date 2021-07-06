%f(x)=x^3-4 denk köklerini [-1,2] kapalı aralığında bisection ile çözünüz.
clear all; close all; clc
a=-1; b=2;
tol=1E-6;
for i=1:100
    fonka=a^3-4;
    fonkb=b^3-4;
    xm=0.5*(a+b);
    fonkm=xm^3-4;
    if fonka*fonkm <0
        b=xm;
    else
        a=xm;
    end
    if abs(a-b)<tol
        break
    end
end
disp('İterasyon Sayısı')
i
disp ('Denklemin kökü')
format long 
xm
disp ('Fonksiyonun Kökteki değeri')
fonkm