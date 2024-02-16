L=200;
% генерация значений аргумента X
X=1:(10/L):10;
% расчет точек функции, зашумленной линейным шумом
Noise=0.5*rand(1,(L+1))*2-1.0;
Y=ln(x).*cos(3*x-15)+Noise;

hold on;
% визуализируем обучающую выборку
plot(X,Y,'LineStyle','none','Marker','.','MarkerSize',5);
% создаем ИНС
Net = feedforwardnet(10,'traingdx');
% обучаем ИНС
Net=train(Net,X,Y);
% Тестируем ИНС на интервале шире, чем обучающая выборка
X_rez=-5:0.1:10;
Y_rez = sim(Net, X_rez);
% визуализируем результаты аппроксимации
plot(X_rez,Y_rez,'LineStyle','none','Marker','.','MarkerSize',15);
hold off;

