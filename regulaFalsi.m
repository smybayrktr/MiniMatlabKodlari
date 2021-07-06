function regula_falsi
clear all ;clc
a=1.6; b=3; %aralığımız
x=[a:0.01:b]; % a dan baişa 0.01 arttırarak b ye kadar gel
y=f(x); %x in fteki karşılığı
it=1; %iterasyonumuz 1den başlayacak
if f(a)*f(b)>0 %f (a)* f(b) >0 sa kökümüz yoktur
    fprintf('(tan(\pi-x)-x=0 denkleminin (%4.2f, %4.2f) aralığında kökü yoktur',a,b)
else
    m=(a*f(b)-b*f(a))/(f(b)-f(a)); %c noktamızı bulduk
    while abs (f(m))>0.0001 %tolerans değerimizi kontrol ettik.
        line([a,b], [f(a) f(b)], [1,1], 'Marker','*', 'LineStyle', '-','Color','m'); %f(a) f(b) çizdirdik.
        hold on; %ifadeleri tuttuk
        it=it+1; %iterasyonu 1 arttırdık.
        if f(a)*f(m)<0  
            b=m;
        elseif f(m)*f(b)<0 
            a=m;
        end
        m=(a*f(b)-b*f(a))/(f(b)-f(a));
    end
    plot(x,y);
    xlabel('x');
    ylabel('y');
    title(['(tan(\pi-x)-x=0 denkleminin kökü yoktur', num2str(m)])
    grid on
    fprintf('tan(pi-x)-x=0 denkleminin kökü %6.4f dir ve iterasyon sayısı %6.4f dir',m,it)
end
function y=f(x) %fonksiyonumuz
y= tan (pi-x)-x; %Soruda verilen formül