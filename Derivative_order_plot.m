%Plot a figure for first and second order derivatives of a given f(x)
syms x real
f=input('Enter the function of f(x):')
fx=diff(f,x)
fxx=diff(fx,x)
I=[0,10]
ezplot(f,I)
hold on
ezplot(fx,I)
hold on
ezplot(fxx,I)
hold on 
legend('f,f_x,f_x_x')