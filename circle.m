%To plot a circle
syms r x y a b 
r=input('Enter the radius of circle')
a=input('Enter x coordinate of the circle')
b=input('Enter y coordinate of the circle')
t=0:0.01:2*pi
x=a+r*cos(t);y=b+r*sin(t)
plot(x,y)
axis equal 
xlabel('x-axis') 
ylabel('y-axis')
title('(x-a)^2+(y-b)^2=r^2')