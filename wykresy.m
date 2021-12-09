Tp=0.1;
y = y(1:100);
u = u(1:100);
figure;
subplot(2,1,1); stairs((0:(length(y)-1))*Tp,y); % wyswietlamy y w czasie
title('Wyj≈õcie procesu')
xlabel('Czas [s]')
ylabel('y')
border = abs(max(y)-min(y))*0.1;
axis([0 inf (min(y)-border) (max(y)+border)])

subplot(2,1,2); stairs((0:(length(u)-1))*Tp,u); % wyswietlamy u w czasie
title('Sygna≥ sterujπcy')
xlabel('Czas [s]')
ylabel('u')
border = abs(max(u)-min(u))*0.1;
axis([0 inf (min(u)-border) (max(u)+border)])
%sgtitle(my_title) 
matlab2tikz(sprintf('rysunki/przekaznikowa_ostateczny.tex'));