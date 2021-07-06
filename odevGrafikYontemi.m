% f(x)=e^(-x)-x 
% Denkleminin köklerini hem grafik yöntemi ile çözen programı yazınız.
clear all; close all; clc;
for t=-2:0.1:2
    ft=exp(1)^(-t)-t;
    plot(t,ft,'b*')
    hold on;
end
grid on;
xlabel('t(sec)');
ylabel('ft');