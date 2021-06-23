%soru-2.1

F2=3;
A2=10;
K=50;
Fs2=K*10;
t=[-1:1/Fs:1];
x2=A2*cos(2*pi*F2*t);
X2=fft(x2);

%axis arrangement
Fd2=linspace(-Fs2/2,Fs2/2,length(x2));
DX1=fftshift(X1);
DX2=fftshift(X2);



subplot(3,1,1),plot(Fd,DX1),grid on
title('x1-in fourier donusumu')
xlabel('frekans'),ylabel('genlik')
subplot(3,1,2),plot(Fd2,DX2),grid on
title('x2-nin fourier donusumu')
xlabel('frekans'),ylabel('aci')

x3=x1+x2;
X3=fft(x3);


%axis arrangement
Fd3=linspace(-Fs2/2,Fs2/2,length(x3));
DX3=fftshift(X3);
subplot(3,1,3),plot(Fd3,DX3),grid on
title('x3-un fourier donusumu')
xlabel('frekans'),ylabel('aci')
