

sym y   % Öncelikle y’yi sembolik deðiþken
        % tanýmlamalýyoruz.
		
		
y = dsolve('D2y + 2*Dy + 5*y = 0.1','y(0)=1','Dy(0)=2')
ezplot(y, [0 8])
axis([0 8 -0.5 1.5])
title('d^2+2*dy+5*y=0.1''nin grafiði');
xlabel ('x ekseni');
ylabel ('y ekseni');

