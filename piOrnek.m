clear all;close all;clc
x=1;
toplam=0;
pi=4*atan(1);
for n=1:130
    isaret=(-1)^(n+1);
    pay=x^(2*n-1);
    payda=2*n-1;
    sontoplam=toplam+4*isaret*pay/payda;
    truehata=abs(pi-sontoplam)/abs(pi);
    yakhata=abs(sontoplam-toplam)/abs(sontoplam);
    plot(n,yakhata,'--r*',n,truehata,'--b+');
    hold on
    xlabel('n terim sayısı')
    ylabel('hata')
    toplam=sontoplam;
end
text(30,0.6,'+doğru bagıl hata');
text(30,0.5,'*yaklasık bagıl hata');

