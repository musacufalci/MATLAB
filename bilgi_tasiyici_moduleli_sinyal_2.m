
% filtre
fc = 2*(Fm/Fs);
f1 = 3*fc;
f2 = 6*fc;

[N,Wn] = buttord(f1,f2,1,40);
[b,a] = butter(N,Wn);
[H,w] = freqz(b,a,ceil(length(x/2)));

F = Fs/2*(w/pi);

figure, plot(F,abs(H)), grid on, xlim([0 20*Fm]);
title('AGf nin genlik spektrumu');

y = filter(b,a,x);
figure,plot(t,y),grid on;
title('x sinyalinin filtrelenmis hali');
