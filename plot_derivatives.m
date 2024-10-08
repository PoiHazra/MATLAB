% Plot the function and its derivatives
clc
clear all
syms x real
f=input('Enter the function f(x):')
fx=diff(f,x)
fxx=diff(fx,x)
D=[0, 5];
l=ezplot(f,D)
set(l,'color','b');
hold on
h=ezplot(fx,D)
set(h,'color','r')
e=ezplot(fxx,D);
set(e,'color','g');
legend('f','fx','fxx')
legend('Location','northeastoutside')