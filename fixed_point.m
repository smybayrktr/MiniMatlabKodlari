function fixed_point
clc; clear all; close all;
xx=linspace (0,1,100);
gx=2.^(-xx); %her iterasyonda yerine koyar. 
x0=0;
plot(x0,0,'or');
hold on;
x1=2^(-x0);
plot(x1,0,'or');
line( [x0 x0], [0, x1], [1 1], 'Marker', '*','LineStyle', '-','Color', 'm');
hold on;
it=1;
while abs(x1-x0)>eps %en küçük iki sayı arasındaki farktır.
    x0=x1;
    x1=2^(-x0);
    plot (x1,0,'or');
    line([x0 x0],[0, x1],[1 1], 'Marker','*','LineStyle','-','Color','m');
    hold on;
    it=it+1;
end
plot (xx,xx,xx,gx);
xlabel('x');
ylabel('y');
title(['g(x)=2^{-x} eğrisi ile f(x)=x doğrusunun kesim noktası' num2str(x1)])
fprintf('g(x)=2^{-x} eğrisi ile f(x)=x doğrusunun kesim noktası %6.4f dir ve iterasyon sayısı %6.4f dir',x1,it)
save('fixed_point.mat','it','x1','x0')