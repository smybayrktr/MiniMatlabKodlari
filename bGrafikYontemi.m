%f(x)=x^3+2x+1 fonk. kökünü grafik yöntemiyle kabaca çözünüz.
clear all; close all; clc;
for t=-2:0.1:2
    ft=t^3+2*t+1;
    plot(t,ft,'b*')
    hold on;
end
grid on;
xlabel('t(sec)');
ylabel('ft');