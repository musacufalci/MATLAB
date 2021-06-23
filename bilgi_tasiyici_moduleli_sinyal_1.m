
%2

close all;
clear all;

Fs = 5000;  
Fc = 50; 
Fm = 10; 
Ts = 1/Fs;  
A=1; 
ma=1; 

t = -1:Ts:1;
input = A*cos(2*pi*Fm*t);
carrier = A*cos(2*pi*Fc*t);
s_am = (1+ma*input).*carrier;

f1 = fftshift(fft(input));
f1_abs = abs(f1);


f2 = fftshift(fft(carrier));
f2_abs = abs(f2);


f3 = fftshift(fft(s_am));
f3_abs = abs(f3);

fd = linspace(-pi,pi,length(input));
figure, 
subplot(311), plot(t,input), title('bilgi sinyali'),
grid on;
xlabel('zaman[sn]'),ylabel('genlik[V]')
subplot(312), plot(t,carrier), title('tasiyici sinyal'),
grid on;
xlabel('zaman[sn]'),ylabel('genlik[V]')
subplot(313), plot(t,s_am), title('module edilmis sinyal'),
grid on;
xlabel('zaman[sn]'),ylabel('genlik[V]')

figure;
subplot(311), plot(fd,f1_abs), xlim([-3*Fc 3*Fc]), title('bilgi sinyali'),
grid on;
xlabel('zaman[sn]'),ylabel('genlik[V]')
subplot(312), plot(fd,f2_abs), xlim([-3*Fc 3*Fc]),title('tasiyici sinyal'),
grid on;
xlabel('zaman[sn]'),ylabel('genlik[V]')
subplot(313), plot(fd,f3_abs), xlim([-3*Fc 3*Fc]), title('module edilmis sinyal'),
grid on;
xlabel('zaman[sn]'),ylabel('genlik[V]')