clc
clear all
syms x
x=linspace(0,1,100)
plot(x,x.^3,'r+',x,sin(x),'b-',x,exp(x),'g.')