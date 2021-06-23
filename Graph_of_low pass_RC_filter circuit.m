% Graph of low pass RC filter circuit


clear
close all

t=0:0.001:5;
y=sin(2*pi*t)+sin(2*pi*50*t)
plot(t,y,'linewidth',2)
grid on








