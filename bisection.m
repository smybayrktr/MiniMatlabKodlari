function bisection
clc; clear all;
a=0.6; b=0.8;
x=[a:0.01:b];
y=f(x);
it=1;
if f(a)*f(b)>0
    fprintf('x^3-10*x^2+5 denkleminin (%4.2f, %4.2f) aralığında kökü yoktur',a,b)
else
    m=(a+b)/2;
    while (abs (f(m))>eps) & ((b-a)/2>eps) 
        plot(a,0,'or');
        line([a,a], [0, f(a)], [1,1], 'Marker','*', 'LineStyle', '-','Color','m');
        hold on;
        plot(b,0,'or');
        line([b,b], [0, f(b)], [1,1], 'Marker','*', 'LineStyle', '-','Color','m');
        hold on;
        it=it+1;
        if f(a)*f(m)<0
            b=m;
        elseif f(m)*f(b)<0 
            a=m;
        end
        m=(a+b)/2;
    end
    end
    plot(x,y);
    xlabel('x');
    ylabel('y');
    title(['x^3-10*x^2+5=0 denkleminin kökü', num2str(m)])
    grid on
    fprintf('x^3-10*x^2+5=0 denkleminin kökü %6.4f dir ve iterasyon sayısı %6.4f dir',m,it)

function y=f(x)
y= x.^3-10*x.^2+5;