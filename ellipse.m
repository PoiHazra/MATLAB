% To plot an ellipse
syms x y a b x1 y1
a=input('Enter length of major axis')
b=input('Enter length of minor axis')
x1=input('Enter center x coordinate')
y1=input('Enter center y coordinate') 
t=-pi:0.01:pi
x=x1+a*cos(t)
y=y1+b*sin(t)
plot(x,y)
axis equal 
xlabel('x-axis') 
ylabel('y-axis')
title('x^2/a^2+y^2/b^2=1')